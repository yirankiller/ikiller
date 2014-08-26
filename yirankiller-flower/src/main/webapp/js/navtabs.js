/**
 * Created by eason on 14-7-10.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');

  var NavTabs = function(element){
    this.element = $(element);
  }

  NavTabs.VERSION    = '0.9.0';
  NavTabs.MAX_TIME   = 1000;
  NavTabs.MIN_TIME   = 400;

  NavTabs.prototype.iTab = function(option){
    var $this        = this.element;
    var $navLabel    = $this.find(".nav-label");
    var $navListItem = $this.find(".nav-new-tabs li");

    $navListItem.mouseenter(function(){
      var option = {
        left : $(this).position().left,
        width : $(this).outerWidth()
      };
      $navLabel.stop().animate(option,
        calcDurTime( $(this).position().left ),
        function(){
        }
      );

    });

    $this.mouseleave(function(){
      var option = defaultOption();
      $navLabel.stop().animate(option,
        calcDurTime(),
        function(){
        }
      );
      console.log("mouse leave");
    });

    var defaultOption = function(){
      var option = {
        left : 0,
        width : 0,
        height:0
      };
      if($navListItem.hasClass("active")){
        var activeItem = $navListItem.filter(".active");
        option.left    = activeItem.position().left;
        option.width   = activeItem.outerWidth();
      }
      option.height    = $navListItem.outerHeight();
      return option;
    }

    var calcDurTime = function (moveToLeft){
      if(!moveToLeft){
        moveToLeft = 0;
      }
      var moveLength = Math.floor(
          Math.abs( ( moveToLeft - parseInt($navLabel.css("left")) ) )
      ) ;
      var time =  Math.max( NavTabs.MIN_TIME ,moveLength / $this.outerWidth() * NavTabs.MAX_TIME );
      return time;
    }

    var options = defaultOption();
    options = $.extend(options ,option);
    $navLabel.css(options);
  };
  exports= NavTabs;

  (function(){
    $(function(){
      $(".inav-tabs").each(function(){
        var navList = new NavTabs(this);
        navList.iTab();
      });
    });
  })()

});