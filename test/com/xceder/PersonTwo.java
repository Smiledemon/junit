package com.xceder;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author: xiaopan
 * Date: 2018-03-27
 * Time: 上午9:35
 */
public class PersonTwo {
    Person person = new Person("Tom","xce",24);
    @Test
    public void getAge() {
        assertEquals(24,person.getAge());
    }
}