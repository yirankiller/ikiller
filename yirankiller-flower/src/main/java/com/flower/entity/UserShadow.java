package com.flower.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by eason on 14-10-27.
 */
@Entity
public class UserShadow {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false,columnDefinition = JPAConfig.BOOLEAN_DEFAULT_FALSE)
    private boolean enable;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "user_id")})
    public User user;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "user_shadow_id")})
    private List<Authorities> authoritiesList;

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

    public List<Authorities> getAuthoritiesList() {
        return authoritiesList;
    }

    public void setAuthoritiesList(List<Authorities> authoritiesList) {
        this.authoritiesList = authoritiesList;
    }
}
