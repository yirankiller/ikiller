<%--
  Created by IntelliJ IDEA.
  User: yiran
  Date: 5/24/2014
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
  <div class="container">
    <div class="row">
      <div class="col-xs-3">
        <img src="/images/logo.png" alt="" class="logo-default">
      </div>
      <div class="col-lg-5 col-lg-offset-1">
        <form role="search" action="/book.do">
          <div class="input-group">
            <input type="text" class="form-control input-lg" placeholder="绿萝,发财树">
            <div class="input-group-btn">
              <button type="subimit" class="btn btn-search-default btn-lg">&nbsp;&nbsp;搜索&nbsp;&nbsp;</button>
              <!--
              <ul class="dropdown-menu pull-right">
                <li><a href="www.baidu.com">Action</a></li>
                <li><a href="www.sohu.com">Anothe</a></li>
                <li><a href="www.weibo.com">Someth</a></li>
                <li class="divider"></li>
                <li><a href="#">Separa</a></li>
              </ul>
              -->
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </form>
        <div class="header-hot">
          <span>热门搜索:</span>
          <ul class="list-inline in-line">
            <li>绿萝</li>
            <li>发财树</li>
          </ul>
        </div>
      </div><!-- /.col-lg-5 -->
    </div><!-- /.row -->
  </div>
</div>