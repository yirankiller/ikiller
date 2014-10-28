package com.flower.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by eason on 14-10-27.
 */
@Entity
public class Authorities {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;
    private int userShadowId;
    @Column(nullable = false)
    private String authority;



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

    public int getUserShadowId() {
        return userShadowId;
    }

    public void setUserShadowId(int userShadowId) {
        this.userShadowId = userShadowId;
    }
}
