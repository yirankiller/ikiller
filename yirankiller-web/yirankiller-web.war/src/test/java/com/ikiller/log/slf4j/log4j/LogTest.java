package com.ikiller.log.slf4j.log4j;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * User: easliu
 * Date: 7/24/12
 * Version: 1.0
 */
public class LogTest {
    private static final Logger logger = LoggerFactory.getLogger(LogTest.class);

    @Test
    public void testLog(){
        System.out.println("ss");
    }
}
