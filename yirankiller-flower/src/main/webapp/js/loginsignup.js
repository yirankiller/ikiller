/**
 * Created by eason on 14-7-9.
 */

define(function(require, exports, module) {
  var $ = require('jQuery');
  require('bootstrapValidator');
  var util = require('util');
  var DATA_WELCOME_TITLE = "data-welcome-title";
  exports.initPageSlider = function(){
    var carouselInner = $('#carousel-login-signup .carousel-inner');
    carouselInner.find(".item").removeClass("active");
    if("/signup" === window.location.pathname){
      carouselInner.find(".signup").addClass("active");
    }else {
      carouselInner.find(".login").addClass("active");
    }
    $('#carousel-login-signup').on('slide.bs.carousel', function (e) {
      $(".login-welcome").html($(e.relatedTarget).attr(DATA_WELCOME_TITLE));
    })
  };
  exports.signupFormValidate = function(){
    $("#signupForm").bootstrapValidator({
      trigger: 'blur',
      message: '值不合法',
      feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
      },
      fields: {
        username: {
          message: '用户名不合法',
          validators: {
            notEmpty: {
              message: '用户名不能为空'
            },
            stringLength: {
              min: 2,
              max: 25,
              message: '用户名长度必须大于6位小于25位'
            },
            regexp: {
              regexp: /^[a-zA-Z0-9_\.]+$/,
              message: '用户名只能包含大小写字母和数字以及_(下划线).'
            },
            different: {
              field: 'password',
              message: '用户名不能和密码相同'
            },
            remote: {
              message: '该用户名已经被占用',
              url: '/userCheck'
            }
          }
        },
        password: {
          validators: {
            notEmpty: {
              message: '密码不能为空.'
            },
            different: {
              field: 'username',
              message: '密码不能和用户名相同.'
            },
            identical:{
              field: 'confirmPassword',
              message: '密码不一致'
            }
          }
        },
        confirmPassword: {
          validators: {
            notEmpty: {
              message: '密码不能为空.'
            },
            different: {
              field: 'username',
              message: '密码不能和用户名相同.'
            },
            identical:{
              field: 'password',
              message: '密码不一致.'
            }
          }
        },
        'userRegistrationProtocol': {
          trigger: 'click',
          validators: {
            choice: {
              min: 1,
              message: '未同意《用户注册协议》'
            }
          }
        }
      }
    });
  };

  (function(){
    $(function(){
      exports.initPageSlider();
      exports.signupFormValidate();
    });
  })()
});