package com.flower.entity;

import javax.persistence.Entity;

/**
 * Created by eason on 14-11-4.
 */
@Entity
public class Floor extends BaseEntity{
    private String name;
    private int floor;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
