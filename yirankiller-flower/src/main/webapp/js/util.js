/**
 * Created by eason on 14-7-7.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');

  exports.getParameter = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return decodeURIComponent(r[2]);
    return undefined;
  }

  /**
   * exact mul.
   */
  exports.multiply = function (arg1, arg2) {
    var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
    try {
      m += s1.split(".")[1].length
    } catch (e) {
    }
    try {
      m += s2.split(".")[1].length
    } catch (e) {
    }
    return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m);
  }

  /**
   * exact divide
   */
  exports.divide = function (arg1, arg2) {
    var t1 = 0, t2 = 0, r1, r2;
    try {
      t1 = arg1.toString().split(".")[1].length
    } catch (e) {
    }
    try {
      t2 = arg2.toString().split(".")[1].length
    } catch (e) {
    }
    with (Math) {
      r1 = Number(arg1.toString().replace(".", ""));
      r2 = Number(arg2.toString().replace(".", ""));
      return (r1 / r2) * pow(10, t2 - t1);
    }
  }

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

  //end
});