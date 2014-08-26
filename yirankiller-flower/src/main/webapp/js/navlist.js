/**
 * Created by eason on 14-7-10.
 */
define(function(require, exports, module) {
  var $ = require('jQuery');

  var NavList = function(element){
    this.element = $(element);
  }

  NavList.VERSION    = '0.9.0';
  NavList.MAX_TIME   = 1000;
  NavList.MIN_TIME   = 400;

  NavList.prototype.nav = function(option){
    var $this        = this.element;
    var $navLabel    = $this.find(".nav-style");
    var $navListItem = $this.find(".nav-list-group .nav-list-item:not(.category)");

    $navListItem.mouseenter(function(){
      var option = {
        top : $(this).position().top,
        height : $(this).outerHeight()
      };
      $navLabel.stop().animate(option,
        calcDurTime( $(this).position().top ),
        function(){
        }
      );
    });

    $navListItem.click(function(){
      $navListItem.removeClass("active");
      $(this).addClass("active");
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
        top : 0,
        height : 0
      };

      if($navListItem.hasClass("active")){
        var activeItem = $navListItem.filter(".active");
        option.top    = activeItem.position().top;
        option.height = activeItem.outerHeight();
      }
      return option;
    }

    var calcDurTime = function (moveToHeight){
      if(!moveToHeight){
        moveToHeight = 0;
      }
      var moveLength = Math.floor(
          Math.abs( ( moveToHeight - parseInt($navLabel.css("top")) ) )
      ) ;
      var time =  Math.max( NavList.MIN_TIME ,moveLength / $this.outerHeight() * NavList.MAX_TIME );
      return time;
    }

    var options = defaultOption();
    options = $.extend(options ,option);
    $navLabel.css(options);
  };
  exports= NavList;

  (function(){
    $(function(){
      $(".nav-list").each(function(){
        var navList = new NavList(this);
        navList.nav();
      });
    });
  })()

});