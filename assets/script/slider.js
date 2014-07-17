(function($){
  $(document).ready(function(){
    /* slider
     * 
     * require jquery.doubletap.js
     * 
     */
    $(".slider").each(function(){
      // vars
      var slider = $(this);
      var slider_slides = slider.data("slides"); // data-slides : string
      // test slides number
      if(slider.find(slider_slides).length>1){
        var slider_controls = slider.data("controls"); // data-controls : string
        var slider_time = Number(slider.data("time")); // data-time : number
        var slider_indicators = Boolean(slider.data("indicators")); // data-indicators : boolean
        var slider_autoplay = Boolean(slider.data("autoplay")); // data-autoplay : boolean
        var slider_interval = Number(slider.data("interval")); // data-interval : number
        var slider_timeout;
        // functions
        function sliderSlideTo(n, d, t){
          var tmp = (t!=undefined)?t:slider_time;
          var direction = (d!=undefined)?d:1;
          var current = slider.find(slider_slides+".active").index();
          //
          slider.find(slider_slides+":not(:eq("+current+"))").css({left:(100*direction)+"%"});
          slider.find(slider_slides+":eq("+current+")").animate({left:(-100*direction)+"%"},tmp);
          slider.find(slider_slides+":eq("+n+")").animate({left:"0%"},tmp);
          //
          slider.find(slider_slides).removeClass("active");
          slider.find(slider_slides).eq(n).addClass("active");
          slider.find(".indicators .indicator").removeClass("active");
          slider.find(".indicators .indicator").eq(n).addClass("active");
          //
          sliderAutoPlay();
        }
        function sliderPrev(){
          var prev = slider.find(slider_slides+".active").index()-1;
          if(prev<0){
            prev=slider.find(slider_slides).length-1;
          }
          sliderSlideTo(prev, -1)
        }
        function sliderNext(){
          var next = slider.find(slider_slides+".active").index()+1;
          if(next>=slider.find(slider_slides).length){
            next=0;
          }
          sliderSlideTo(next)
        }
        function sliderAutoPlay(){
          clearTimeout(slider_timeout);
          if(slider_autoplay){
            slider.find(".play-pause").addClass("pause");
            slider_timeout = setTimeout(sliderNext,slider_interval);
          }else{
            slider.find(".play-pause").removeClass("pause");
          }
        }
        // appends
        if($(slider_controls).length){
          if($(slider_controls).data("left")){ // data-left : boolean
            $('<div class="control left">&nbsp;</div>').appendTo($(slider_controls)).click(function(){
              sliderPrev();
            });
          }
          if($(slider_controls).data("right")){ // data-right : boolean
            $('<div class="control right">&nbsp;</div>').appendTo($(slider_controls)).click(function(){
              sliderNext();
            });
          }
          if($(slider_controls).data("playpause")){ // data-playpause : boolean
            $('<div class="play-pause">&nbsp;</div>').appendTo($(slider_controls)).click(function(){
              slider_autoplay = !slider_autoplay;
              sliderAutoPlay();
            });
          }
        }
        if(slider_indicators){
          slider.append('<div class="indicators"></div>');
          slider.find(slider_slides).each(function(){
            $('<div class="indicator">&nbsp;</div>').appendTo(slider.find(".indicators")).click(function(){
              if(!$(this).hasClass("active")){
                sliderSlideTo($(this).index());
              }
            });
          });
        }
        // touch (uses jquery.doubletap.js)
        slider.addSwipeEvents().bind('swipeleft', function(e){
          sliderNext();
          e.preventDefault();
        });
        slider.addSwipeEvents().bind('swiperight', function(e){
          sliderPrev();
          e.preventDefault();
        });
        // init
        sliderSlideTo(0, 1, 0);
      }
    });
  });
}(jQuery));