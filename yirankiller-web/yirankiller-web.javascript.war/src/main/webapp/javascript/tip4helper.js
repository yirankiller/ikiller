/**
 * User: easliu
 * Date: 1/28/13
 * Version: 1.0
 */
$(function(){
    iKillerTip();
});
var tips = [
    "B401",
    "Chang Cheng",
    "Beijing"
];

function iKillerTip() {
    var divTip = $("<div class='tip'></div>");
    divTip.append("<ul />");
    $("body").append(divTip);
    $("input:text").dblclick(function(eved){
        divTip.find("ul").empty();
        $.each(tips,function(ind,ele){
            divTip.find("ul").append($("<li />").append(ele));
        });
        initLi();
        adapterSize(this);
        divTip.toggle();
    });
    function initLi(){
        $("div.tip ul li").each(function(){
            $(this).mouseover(function(){
                $(this).css("background","gray");
            }).mouseout(function(){
                $(this).css("background","yellow");
            });
        })
    }
    function adapterSize(ele){
        divTip.css("top",$(ele).offset().top+$(ele).outerHeight());
        divTip.css("left",$(ele).offset().left);
        divTip.width($(ele).outerWidth());
    }
}
