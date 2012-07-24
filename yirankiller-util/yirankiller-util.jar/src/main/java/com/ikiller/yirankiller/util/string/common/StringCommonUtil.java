package com.ikiller.yirankiller.util.string.common;

/**
 * User: easliu
 * Date: 7/23/12
 * Version: 1.0
 */
public class StringCommonUtil {
    public static boolean isEmpty(final String str){
        return ((str == null) || str.trim().length() == 0);
    }
}
