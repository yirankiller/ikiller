package com.flower.controller;

import com.flower.entity.User;
import com.flower.entity.UserShadow;
import com.flower.service.UserService;
import com.flower.vo.BVValidation;
import com.flower.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by eason on 14-10-23.
 */
@Controller
public class LoginCtrl {
    Logger logger = LoggerFactory.getLogger(LoginCtrl.class);
    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public String register(UserVO userVO,Model model){
        logger.debug(userVO.getUsername() +"-------------------------");
        logger.debug(userVO.getPassword() +"-------------------------");
        User user = new User();
        user.setUsername(userVO.getUsername());
        UserShadow userShadow = new UserShadow();
        userShadow.setPassword(userVO.getPassword());
        userShadow.setUser(user);
        user = userService.register(userShadow);
        model.addAttribute("user",user);
        return "index";
    }

    @RequestMapping("/userCheck")
    public @ResponseBody BVValidation userRegisterCheck(UserVO userVO,Model model){
        logger.debug(userVO.getUsername() +"-------------------------");
        logger.debug(userVO.getPassword() +"-------------------------");
        String username = userVO.getUsername();
        boolean isExist = true;
        if(!StringUtils.isEmpty(username)){
            isExist = userService.existUser(username);
        }
        BVValidation bvValidation = new BVValidation(!isExist);
        return bvValidation;
    }
}
