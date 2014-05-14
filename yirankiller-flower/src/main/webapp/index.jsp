<%--
  User: yiran
  Date: 5/5/2014
  Time: 12:18 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <title>ftitle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/js/seajs/latest/sea.js" id="seajsnode"></script>
    <script src="/js/seajs/config.js" type="text/javascript"></script>
    <script language="JavaScript">
        seajs.use("bootstrap");
    </script>
</head>
<body>
<div class="container show-grid">
    <c:forEach items="${bookList}" var="book">
    <div class="row">
        <div class="col-md-2"><c:out value="${book.name}" /></div>
        <div class="col-md-2"><c:out value="${book.author}" /></div>
    </div>
    </c:forEach>

    <div class="row">
        <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
        <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>

        <!-- Add the extra clearfix for only the required viewport -->
        <div class="clearfix visible-xs"></div>

        <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
        <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
    </div>


    <div class="row">
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
    </div>
    <div class="row">
        <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
        <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
    </div>
    <div class="bs-example bs-example-type">
        <h1>h1. Bootstrap heading</h1>
        <h2>h2. Bootstrap heading</h2>
        <h3>h3. Bootstrap heading</h3>
        <h4>h4. Bootstrap heading</h4>
        <h5>h5. Bootstrap heading</h5>
        <h6>h6. Bootstrap heading</h6>
    </div>
</div>
<hr />
<h2>Add Book</h2>
<form method="post" action="<%=request.getContextPath() %>/book.do?addbook">
    bookname:<input type="text" name="name" id="name">
    author:<input type="text" name="author" id="author">
    <input type="submit" value="Add">
</form>
</body>
</html>
