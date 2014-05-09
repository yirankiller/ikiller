<%--
  User: easliu
  Date: 5/8/14
  Time: 3:33 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:forEach items="${bookList}" var="book">
    <c:out value="${book.name}" />
    <c:out value="${book.author}" />
    <br />
</c:forEach>
</body>
</html>
