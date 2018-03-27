package com.xceder;

import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.Test;

public class JUnitHelloWorld {
    protected String s;
    protected int result;
    protected static int res;

    public static int Sum(int a, int b) {
        res = a + b;
        return res;
    }

    @Before
    public void setup() {
        result = Sum(270,30);
    }

    @Test
    public void testHelloWorldSuccess() {
        assertEquals(300, result);
    }
}