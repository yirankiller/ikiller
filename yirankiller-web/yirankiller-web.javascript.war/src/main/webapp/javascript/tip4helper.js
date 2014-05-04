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
    ["ZhongGuo",[
        "C"
    ]],
    "Chang Cheng",
    "Beijing"
];

function iKillerTip() {


    $("input:text").dblclick(function(eved){
        showTip(this,tips);
    });

    function showTip(srcEle,dataArr){
        var divTip = $("<div class='tip'></div>");
        divTip.append("<ul />");
        divTip.find("ul").empty();
        $.each(dataArr,function(ind,ele){
            var liData = ele;
            if(jQuery.isArray(ele)){
                liData = ele[0];
            }
            divTip.find("ul").append($("<li />").append(liData));
        });
        initLi();
        adapterSizeToDownLeft(srcEle,divTip);
        $("body").append(divTip);
        $(srcEle).blur(function(){
            divTip.hide();
        });
        divTip.show();
    }
    function initLi(){
        $("div.tip ul li").each(function(){
            $(this).mouseover(function(){
                $(this).css("background","gray");
            }).mouseout(function(){
                $(this).css("background","yellow");
            });
        })
    }
    function adapterSizeToDownLeft(ele,divTip){
        divTip.css("top",$(ele).offset().top+$(ele).outerHeight());
        divTip.css("left",$(ele).offset().left);
        divTip.width($(ele).outerWidth());
    }
    function adapterSizeToTopRight(ele){
        divTip.css("top",$(ele).offset().top);
        divTip.css("left",$(ele).offset().left + $(ele).outerWidth());
        divTip.width($(ele).outerWidth());
    }
}
