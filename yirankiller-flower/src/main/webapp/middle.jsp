<%--
  User: eason
  Date: 14-6-24
  Time: 下午1:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="middle">
  <div class="container">
    <div class="nav-sidbar" data-spy="affix" data-offset-top="150">
      <ul class="nav">
        <li>
          <a href="#floor1"><span class="glyphicon glyphicon-shopping-cart"></span> 1F 盆栽</a>
        </li>
        <li>
          <a href="#floor2"><span class="glyphicon glyphicon-shopping-cart"></span> 2F 绿植</a>
        </li>
        <li>
          <a href="#floor3"><span class="glyphicon glyphicon-shopping-cart"></span> 3F 盆景</a>
        </li>
      </ul>
    </div>


    <div id="centerCarousel" class="carousel slide middle-carousel" data-ride="carousel" data-interval="20000000">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#centerCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#centerCarousel" data-slide-to="1"></li>
        <li data-target="#centerCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img data-src="holder.js/400x300/auto/#777:#7a7a7a/text:First slide" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img data-src="holder.js/400x300/auto/#666:#6a6a6a/text:Second slide" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img data-src="holder.js/400x300/auto/#555:#5a5a5a/text:Third slide" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>

    <div class="container" style="margin-left: 200px;" >
      <div style="width:1000px;height:500px;background: blue" id="floor1">
        floor 1
      </div>
      <div style="width:1000px;height:500px;background: green" id="floor2">
        floor 2
      </div>
      <div style="width:1000px;height:500px;background: #ffff00" id="floor3">
        floor 3
      </div>
    </div>
  </div>
</div>
