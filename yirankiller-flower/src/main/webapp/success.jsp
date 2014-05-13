<%--
  User: easliu
  Date: 5/12/14
  Time: 2:05 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <title>ftitle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-theme.css">
    <script src="/js/jquery/2.1.1/jquery.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<c:forEach items="${bookList}" var="book">
    <c:out value="${book.name}" />
    <c:out value="${book.author}" />
    <br />
</c:forEach>
</body>
</html>
