<%--
  User: yiran
  Date: 5/5/2014
  Time: 12:18 AM
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<c:forEach items="${bookList}" var="book">
    <c:out value="${book.name}" />
    <c:out value="${book.author}" />
    <br />
</c:forEach>
<h2>Add Book</h2>
<form method="post" action="<%=request.getContextPath() %>/book.do?addbook">
    bookname:<input type="text" name="name" id="name">
    author:<input type="text" name="author" id="author">
    <input type="submit" value="Add">
</form>
</body>
</html>
