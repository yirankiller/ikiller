package com.flower.service;

import com.flower.entity.User;
import com.flower.entity.UserShadow;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by eason on 14-10-23.
 */
@Transactional
public interface LoginService {

    public User register(UserShadow userShadow);
}
