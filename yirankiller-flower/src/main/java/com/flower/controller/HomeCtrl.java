package com.flower.controller;

import com.flower.dao.UserDao;
import com.flower.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by eason on 14-10-31.
 */
@Controller
public class HomeCtrl {

    @Autowired
    private UserDao userDao;

    @RequestMapping("/loginSuccess")
    public String loginSuccessHandler(Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        User user = userDao.findByUsername(username);
        model.addAttribute(user);
        return "homeOrder";
    }

}
