package com.ikiller.yirankiller.util.enumeration.jndibinding;

/**
 * User: easliu
 * Date: 7/23/12
 * Version: 1.0
 */
public enum JndiBindingEnum {
    FORMATUTILBEAN_REMOTE("FormatUtilBean/Remote");



    private String jndiBindingName;
    private JndiBindingEnum(String ajndiBindingName){
        this.jndiBindingName = ajndiBindingName;
    }

    public String toJndiBindingName(){
        return this.jndiBindingName;
    }
}
