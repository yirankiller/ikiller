/**
 * Created by eason on 14-7-7.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var Galleria = require('igalleria');
  var Util = require('util');

  exports.init = function(){
    $(function(){
      Util.initItemNumber();
      Galleria.run('#galleria');
    });
  }
});