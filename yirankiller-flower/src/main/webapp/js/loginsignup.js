/**
 * Created by eason on 14-7-9.
 */

define(function(require, exports, module) {
  var $ = require('jQuery');
  var DATA_WELCOME_TITLE = "data-welcome-title";
  exports.initPageSlider = function(){
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