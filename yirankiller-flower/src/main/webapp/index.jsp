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
    <script src="/js/seajs/2.2.1/sea-debug.js" id="seajsnode"></script>
    <script src="/js/seajs/config.js" type="text/javascript"></script>
    <script language="JavaScript">
        seajs.use("bootstrap");
    </script>
</head>
<body>
<div class=".container">
    <c:forEach items="${bookList}" var="book">
    <div class="row">
        <div class="col-md-2"><c:out value="${book.name}" /></div>
        <div class="col-md-2"><c:out value="${book.author}" /></div>
    </div>
    </c:forEach>
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
