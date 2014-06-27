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
    <div class="nav-sidbar pull-left" data-spy="affix" data-offset-top="150" data-offset-top="0">
      <ul class="nav">
        <li>
          <a href="#floor1"> 1F 盆栽</a>
        </li>
        <li>
          <a href="#floor2"> 2F 绿植</a>
        </li>
        <li>
          <a href="#floor3"> 3F 盆景</a>
        </li>
      </ul>
    </div>

    <div class="middle-content">
      <div id="centerCarousel" class="carousel slide middle-carousel" data-ride="carousel" data-interval="7000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#centerCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#centerCarousel" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img src="/images/tushu.jpg" data-src="holder.js/400x300/auto/#777:#7a7a7a/text:First slide" alt="First slide">
            <!--
            <div class="container">
              <div class="carousel-caption">
                <h1>Example headline.</h1>
                <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
              </div>
            </div>
            -->
          </div>
          <div class="item">
            <img src="/images/songxia.jpg" data-src="holder.js/400x300/auto/#666:#6a6a6a/text:Second slide" alt="Second slide">
            <!--
            <div class="container">
              <div class="carousel-caption">
                <h1>Another example headline.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
            -->
          </div>
        </div>
        <a class="left carousel-control" href="#centerCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#centerCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>

      <div class="floor">
        <div id="floor1" class="each-floor">
          <div class="floor-left">
            <div class="floor-title">
              <div class="floor-sign">1F</div>
            </div>
            <div class="floor-left-nav">

            </div>
          </div>
          <div class="floor-center-navtabs">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" id="floornav1">
              <li class="active"><a href="#home" >Home</a></li>
              <li><a href="#profile" >Profile</a></li>
              <li><a href="#messages" >Messages</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane active" id="home">Home</div>
              <div class="tab-pane" id="profile">Profile</div>
              <div class="tab-pane" id="messages">Messages</div>
            </div>
          </div>
        </div>
        <div id="floor2" class="each-floor">
          <div class="floor-left">
            <div class="floor-title">
              <div class="floor-sign">1F</div>
            </div>
            <div class="floor-left-nav">

            </div>
          </div>
          <div class="floor-center-navtabs">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
              <li class="active"><a href="#home2" data-toggle="tab">Home</a></li>
              <li><a href="#profile2" data-toggle="tab">Profile</a></li>
              <li><a href="#messages2" data-toggle="tab">Messages</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane active" id="home2">Home</div>
              <div class="tab-pane" id="profile2">Profile</div>
              <div class="tab-pane" id="messages2">Messages</div>
            </div>
          </div>
        </div>
        <div id="floor3" class="each-floor">
          <div class="floor-left">
            <div class="floor-title">
              <div class="floor-sign">1F</div>
            </div>
            <div class="floor-left-nav">

            </div>
          </div>
          <div class="floor-center-navtabs">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
              <li class="active"><a href="#home3" data-toggle="tab">Home</a></li>
              <li><a href="#profile3" data-toggle="tab">Profile</a></li>
              <li><a href="#messages3" data-toggle="tab">Messages</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane active" id="home3">Home</div>
              <div class="tab-pane" id="profile3">Profile</div>
              <div class="tab-pane" id="messages3">Messages</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
