package com.flower.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by eason on 14-10-27.
 */
@Entity
public class Authorities {

    private int id;

    private String authority;


    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

}
