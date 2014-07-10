/**
 * Created by eason on 14-7-7.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var STEP_TARGET = "data-flower-step-target";
  var DATA_FLOWER_STEP = "data-flower-step";

  exports.initItemNumber = function(){
    $(".btn-minux-num").click(function(){
      var _inputItemNum = $(this).parent().find(".input-item-num");
      if(!isNaN(_inputItemNum.val()) && _inputItemNum.val() > 1){
        _inputItemNum.val(parseInt(_inputItemNum.val()) - 1);
      }else {
        _inputItemNum.val(1);
      }
    });
    $(".btn-plus-num").click(function(){
      var _inputItemNum = $(this).parent().find(".input-item-num");
      if(!isNaN(_inputItemNum.val()) && _inputItemNum.val() > 0){
        _inputItemNum.val(parseInt(_inputItemNum.val()) + 1);
      }else {
        _inputItemNum.val(1);
      }
    });
  };

  exports.initStep = function(){
    //first config. config data-flower-step attr on the need step elemnt.
    var _firstConfigStepTarget = $("["+DATA_FLOWER_STEP+"]");
    _firstConfigStepTarget.addClass(_firstConfigStepTarget.attr(DATA_FLOWER_STEP));
    //second config
    var _secondConfigStepTarget = $("["+ STEP_TARGET+"]");
    var _target = $("[" + _secondConfigStepTarget.attr(STEP_TARGET)+ "]");
    var _targetVal = _secondConfigStepTarget.attr(STEP_TARGET);
    _secondConfigStepTarget.addClass(_target.attr(_targetVal));
  };

  (function(){
    $(function(){
      exports.initItemNumber();
      exports.initStep();
    })
  }());
  //end
});