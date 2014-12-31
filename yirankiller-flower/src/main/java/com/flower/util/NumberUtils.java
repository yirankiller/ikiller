package com.flower.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by eason on 14-12-31.
 */
public class NumberUtils {
    Logger logger = LoggerFactory.getLogger(NumberUtils.class);

    public boolean isNumber(String number){
        boolean isNumber = false;
        try{
            Integer.parseInt(number);
            isNumber = true;
        }catch (NumberFormatException e){
            logger.error("Not a number"+number,e);
        }
        return isNumber;
    }

    public boolean isNaN(String number){
        return !isNumber(number);
    }
}
