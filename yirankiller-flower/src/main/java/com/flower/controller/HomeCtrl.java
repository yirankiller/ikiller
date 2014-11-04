package com.flower.controller;

import com.flower.dao.UserDao;
import com.flower.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Created by eason on 14-10-31.
 */
@Controller
@SessionAttributes(ControllerConstantsConfig.USER_SESSION_FLAG)
public class HomeCtrl {
    Logger logger = LoggerFactory.getLogger(HomeCtrl.class);
    @Autowired
    private UserDao userDao;

    @RequestMapping("/loginSuccess")
    public String loginSuccessHandler(Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        logger.debug("login : "+ username);
        User user = userDao.findByUsername(username);
        model.addAttribute(ControllerConstantsConfig.USER_SESSION_FLAG,user);
        return "homeOrder";
    }

}
