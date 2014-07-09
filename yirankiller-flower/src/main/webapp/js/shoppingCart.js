/**
 * Created by eason on 14-7-9.
 */

define(function(require, exports, module) {
  var $ = require('jQuery');
  var Util = require('util');

  exports.init = function(){
    $(function(){
      Util.initItemNumber();
    });
  }
});