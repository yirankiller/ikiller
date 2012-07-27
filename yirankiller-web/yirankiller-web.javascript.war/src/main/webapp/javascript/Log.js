/**
 * User: easliu
 * Date: 7/27/12
 * Version: 1.0
 */
(function(window){
    var logger = {
        info : function(msg){
            $("<div/>").addClass("testCase").append(msg+"<br />").appendTo("#log");
        },
        evalLog : function(msg){
            $("<div/>").addClass("testCase").text(msg).wrapInner("<strong/>").append("&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; " , $("<pre/>").text(eval(msg))).appendTo("#log");
        }
    }
    window.logger = logger;
})(window);
