package com.flower.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by eason on 14-10-27.
 */
@Entity
public class UserShadow {
    private int id;
    private String password;
    private boolean enable;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "userid")})
    public User user;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "id")})
    private List<UserShadow> userShadowList;
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
