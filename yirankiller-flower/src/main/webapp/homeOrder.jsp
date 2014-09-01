<%--
  User: eason
  Date: 14-7-2
  Time: 下午12:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
  <title>ftitle</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <script src="/js/seajs/latest/sea.js" id="seajsnode"></script>
  <script src="/js/seajs/config.js" type="text/javascript"></script>
  <script language="JavaScript">
    seajs.use(["/css/item.css","/css/homeOrder.css","bootstrap"]);
    seajs.use(["/js/home"]);
  </script>
</head>
<body>
  <!-- short cut part -->
  <jsp:include page="topbar.jsp"/>
  <!-- header part -->
  <jsp:include page="header.jsp"/>
  <div class="container home-middle">
    <jsp:include page="homeNav.jsp"/>
    <jsp:include page="homeOrderMiddle.jsp"/>
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>
