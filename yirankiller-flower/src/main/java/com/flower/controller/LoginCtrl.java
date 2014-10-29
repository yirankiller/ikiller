package com.flower.controller;

import com.flower.entity.UserShadow;
import com.flower.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by eason on 14-10-23.
 */
@Controller
public class LoginCtrl {
    Logger logger = LoggerFactory.getLogger(LoginCtrl.class);

    @RequestMapping("/register")
    public String register(UserVO userVO,Model model){
        logger.debug(userVO.getUsername() +"-------------------------");
        logger.debug(userVO.getPassword() +"-------------------------");
        return "index";
    }
}
