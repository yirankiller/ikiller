<%--
  User: yiran
  Date: 2014-07-15
  Time: 11:22 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="home-order home-middle-item">
  <div class="inav-tabs">
    <div class="nav-label">
    </div>
    <!-- Nav tabs -->
    <ul class="nav-new-tabs" >
      <li class="active">
        <a href="#allOrder" >所有订单</a>
      </li>
      <li>
        <a href="#notSend" >待发货</a>
      </li>
    </ul>
  </div>
  <!-- Tab panes -->
  <div class="tab-content">
    <div class="tab-pane active" id="allOrder">
      <div class="order-middle">
        <ul class="list-inline order-title">
          <li class="order-checkbox">
            <label class="checkbox-inline">
              <input type="checkbox" id="selectAllItem"/>全选
            </label>
          </li>
          <li class="order-info">商品信息</li>
          <li class="order-unit">单价(元)</li>
          <li class="order-num">数量</li>
          <li class="order-price">金额(元)</li>
          <li class="order-option">交易状态</li>
        </ul>
        <div class="order-list">
          <ul class="list-inline order-body">
            <li class="order-checkbox">
              <div class="">
                <label class="checkbox-inline">
                  <input type="checkbox" />
                </label>
              </div>
            </li>
            <li class="order-info">
              <div class="order-item-detail">
                <div class="item-img pull-left">
                  <a href="#">
                    <img src="/images/resources/lvluo.jpg" class="order-item-img"/>
                  </a>
                </div>
                <div class="item-title pull-left">
                  <a href="#">绿萝盆栽花卉绿植绿萝盆栽花卉绿植绿萝</a>
                </div>
              </div>
            </li>
            <li class="order-unit">
              <div class="">
                <div class="old-price"><del>56.00</del></div>
                <div class="sale-price"><strong>28.00</strong></div>
              </div>
            </li>
            <li class="order-num">
              <div class="item-num">
                <div class=""><strong>2</strong></div>
              </div>
            </li>
            <li class="order-price default-price">
              <div class=""><strong>56.00</strong>
              </div>
            </li>
            <li class="order-option">
              <a href="#" >交易关闭</a>
              <a href="#" >订单详情</a>
            </li>
          </ul>
        </div>
        <div class="order-list">
          <ul class="list-inline order-body">
            <li class="order-checkbox">
              <div class="">
                <label class="checkbox-inline">
                  <input type="checkbox" />
                </label>
              </div>
            </li>
            <li class="order-info">
              <div class="order-item-detail">
                <div class="item-img pull-left">
                  <a href="#">
                    <img src="/images/resources/lvluo.jpg" class="order-item-img"/>
                  </a>
                </div>
                <div class="item-title pull-left">
                  <a href="#">绿萝盆栽花卉绿植绿萝盆栽花卉绿植绿萝</a>
                </div>
              </div>
            </li>
            <li class="order-unit">
              <div class="">
                <div class="old-price"><del>56.00</del></div>
                <div class="sale-price"><strong>28.00</strong></div>
              </div>
            </li>
            <li class="order-num">
              <div class="item-num">
                <div class=""><strong>2</strong></div>
              </div>
            </li>
            <li class="order-price default-price">
              <div class=""><strong>56.00</strong>
              </div>
            </li>
            <li class="order-option">
              <a href="#" >交易关闭</a>
              <a href="#" >订单详情</a>
            </li>
          </ul>
        </div>

      </div>
    </div>
    <div class="tab-pane" id="notSend">
      <div class="order-middle">
        <ul class="list-inline order-title">
          <li class="order-checkbox">
            <label class="checkbox-inline">
              <input type="checkbox" id="selectAllItem"/>全选
            </label>
          </li>
          <li class="order-info">商品信息</li>
          <li class="order-unit">单价(元)</li>
          <li class="order-num">数量</li>
          <li class="order-price">金额(元)</li>
          <li class="order-option">交易状态</li>
        </ul>
        <div class="order-list">
          <ul class="list-inline order-body">
            <li class="order-checkbox">
              <div class="">
                <label class="checkbox-inline">
                  <input type="checkbox" />
                </label>
              </div>
            </li>
            <li class="order-info">
              <div class="order-item-detail">
                <div class="item-img pull-left">
                  <a href="#">
                    <img src="/images/resources/lvluo.jpg" class="order-item-img"/>
                  </a>
                </div>
                <div class="item-title pull-left">
                  <a href="#">绿萝盆栽花卉绿植绿萝盆栽花卉绿植绿萝</a>
                </div>
              </div>
            </li>
            <li class="order-unit">
              <div class="">
                <div class="old-price"><del>56.00</del></div>
                <div class="sale-price"><strong>28.00</strong></div>
              </div>
            </li>
            <li class="order-num">
              <div class="item-num">
                <div class=""><strong>2</strong></div>
              </div>
            </li>
            <li class="order-price default-price">
              <div class=""><strong>56.00</strong>
              </div>
            </li>
            <li class="order-option">
              <a href="#" >待发货</a>
              <a href="#" >订单详情</a>
            </li>
          </ul>
        </div>

      </div>
    </div>
  </div>

</div>