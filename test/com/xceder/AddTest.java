package com.xceder;

import com.xceder.Add;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.util.Arrays;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author: xiaopan
 * Date: 2018-03-26
 * Time: 上午10:51
 */
@RunWith(value = Parameterized.class)
public class AddTest {
    private int numberA;
    private int numberB;
    private int numberC;

    public AddTest(int numberA, int numberB, int numberC) {
        this.numberA = numberA;
        this.numberB = numberB;
        this.numberC = numberC;
    }

    @Parameterized.Parameters(name = "{index}:add({0}+{1})={2}")
    public static Iterable<Object[]> data(){
        return Arrays.asList(new Object[][]{
                {1,1,3},
                {2,3,5},
                {2,6,8},
                {2,6,8}
        });
    }

    @Test
    public void add() {
        Add test =new Add();
        assertEquals(numberC,test.add(numberA,numberB));
        System.out.println("hello");
    }
}