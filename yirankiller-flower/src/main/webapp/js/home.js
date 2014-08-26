/**
 * Created by eason on 14-7-10.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');
  var navList = require('navlist');
  var navTabs = require('navtabs');

  (function(){
    $(function(){
      $('.nav-new-tabs a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
      })
    })
  })();


});