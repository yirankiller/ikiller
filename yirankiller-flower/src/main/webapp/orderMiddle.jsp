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
    <div class="panel panel-default-theme shopping-cart">
      <!-- Default panel contents -->
      <div class="panel-heading">
        <h2 class="panel-title"><strong>我的购物车</strong></h2>
      </div>
      <div class="panel-body">
        <ul class="list-inline cart-title">
          <li class="cart-checkbox">
            <label class="checkbox-inline">
              <input type="checkbox" id="selectAllItem"/>全选
            </label>
          </li>
          <li class="cart-info">商品信息</li>
          <li class="cart-unit">单价（元）</li>
          <li class="cart-num">数量</li>
          <li class="cart-price">金额（元）</li>
          <li class="cart-option">操作</li>
        </ul>
        <div class="cart-list">
            <ul class="list-inline cart-body">
              <li class="cart-checkbox">
                <div class="">
                  <label class="checkbox-inline">
                    <input type="checkbox" />
                  </label>
                </div>
              </li>
              <li class="cart-info">
                <div class="cart-item-detail">
                  <div class="item-img pull-left">
                    <a href="#">
                      <img src="/images/resources/lvluo.jpg" class="cart-item-img"/>
                    </a>
                  </div>
                  <div class="item-title pull-left">
                      <a href="#">绿萝盆栽花卉绿植绿萝盆栽花卉绿植绿萝</a>
                  </div>
                </div>
              </li>
              <li class="cart-unit">
                <div class="">
                  <div class="old-price"><del>56.00</del></div>
                  <div class="sale-price"><strong>28.00</strong></div>
                </div>
              </li>
              <li class="cart-num">
                <div class="item-num">
                  <a href="javascript:void(0);" class="btn-minux-num"><span class="glyphicon glyphicon-minus minux-num"></span></a>
                  <input type="text" class="form-control input-item-num" value="1"/>
                  <a href="javascript:void(0);" class="btn-plus-num"><span class="glyphicon glyphicon-plus plus-num"></span></a>
                </div>
              </li>
              <li class="cart-price">
                <div class=""><strong>28.00</strong>
                </div>
              </li>
              <li class="cart-option">
                <a href="#" >删除</a>
              </li>
            </ul>
        </div>
        <div class="cart-list">
          <ul class="list-inline cart-body">
            <li class="cart-checkbox">
              <div class="">
                <label class="checkbox-inline">
                  <input type="checkbox" />
                </label>
              </div>
            </li>
            <li class="cart-info">
              <div class="cart-item-detail">
                <div class="item-img pull-left">
                  <a href="#">
                    <img src="/images/resources/lvluo.jpg" class="cart-item-img"/>
                  </a>
                </div>
                <div class="item-title pull-left">
                  <a href="#">绿萝盆栽花卉绿植绿萝盆栽花卉绿植绿萝</a>
                </div>
              </div>
            </li>
            <li class="cart-unit">
              <div class="">
                <div class="old-price"><del>56.00</del></div>
                <div class="sale-price"><strong>28.00</strong></div>
              </div>
            </li>
            <li class="cart-num">
              <div class="item-num">
                <a href="javascript:void(0);" class="btn-minux-num"><span class="glyphicon glyphicon-minus minux-num"></span></a>
                <input type="text" class="form-control input-item-num" value="1"/>
                <a href="javascript:void(0);" class="btn-plus-num"><span class="glyphicon glyphicon-plus plus-num"></span></a>
              </div>
            </li>
            <li class="cart-price">
              <div class=""><strong>28.00</strong>
              </div>
            </li>
            <li class="cart-option">
              <a href="#" >删除</a>
            </li>
          </ul>
        </div>

      </div>
      <div class="cart-footer">
        <div class="pull-left">
          <label class="checkbox-select-all">
            <input type="checkbox" />全选
          </label>
        </div>
        <div class="pull-left footer-middle">
            <a href="#" class="option">删除</a>
            <a href="#" class="option">清空购物车</a>
        </div>
        <div class="pull-right footer-right">
          <span class="item">已选<span class="selecte-num">0</span>件商品</span>
          <span class="item">合计:<span class="total-price">120.00</span></span>
          <span class="item">
            <button type="button" class="btn btn-search-default btn-lg">结算</button>
          </span>
        </div>
      </div>
    </div>

  </div>
</div>
