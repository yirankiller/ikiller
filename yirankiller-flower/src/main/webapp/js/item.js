/**
 * Created by eason on 14-7-7.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var Galleria = require('igalleria');
  exports.initItemNumber = function(){
    $(".btn-minux-num").click(function(){
      if(!isNaN($(".input-item-num").val()) && $(".input-item-num").val() > 1){
        $(".input-item-num").val(parseInt($(".input-item-num").val()) - 1);
      }else {
        $(".input-item-num").val(1);
      }
    });
    $(".btn-plus-num").click(function(){
      if(!isNaN($(".input-item-num").val()) && $(".input-item-num").val() > 0){
        $(".input-item-num").val(parseInt($(".input-item-num").val()) + 1);
      }else {
        $(".input-item-num").val(1);
      }
    });
  }

  exports.initItem = function(){
    $(function(){
      exports.initItemNumber();
      Galleria.run('#galleria');
    });
  }
});