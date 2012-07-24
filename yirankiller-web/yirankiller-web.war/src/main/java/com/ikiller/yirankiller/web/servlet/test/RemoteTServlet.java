package com.ikiller.yirankiller.web.servlet.test;

import com.ikiller.yirankiller.util.jndibinding.JndiBindingRemote;
import com.ikiller.yirankiller.util.remote.string.format.FormatUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

/**
 * User: easliu
 * Date: 7/24/12
 * Version: 1.0
 */
public class RemoteTServlet extends HttpServlet {
    //private Logger logger = Logger.getLogger(RemoteTServlet.class);
    private static final Logger logger = LoggerFactory.getLogger(RemoteTServlet.class);
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String providerUrl = request.getParameter("url");
        Properties props = new Properties();
        logger.info(providerUrl);
        logger.error("error msg");
        props.setProperty("java.naming.factory.initial","org.jnp.interfaces.NamingContextFactory");
        props.setProperty("java.naming.provider.url", providerUrl == null ? "10.10.99.9:1099" : providerUrl);
        props.setProperty("java.naming.factory.url.pkgs", "org.jboss.naming");
        InitialContext ctx;
        try {
            ctx = new InitialContext(props);
            logger.info("ctx obj");
            FormatUtil formatUtil = (FormatUtil) ctx.lookup(JndiBindingRemote.IKILLER_FORMATUTILBEAN_REMOTE);
            logger.info(formatUtil.formatDate(""));
            System.out.println(formatUtil.formatDate(""));
        }catch(NamingException e) {
            e.printStackTrace();
        }
    }
}
