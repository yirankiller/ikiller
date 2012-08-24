/**
 * User: easliu
 * Date: 8/21/12
 * Version: 1.0
 */
define(function(require,exports,module){
    var $ = require("jQuery");
    require('jQueryUI.tabs')($);
    require("/css/common/tabCommon.css");
    module.exports = {
        init : function(){
            $(function(){
                $( "#index-tabs" ).tabs({
                    fx : {
                        opacity : 'toggle' ,
                        duration : 100    }
                });
            });
        }
    }
});