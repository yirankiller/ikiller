package com.flower.service.impl;

import com.flower.dao.UserDao;
import com.flower.dao.UserShadowDao;
import com.flower.entity.Authorities;
import com.flower.entity.AuthoritiesEnum;
import com.flower.entity.User;
import com.flower.entity.UserShadow;
import com.flower.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by eason on 14-10-30.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserShadowDao userShadowDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private PasswordEncoder passwordEncoder;

    public User register(UserShadow userShadow){
        User user = null;
        boolean isExistUser = existUser(userShadow.getUser().getUsername());
        if(!isExistUser){
            userShadow.setEnable(true);
            //encode password
            String encodedPassword = passwordEncoder.encode(userShadow.getPassword());
            userShadow.setPassword(encodedPassword);
            //set default authority.
            Authorities authorities = new Authorities();
            authorities.setAuthority(AuthoritiesEnum.USER);
            List<Authorities> authoritiesList = new ArrayList<Authorities>();
            authoritiesList.add(authorities);
            userShadow.setAuthoritiesList(authoritiesList);
            userShadow = userShadowDao.save(userShadow);
            if(userShadow != null){
                user = userShadow.getUser();
            }
        }
        return user;

    }

    @Override
    public boolean existUser(String username) {
        User existUser = userDao.findByUsername(username);
        return existUser != null;
    }
}
