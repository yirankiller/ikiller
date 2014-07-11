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
    seajs.use(["/css/login.css","bootstrap"]);
  </script>
</head>
<body class="body">
  <div class="login">
    <div class="container">
    <div class="login-header">
      <div class="login-logo-img">
        <img src="/images/logo2.png" class="pull-left">
        <div class="pull-left login-welcome">欢迎登录</div>
      </div>

    </div>
    <div class="login-middle">
      <div class="login-img pull-left"></div>
      <div class="pull-right login-form">
        <form class="form-horizontal" role="form">
          <div class="input-fields">
            <div class="form-group">
              <div class="col-sm-offset-3 col-md-8 username-label">
                <input type="email" class="form-control input-lg" id="inputEmail3" placeholder="手机号/用户名/邮箱" maxlength="23">
                <span class="label-icon glyphicon glyphicon-user"></span>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-3 col-md-8 passwd-label">
                <input type="password" class="form-control input-lg" id="inputPassword3" placeholder="密码" maxlength="16">
                <span class="glyphicon glyphicon-lock label-icon"></span>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-3 col-md-8">
              <p class="form-control-static pull-right"><a href="#">忘记登录密码?</a></p>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-3 col-md-8">
              <button type="submit" class="btn btn-search-default btn-lg">登&nbsp;&nbsp;录</button>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-3 col-md-8">
              <p class="form-control-static pull-right"><a href="#">还没有账号?&nbsp;&nbsp;30秒注册<span class="glyphicon glyphicon-flash"></span></a></p>
            </div>
          </div>
        </form>
      </div>
    </div>
    </div>
  </div>

<jsp:include page="footer.jsp" />
</body>
</html>
