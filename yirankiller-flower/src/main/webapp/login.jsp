<%--
  User: eason
  Date: 14-7-11
  Time: 下午3:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    seajs.use(["/css/login.css","bootstrap","/js/loginsignup"]);
  </script>
</head>
<body class="body">
  <div class="login">
    <div class="container">
      <div class="login-header">
        <div class="login-logo-img">
          <a href="/"><img src="/images/logo2.png" class="pull-left"></a>
          <div class="pull-left login-welcome">欢迎登录</div>
        </div>
      </div>
      <div id="carousel-login-signup" class="carousel slide" data-ride="carousel" data-interval="false">
        <div class="carousel-inner" role="listbox" >
          <div class="item login" data-welcome-title="欢迎登录">
            <div class="login-middle">
              <div class="login-img pull-left"></div>
              <div class="pull-right login-form">
                <form:form class="form-horizontal" role="form" action="/login" method="post">
                  <div class="input-fields">
                    <div class="form-group">
                      <div class="col-sm-offset-3 col-md-8 username-label">
                        <input type="text" class="form-control input-lg" id="login_username" name="username" placeholder="手机号/用户名/邮箱" maxlength="23" autocomplete="false">
                        <span class="label-icon glyphicon glyphicon-user"></span>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-3 col-md-8 passwd-label">
                        <input type="password" class="form-control input-lg" id="login_password" name="password" placeholder="密码" maxlength="16">
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
                      <p class="form-control-static pull-right"><a href="#" data-target="#carousel-login-signup" data-slide-to="1">还没有账号?&nbsp;&nbsp;30秒注册<span class="glyphicon glyphicon-flash"></span></a></p>
                    </div>
                  </div>
                </form:form>
              </div>
            </div>
          </div>
          <div class="item signup" data-welcome-title="欢迎注册">
            <div class="signup-middle">
              <div class="signup-form pull-left">
                <form class="form-horizontal" role="form" action="/register" method="post">
                  <div class="form-group form-group-lg">
                    <label for="signup_username" class="col-md-2 control-label"><span class="asterisk-require">*</span>账户名:</label>
                    <div class="col-xs-5 username-label">
                      <input type="text" class="form-control" id="signup_username" name="userShadow.user.username" placeholder="手机号/用户名/邮箱" autocomplete="false" />
                      <span class="label-icon glyphicon glyphicon-user"></span>
                    </div>
                  </div>
                  <div class="form-group form-group-lg">
                    <label for="signup_password" class="col-sm-2 control-label"><span class="asterisk-require">*</span>请设置密码:</label>
                    <div class="col-sm-5 passwd-label">
                      <input type="password" class="form-control" id="signup_password" name="userShadow.password" placeholder="密码" />
                      <span class="glyphicon glyphicon-lock label-icon"></span>
                    </div>
                  </div>
                  <div class="form-group form-group-lg">
                    <label for="confirmPassword" class="col-sm-2 control-label"><span class="asterisk-require">*</span>请确认密码:</label>
                    <div class="col-sm-5 passwd-label">
                      <input type="password" class="form-control" id="confirmPassword" name="" placeholder="确认密码" />
                      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                      <span class="glyphicon glyphicon-lock label-icon"></span>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-5">
                      <div class="checkbox">
                        <label class="checkbox-radio-label">
                          <input type="checkbox"> 我已阅读并同意&nbsp;&nbsp;&nbsp;<a href="#" class="blue-link">《用户注册协议》</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-4">
                      <button type="submit" class="btn btn-search-default btn-lg">注&nbsp;&nbsp;册</button>
                    </div>
                  </div>
                </form>
              </div>
              <div class="pull-left right-info">
                <div>已有账号?</div>
                <div class="login-button"><a href="#" class="btn btn-search-default" role="button" data-target="#carousel-login-signup" data-slide-to="0">直接登录</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<jsp:include page="footer.jsp" />
</body>
</html>
