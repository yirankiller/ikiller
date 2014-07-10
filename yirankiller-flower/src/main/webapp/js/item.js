/**
 * Created by eason on 14-7-7.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var Galleria = require('igalleria');
  var flower = require('flower');

  exports.init = function(){
    $(function(){
      flower.initItemNumber();
      Galleria.run('#galleria');
    });
  }
});