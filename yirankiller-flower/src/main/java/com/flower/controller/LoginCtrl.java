package com.flower.controller;

import com.flower.entity.User;
import com.flower.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by eason on 14-10-23.
 */
public class LoginCtrl {
    Logger logger = LoggerFactory.getLogger(LoginCtrl.class);


    public String add(User user,Model model){

        return "index";
    }
}
