<%--
  User: easliu
  Date: 5/19/14
  Time: 5:21 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <!-- customize top nav bar -->
  <div class="topnavbar">
    <div class="container">
      <div class="welcomeback pull-left">
        Hi <c:if test="${user.nickName != null}"> ${user.nickName}</c:if><c:if test="${user.nickName == null}"> ${user.username}</c:if>,欢迎回来
      </div>
      <div class="topinfor pull-right">
        <ul class="list-inline">
          <c:if test="${user == null}">
            <li><a href="/login">登陆</a></li>
            <li><a href="/signup">注册</a></li>
          </c:if>
          <c:if test="${user != null}">
            <li>
              <form:form action="/logout"
                    method="post">
                <input type="submit" class="btn btn-xs btn-danger" value="安全退出" />
              </form:form>
            </li>
          </c:if>
          <li><a href="#">我的订单</a></li>
          <li><a href="#">个人中心</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">网站导航 <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">首页</a></li>
              <li><a href="#">分类</a></li>
              <li class="divider"></li>
              <li><a href="#">I like</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>


