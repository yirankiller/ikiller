<%--
  User: easliu
  Date: 5/19/14
  Time: 5:21 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
  .topnavbar .navbar {
    min-height: 40px;
  }
  .topnavbar .navbar-brand ,.topnavbar .navbar-nav li a{
    padding-top: 10px;
    padding-bottom: 10px;
  }
</style>
  <!-- customize top nav bar -->
  <div class="topnavbar">
    <nav class="navbar navbar-default navbar-static-top" role="banner">
        <!-- Brand and toggle get grouped for better mobile display -->
      <div class="container">
        <div class="navbar-header">
            <span class="navbar-brand" href="#"><small>Hi yirankiller,欢迎回来</small></span>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <!--
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          -->
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">登陆</a></li>
            <li><a href="#">注册</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>
  </div>

  <div class="container show-grid">
    <table class="table ">
      <thead>
      <th>#</th>
      <th>Name</th>
      <th>Author</th>
      </thead>
      <tbody>
      <c:forEach items="${bookList}" var="book" varStatus="status">
        <tr >
          <td><c:out value="${status.count}" /></td>
          <td class="success"><c:out value="${book.name}" /></td>
          <td><c:out value="${book.author}" /></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>


  </div>
