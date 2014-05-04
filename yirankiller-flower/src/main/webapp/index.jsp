<%--
  Created by IntelliJ IDEA.
  User: yiran
  Date: 5/5/2014
  Time: 12:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Add Book</h2>
<form method="post" action="<%=request.getContextPath() %>/book.do?method=add">
    bookname:<input type="text" name="name" id="name">
    author:<input type="text" name="author" id="author">
    <input type="submit" value="Add">
</form>
</body>
</html>
