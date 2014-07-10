<%--
  User: eason
  Date: 14-7-8
  Time: 下午1:44
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
    seajs.use(["/css/shoppingCart.css","bootstrap"]);
    seajs.use(["/js/order"]);
  </script>
</head>
<body data-header-step="process-2">
<!-- short cut part -->
<jsp:include page="topbar.jsp"/>
<!-- header part -->
<jsp:include page="orderHeader.jsp"/>

<jsp:include page="cartMiddle.jsp"/>
<jsp:include page="footer.jsp"/>
</body>
</html>
