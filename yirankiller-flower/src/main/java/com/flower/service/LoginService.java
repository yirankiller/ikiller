package com.flower.service;

import com.flower.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by eason on 14-10-23.
 */
@Service
@Transactional
public class LoginService {
    @Autowired
    private UserDao userDao;

    public User
}
