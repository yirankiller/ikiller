/**
 * User: easliu
 * Date: 8/21/12
 * Version: 1.0
 */
define(function(require,exports,module){
    var $ = require('jQuery');
    require('bootstrap');
    require('/css/common/indexNav.css');

    function initIndexNav(){
        var $indexNavLabel = $("#index-nav-label");
        $(".index-nav .index-nav-menulist li").mouseenter(function(){
            $indexNavLabel.animate({
                top : $(this).position().top
            },50);
        }).click(function(){
                $(".index-nav .index-nav-menulist li").removeClass('current-cat');
                $(this).addClass('current-cat');
            });
        $('.index-nav-menulist').mouseleave(function(){
            if($('.current-cat',this).length){
                $indexNavLabel.animate({
                    top : $('.index-nav-menulist .current-cat').position().top
                },120);
            }else{
                $indexNavLabel.animate({
                    top : $('.index-nav-menulist .home').position().top
                },120);
            }
        });
    }
    $(function(){
        initIndexNav();
    });
});