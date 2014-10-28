/**
 * Created by eason on 14-7-9.
 */

define(function(require, exports, module) {
  var $ = require('jQuery');
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
  (function(){
    $(function(){
      exports.initPageSlider();
    });
  })()
});