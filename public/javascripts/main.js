$(window).bind('scroll', function(e){
    parallaxScroll();
});
function parallaxScroll(){
    var scrolledY = $(window).scrollTop();
    $('.container h1').css('opacity','1' - (scrolledY*0.01));
}


skrollr.init({
    smoothScrolling: true,
    forceHeight: false
});

var maxWidth = $(window).width();
var maxHeight = $(window).height();

$(document).ready(function(){
    $('.welcome, .welcome-two, .intro').css({
        width: maxWidth,
        height: maxHeight
    });
});
$( window ).resize(function() {
    var maxWidth = $(window).width();
    var maxHeight = $(window).height();
    $('.welcome, .welcome-two, .intro').css({
        width: maxWidth,
        height: maxHeight
    });   
});