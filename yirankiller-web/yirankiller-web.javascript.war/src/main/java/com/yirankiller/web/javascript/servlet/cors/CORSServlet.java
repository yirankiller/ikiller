package com.yirankiller.web.javascript.servlet.cors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * User: easliu
 * Date: 1/15/13
 * Version: 1.0
 */
public class CORSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        response.setHeader("Access-Control-Allow-Origin","http://localhost:7070"); //设置允许跨域的地址

        response.setHeader("Access-Control-Allow-Credentials","true"); //设置允许跨域的地址
        response.setHeader("Access-Control-Allow-Methods","http://localhost:7070"); //设置跨域允许的方法
        response.setHeader("Access-Control-Allow-Headers","http://localhost:7070");//设置跨域允许的头部信息
        response.setHeader("Access-Control-Max-Age","http://localhost:7070");//设置跨域允许的最大时间  .

        response.setContentType("text/plain;charset=UTF-8");
        response.setContentLength(2000);

        response.setDateHeader("Last-Modified", Calendar.getInstance().getTimeInMillis());
        */
        System.out.println("Get a request");

    }
}
