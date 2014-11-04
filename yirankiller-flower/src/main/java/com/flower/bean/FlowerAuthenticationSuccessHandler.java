package com.flower.bean;

import com.flower.controller.ControllerConstantsConfig;
import com.flower.dao.UserDao;
import com.flower.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by eason on 14-11-4.
 */
public class FlowerAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
    Logger logger = LoggerFactory.getLogger(FlowerAuthenticationSuccessHandler.class);
    @Autowired
    private UserDao userDao;
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        String username = authentication.getName();
        logger.debug("login: "+ username + "default url: "+ super.getDefaultTargetUrl());
        User user = userDao.findByUsername(username);
        httpServletRequest.getSession().setAttribute(ControllerConstantsConfig.USER_SESSION_FLAG,user);
        super.onAuthenticationSuccess(httpServletRequest,httpServletResponse,authentication);
    }
}
