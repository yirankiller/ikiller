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
<!-- Modal -->
<div class="modal fade" id="orderAddressModel" tabindex="-1" role="dialog" aria-labelledby="order Address" aria-hidden="true" data-backdrop="false" data-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">新增收货地址</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label for="receiverName" class="col-sm-2 control-label"><span class="asterisk-require">*</span>收货人</label>
            <div class="col-sm-3">
              <input type="text" class="form-control" id="receiverName" maxlength="12">
            </div>
          </div>
          <div class="form-group">
            <label for="district" class="col-sm-2 control-label"><span class="asterisk-require">*</span>所在地区</label>
            <div class="col-sm-3">
              <select class="form-control" id="district">
                <option>二七区</option>
                <option>金水区</option>
                <option>中原区</option>
                <option>管城区</option>
                <option>郑东新区</option>
                <option>惠济区</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label for="detailAddress" class="col-sm-2 control-label"><span class="asterisk-require">*</span>详细地址</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="detailAddress">
            </div>
          </div>
          <div class="form-group">
            <label for="mobilePhone" class="col-sm-2 control-label"><span class="asterisk-require">*</span>手机号码</label>
            <div class="col-sm-3">
              <input type="text" class="form-control" id="mobilePhone" maxlength="11">
            </div>
            <div class="clear-padding col-xs-1 ">
              <p class="form-control-static ">或</p>
            </div>
            <label for="homePhone" class="col-sm-2 control-label">固定电话</label>
            <div class="col-sm-3">
              <input type="text" class="form-control" id="homePhone" maxlength="13">
            </div>
          </div>
          <div class="form-group">
            <label for="email" class="col-sm-2 control-label">邮箱</label>
            <div class="col-sm-5">
              <input type="email" class="form-control" id="email" maxlength="25">
            </div>
            <div class="col-sm-4">
              <p class="form-control-static">便于您及时了解订单状态</p>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                <label class=""  title="设置后系统将在购买时自动选中该收货地址">
                  <input type="checkbox"> 设置为默认地址
                </label>
                <small></small>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-search-default" data-dismiss="modal">保存并返回</button>
        <button type="button" class="btn btn-search-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>

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
          <div class="panel-heading address-title">
            <div class="pull-left left-title">
              <h2 class="panel-title"><strong>确认收货地址</strong></h2>
            </div>
            <div class="pull-right add-new-address">
              <button type="button" class="btn btn-search-default btn-lg" data-target="#orderAddressModel" data-toggle="modal">
                <span class="glyphicon glyphicon-plus"></span>
                新增收货地址
              </button>
            </div>
          </div>
          <div class="panel-body">
            <div class="show-address">
            刘启明   18510169366   yirankiller@gmail.com
            河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明
            </div>
          </div>
          <ul class="list-group list-group-hover">
            <li class="list-group-item list-address-item">
              <ul class="list-inline">
                <li class="address">
                  <label class="checkbox-radio-label">
                    <input type="radio" name="receiveAddress"/>
                    <span>河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明</span>
                  </label>
                </li>
                <li class="set2-default"><a href="#">设为默认</a></li>
                <li class="edit-address"><a href="#" data-target="#orderAddressModel" data-toggle="modal"><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</a></li>
              </ul>
            </li>
            <li class="list-group-item list-address-item">
              <ul class="list-inline ">
                <li class="address">
                  <label class="checkbox-radio-label">
                    <input type="radio" name="receiveAddress"/>
                    <span>河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明</span>
                  </label>
                </li>
                <li class="set2-default"><a href="#">设为默认</a></li>
                <li class="edit-address"><a href="#" data-target="#orderAddressModel" data-toggle="modal"><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</a></li>
              </ul>
            </li>
            <li class="list-group-item list-address-item">
              <ul class="list-inline ">
                <li class="address">
                  <label class="checkbox-radio-label">
                    <input type="radio" name="receiveAddress"/>
                    <span>河南 郑州市 管城区 十八里河镇   管城回族区十八里河镇刘湾村72号刘启明</span>
                  </label>
                </li>
                <li class="set2-default"><a href="#">设为默认</a></li>
                <li class="edit-address"><a href="#" data-target="#orderAddressModel" data-toggle="modal"><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <div  class="panel panel-default ">
          <!-- Default panel contents -->
          <div class="panel-heading">
            <h2 class="panel-title"><strong>支付及配送方式</strong></h2>
          </div>
          <div class="panel-body">
            <div>货到付款.</div>
            <div style="margin-top: 5px;">由于市内距离远近不一,下单后会有工作人员与您联系,确认送货时间.</div>
          </div>
        </div>
        <div class="panel panel-default ">
          <!-- Default panel contents -->
          <div class="panel-heading order-item-header">
            <h2 class="panel-title pull-left"><strong>确认订单信息</strong></h2>
            <h2 class="panel-title pull-right"><a href="#">返回购物车</a></h2>
          </div>
          <div class="panel-body">
            <div class="order-item-list">
              <ul class="list-inline-item">
                <li class="order-item-list-title">
                  <ul class="list-inline">
                    <li class="order-item-name">商品</li>
                    <li class="order-item-unitprice">单价(元)</li>
                    <li class="order-item-num">数量</li>
                    <li class="order-item-totalprice">小计(元)</li>
                  </ul>
                </li>
                <li class="order-item-list-body">
                  <ul class="list-inline">
                    <li class="order-item-name">
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
                    <li class="order-item-unitprice">
                      <span class="">24.00</span>
                    </li>
                    <li class="order-item-num"><span class="x">X</span><span>2</span></li>
                    <li class="order-item-totalprice default-price"><span>48.00</span></li>
                  </ul>
                </li>
                <li class="order-item-list-body">
                  <ul class="list-inline">
                    <li class="order-item-name">
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
                    <li class="order-item-unitprice">
                      <span class="">24.00</span>
                    </li>
                    <li class="order-item-num"><span class="x">X</span><span>2</span></li>
                    <li class="order-item-totalprice default-price"><span>48.00</span></li>
                  </ul>
                </li>
                <li class="order-item-list-summary">
                  <div class="pull-right">
                    <ul class="list-group">
                      <li class="list-group-item"><div class="total-price price pull-right default-price"><span >￥</span><span class="price-value">3479.00</span></div><div class="summary-label pull-right"><span class="font-red">2</span> 件商品,总商品金额:</div></li>
                      <li class="list-group-item"><div class="actual-price price pull-right default-price"><span >￥</span><span class="price-value">3379.00</span></div><div class="summary-label pull-right">应付总额:</div></li>
                      <li class="list-group-item"><label class="label-item receive-address">寄送至:</label>河南 郑州市 管城区 十八里河镇 管城回族区十八里河镇刘湾村72号</li>
                      <li class="list-group-item"><label class="label-item">收件人:</label><span class="label-item receiver-name">刘启明</span><span class="mobile-phone">18510169266</span></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="panel-footer order-footer">
        <button type="button" class="btn btn-search-default btn-lg pull-right">提交订单</button>
        <div class="pull-right order-confirm-info default-price">应付总额：<span>￥</span><span class=" price-value">3379.00</span>元</div>
      </div>
    </div>
  </div>
</div>
