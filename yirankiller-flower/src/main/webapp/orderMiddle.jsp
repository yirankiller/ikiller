<%--
  Created by IntelliJ IDEA.
  User: yiran
  Date: 2014-07-08
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="order-middle">
  <div class="container">
    <div  class="panel panel-default-theme">
      <!-- Default panel contents -->
      <div class="panel-heading">
        <h2 class="panel-title"><strong>填写并核对订单信息</strong></h2>
      </div>
      <div class="panel-body">
        <div  class="panel panel-default ">
          <!-- Default panel contents -->
          <div class="panel-heading">
            <h2 class="panel-title"><strong>确认收货地址</strong></h2>
          </div>
          <div class="panel-body">
            <div class="show-address">
            刘启明   18510169366   yirankiller@gmail.com
            河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明
            </div>
          </div>
          <ul class="list-group">
            <li class="list-group-item">
              <div>
              <label>
                <input type="radio" name="receiveAddress"/>
              </label>
              <span>河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明</span>
              </div>
            </li>
            <li class="list-group-item">
              <label>
                <input type="radio" name="receiveAddress"/>
              </label>
              <span>河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
