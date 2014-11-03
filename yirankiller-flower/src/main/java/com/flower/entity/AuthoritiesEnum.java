package com.flower.entity;

/**
 * Created by eason on 14-10-30.
 */
public enum AuthoritiesEnum {
    ROLE_USER,
    ROLE_ADMIN;

    public String getRole(){
        return super.toString();
    }

    @Override
    public String toString() {
        return "ROLE_" + this.name();
    }
}
