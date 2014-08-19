/**
 * Created by eason on 14-7-10.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var flower = require('flower');

  exports.nav = function (){
    $(".nav-list").click(function(){
      $(".list-address-item").removeClass("address-active");
      $(this).parentsUntil(".list-group").filter(".list-address-item").addClass("address-active");
    });
  };
});