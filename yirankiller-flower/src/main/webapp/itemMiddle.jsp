<%--
  User: eason
  Date: 14-7-2
  Time: 下午12:21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="item-middle">
  <div class="container">
    <div class="path-nav">
      <ol class="breadcrumb">
        <li><a href="#">盆栽</a></li>
        <li><a href="#">净化空气</a></li>
        <li class="active">绿萝</li>
      </ol>
    </div>
    <div class="item-select">
      <div id="galleria" class="galleria-item">
        <c:forEach items="${itemPictureList}" var="itemPicture">
        <a href="${itemPicture.picture.url}">
          <img src="${itemPicture.picture.url}"
            data-big="${itemPicture.picture.url}"
          />
        </a>
        </c:forEach>
      </div>
      <form class="form-horizontal" role="form">
      <div class="item-info">
        <div class="item-name">
          <div class="name">${item.displayName}</div>
          <div class="sale-info">七月周年庆</div>
        </div>
        <div class="item-info-list item-desc ">
          <div class="form-group">
            <label class="col-sm-2 control-label">现价&nbsp;:&nbsp;</label>
            <div class="col-sm-3">
              <p class="form-control-static item-price">￥${item.currentPrice}</p>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">参考价&nbsp;:&nbsp;</label>
            <div class="col-sm-3">
              <p class="form-control-static refer-price"><del>￥${item.marketPrice}</del></p>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">配送&nbsp;:&nbsp;</label>
            <div class="col-sm-3">
              <p class="form-control-static service-info">全场满199,免费送货</p>
            </div>
          </div>

        </div>
        <div class="item-info-list item-options">
          <div class="form-group">
            <label class="col-sm-2 control-label">颜色&nbsp;:&nbsp;</label>
            <div class="col-sm-6">
              <ul class="list-inline option-list">
                <li class="option-item">
                  <img src="/images/resources/lvluo.jpg" style="max-width: 25px"/>
                  <a class="option-desc">红色</a>
                </li>
                <li class="option-item text-only">
                  <a class="option-desc">黑色</a>
                </li>
                <li class="option-item">
                  <img src="/images/resources/lvluo2.jpg" style="max-width: 25px"/>
                  <a class="option-desc">黑色</a>
                </li>
                <li class="option-item">
                  <img src="/images/resources/lvluo2.jpg" style="max-width: 25px"/>
                  <a class="option-desc">黑色</a>
                </li>
                <li class="option-item">
                  <img src="/images/resources/lvluo2.jpg" style="max-width: 25px"/>
                  <a class="option-desc">黑色</a>
                </li>
                <li class="option-item text-only">
                  <a class="option-desc">黑色</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="item-info-list">
          <div class="form-group">
            <label class="col-sm-2 control-label">购买数量&nbsp;:&nbsp;</label>
            <div class="col-sm-2 item-num">
              <a href="javascript:void(0);" class="btn-minux-num"><span class="glyphicon glyphicon-minus minux-num"></span></a>
              <input type="text" class="form-control input-item-num" value="1"/>
              <a href="javascript:void(0);" class="btn-plus-num"><span class="glyphicon glyphicon-plus plus-num"></span></a>
            </div>
          </div>
        </div>
        <div class="item-purchase">
          <ul class="list-inline">
            <li>
              <button type="submit" class="btn btn-danger btn-lg add-cart">
                <span class="glyphicon glyphicon-shopping-cart"></span>
                &nbsp;加入购物车
              </button>
            </li>
            <li>
              <button type="submit" class="btn btn-danger btn-lg add-cart">&nbsp;立即购买</button>
            </li>
          </ul>
        </div>
      </div>
      </form>
    </div>
    <div class="item-detail-middle inner-middle">
      <div class="item-detail">
        <div class="panel panel-success">
          <div class="panel-heading">
            <h3 class="panel-title">商品介绍</h3>
          </div>
          <div class="panel-body">
            <ul class="list-inline-item">
              <li><label class="name">商品名称:</label><span>绿萝</span></li>
              <li><label class="name">商品编号:</label><span>1001032689</span></li>
              <li><label class="name">商品毛重:</label><span>1.0kg</span></li>
              <li><label class="name">商品产地:</label><span>中国大陆</span></li>
              <li><label class="name">上架时间:</label><span>2014-04-15 17:30:00</span></li>
              <li><label class="name">生长适宜温度:</label><span>15&#8451;-30&#8451;</span></li>
            </ul>
          </div>
        </div>
        <div class="panel panel-success">
          <!-- Default panel contents -->
          <div class="panel-heading">
            <h3 class="panel-title">店家小贴士</h3>
          </div>
          <div class="panel-body">
            <p>绿萝推荐摆放位置：在室内的书桌面、办公台面、茶几面、电视柜面都适合摆放。
              如果是在办公区摆放，推荐搭配使用 办公屏风盆栽托架，巧妙利用空间，营造舒适绿色环境</p>
          </div>
          <ul class="list-group">
            <li class="list-group-item">有非常好的净化空气的能力,一盆绿萝在8-10的房间内相当于一个小型空气净化器.</li>
            <li class="list-group-item">可以吸收空气中的甲醛,苯和三氯乙烯等有害气体,更适合乔迁新居时净化空气.</li>
            <li class="list-group-item">属于不能常见阳光的植物,请不要放置在阳光直射的位置.</li>
            <li class="list-group-item">天气干燥室可以适宜喷水,保持空气湿润,有利于叶片生长.</li>
          </ul>
        </div>
        <div class="panel panel-success">
          <ul class="list-group">
            <li class="list-group-item">
              <img src="/images/resources/lvluoinfo.jpg"/>
            </li>
            <li class="list-group-item">
              <img src="/images/resources/lvluoinfo2.jpg"/>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
