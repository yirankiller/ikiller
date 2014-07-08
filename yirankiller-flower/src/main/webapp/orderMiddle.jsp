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
  <div class="container ">
    <div class="panel panel-default-theme">
      <!-- Default panel contents -->
      <div class="panel-heading">
        <h2 class="panel-title"><strong>我的购物车</strong></h2>
      </div>
      <div class="panel-body shopping-cart">
        <ul class="list-inline cart-title">
          <li class="cart-title-checkbox">
            <label class="checkbox-inline">
              <input type="checkbox" id="selectAllItem">全选
            </label>
          </li>
          <li class="cart-title-info">商品信息</li>
          <li class="cart-title-unit">单价（元）</li>
          <li class="cart-title-num">数量</li>
          <li class="cart-title-price">金额（元）</li>
          <li class="cart-title-option">操作</li>
        </ul>
      </div>

    </div>

  </div>
</div>
