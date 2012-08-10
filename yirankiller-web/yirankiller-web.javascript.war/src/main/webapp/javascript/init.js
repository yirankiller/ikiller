//init.js

define(function(require, exports, module) {
    var $ = require('jquery');
    var data = require('./data');
    var css = require('../css/style.css');
    $(function(){
        $('.author').html(data.author);
        $('.blog').attr('href', data.blog);
    });

});