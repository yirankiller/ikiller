package com.flower.entity;

import javax.persistence.*;

/**
 * Created by eason on 14-10-23.
 */
@Entity
public class User extends BaseEntity{
    @Column(nullable = false, unique = true)
    private String username;
    private String nickName;
    private String email;
    private String postcode;
    private String mobilePhone;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

}
