<%--
  User: yiran
  Date: 2014-07-15
  Time: 11:22 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="home-middle-item home-content">
  <div class=" panel panel-default">
    <div class="addressupdate-header panel-heading">
      <h4 class="panel-title">管理收货地址</h4>
    </div>
    <div class="addressupdate-body panel-body">
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
          <label for="zipcode" class="col-sm-2 control-label">邮政编码</label>
          <div class="col-sm-2">
            <input type="zipcode" class="form-control" id="zipcode" maxlength="10">
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
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="button" class="btn btn-search-default">新增</button>
            <button type="button" class="btn btn-search-default">取消</button>
          </div>
        </div>
      </form>
    </div>
    <div class="panel-body address-list">
      <ul class="list-group list-group-hover">
        <li class="list-group-item list-address-item-title">
          <ul class="list-inline">
            <li class="receiver">收件人</li>
            <li class="address">
              详细地址
            </li>
            <li class="zipcode">邮编</li>
            <li class="mobile-phone">手机</li>
            <li class="set2-default"><a href="#">设为默认</a></li>
            <li class="edit-address">操作</li>
          </ul>
        </li>
        <li class="list-group-item list-address-item">
          <ul class="list-inline">
            <li class="receiver">刘启明</li>
            <li class="address">
              <span class="dis-address">河南 郑州市 管城区</span><span class="detail-address"> 十八里河镇   管城回族区十八里河镇刘湾村72号</span>
            </li>
            <li class="zipcode">100080</li>
            <li class="mobile-phone">18510169266</li>
            <li class="set2-default"><a href="#">设为默认</a></li>
            <li class="edit-address"><a href="#"><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</a></li>
            <li class="del-address"><a href="#"><span class="glyphicon glyphicon-trash"></span>&nbsp;删除</a></li>
          </ul>
        </li>
        <li class="list-group-item list-address-item">
          <ul class="list-inline">
            <li class="receiver">刘启明</li>
            <li class="address">
              <span class="dis-address">河南 郑州市 管城区</span><span class="detail-address"> 十八里河镇十八里河镇十八里河镇十八里河镇   管城回族区十八里河镇刘湾村72号</span>
            </li>
            <li class="zipcode">100080</li>
            <li class="mobile-phone">18510169266</li>
            <li class="set2-default"><a href="#">设为默认</a></li>
            <li class="edit-address"><a href="#"><span class="glyphicon glyphicon-pencil"></span>&nbsp;编辑</a></li>
            <li class="del-address"><a href="#"><span class="glyphicon glyphicon-trash"></span>&nbsp;删除</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>