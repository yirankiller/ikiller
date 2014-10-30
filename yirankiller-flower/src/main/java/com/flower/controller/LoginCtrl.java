package com.flower.controller;

import com.flower.entity.User;
import com.flower.entity.UserShadow;
import com.flower.service.LoginService;
import com.flower.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by eason on 14-10-23.
 */
@Controller
public class LoginCtrl {
    Logger logger = LoggerFactory.getLogger(LoginCtrl.class);
    @Autowired
    private LoginService loginService;

    @RequestMapping("/register")
    public String register(UserVO userVO,Model model){
        logger.debug(userVO.getUsername() +"-------------------------");
        logger.debug(userVO.getPassword() +"-------------------------");
        User user = new User();
        user.setUsername(userVO.getUsername());
        UserShadow userShadow = new UserShadow();
        userShadow.setPassword(userVO.getPassword());
        userShadow.setUser(user);
        user = loginService.register(userShadow);
        model.addAttribute("user",user);
        return "index";
    }
}
