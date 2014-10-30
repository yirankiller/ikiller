package com.flower.dao;

import com.flower.entity.UserShadow;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by eason on 14-10-23.
 */
public interface UserShadowDao extends JpaRepository<UserShadow,Integer> {
    public UserShadow save(UserShadow userShadow);
}
