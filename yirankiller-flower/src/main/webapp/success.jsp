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
<c:forEach items="${bookList}" var="book">
    <c:out value="${book.name}" />
    <c:out value="${book.author}" />
    <br />
</c:forEach>
</body>
</html>
