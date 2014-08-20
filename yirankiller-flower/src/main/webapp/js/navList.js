/**
 * Created by eason on 14-7-10.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var flower = require('flower');
  var MAX_TIME = 1000;
  var MIN_TIME = 400;

  exports.nav = function (){
    $(".nav-list .nav-style").css({
      top : 0,
      height : 0
    });
    $(".nav-list .nav-list-group li").mouseenter(function(){
      $(this).addClass("active");
      $(".nav-list .nav-style").stop();
      var moveLength = Math.floor(Math.abs(($(this).position().top - parseInt($(".nav-list .nav-style").css("top"))))) ;
      var time =  Math.max( MIN_TIME ,moveLength / $(".nav-list").outerHeight() * MAX_TIME );
      console.log(time);
      $(".nav-list .nav-style").animate({
        top : $(this).position().top,
        height : $(this).outerHeight()
      },time,function(){

      });

    }).mouseleave(function(){
      $(this).removeClass("active");
    });
    $(".nav-list").mouseleave(function(){
      var moveLength = Math.floor(Math.abs((parseInt($(".nav-list .nav-style").css("top"))))) ;
      var time =  Math.max( MIN_TIME ,moveLength / $(".nav-list").outerHeight() * MAX_TIME );
      $(".nav-list .nav-style").animate({
        top : 0,
        height : $(".nav-list .nav-list-group:first-child").outerHeight()
      },time,function(){

      });
      console.log("mouse leave");

    });
  };
});