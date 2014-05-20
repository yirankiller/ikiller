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
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <script src="/js/seajs/latest/sea.js" id="seajsnode"></script>
  <script src="/js/seajs/config.js" type="text/javascript"></script>
  <script language="JavaScript">
    seajs.use(["bootstrap"]);
  </script>
</head>
<body>
<jsp:include page="topbar.jsp"/>


<div class="container">
    <h1 class="text-hide">Custom heading</h1>
    <h2>Add Book</h2>

    <form class="form-horizontal" role="form" method="post" action="<%=request.getContextPath() %>/book.do?addbook">
        <div class="form-group">
            <label for="bookName" class="col-sm-2 control-label">BookName</label>
            <div class="col-sm-10">
                <input type="email" id="bookName" placeholder="Enter book name" class="form-control input-lg-6" name="name">
            </div>
        </div>
        <div class="form-group">
            <label for="bookAuthor" class="col-sm-2 control-label">Author</label>
            <div class="col-sm-10">
                <input type="text" id="bookAuthor" placeholder="Author" class="form-control" name="author">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> I Agree
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Add Book</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
