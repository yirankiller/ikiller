<%--
  User: eason
  Date: 14-7-11
  Time: 下午3:32
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
    seajs.use(["/css/signup.css","bootstrap"]);
  </script>
</head>
<body class="body">
  <div class="login">
    <div class="container">
    <div class="signup-header">
      <div class="login-logo-img">
        <img src="/images/logo2.png" class="pull-left">
        <div class="pull-left login-welcome">欢迎注册</div>
      </div>

    </div>
    <div class="login-middle">

    </div>
    </div>
  </div>

<jsp:include page="footer.jsp" />
</body>
</html>
