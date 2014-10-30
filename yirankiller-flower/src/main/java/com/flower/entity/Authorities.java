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
    @ManyToOne(cascade = {CascadeType.REFRESH})
    @JoinColumns({@JoinColumn(name = "user_shadow_id")})
    private UserShadow userShadow;
    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private AuthoritiesEnum authority;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public AuthoritiesEnum getAuthority() {
        return authority;
    }

    public void setAuthority(AuthoritiesEnum authority) {
        this.authority = authority;
    }

    public UserShadow getUserShadow() {
        return userShadow;
    }

    public void setUserShadow(UserShadow userShadow) {
        this.userShadow = userShadow;
    }
}
