(function ($) {
  "use strict";
  $(document).on('ready', function () {
  // $(document).on('turbolinks:load', function () {

    /*-------------------------------------
        Scroll Menu Background Color
    -------------------------------------*/

    $(window).on('scroll', function () {
      if ($(window).scrollTop() > 100) {
        $('.header-area').addClass('menu-bg');
      } else {
        $('.header-area').removeClass('menu-bg');
      }
    });

    /*-------------------------------------
        Smooth scroll
    -------------------------------------*/

    $('a.smooth-scroll').on('click', function (e) {
      var anchor = $(this);
      $('html, body').stop().animate({
        scrollTop: $(anchor.attr('href')).offset().top
      }, 1000);
      e.preventDefault();
    });


    /*-------------------------------------
        Scroll Top
    -------------------------------------*/

    $(window).scroll(function() {
      if ($(this).scrollTop() > 50 ) {
          $('.scrolltop:hidden').stop(true, true).fadeIn();
      } else {
          $('.scrolltop').stop(true, true).fadeOut();
      }
    });
    $(function()
      {$(".scroll").click(function()
        {$("html,body").animate({scrollTop:$(".thetop").offset().top},"1000");return false})})

    // $.scrollUp({
    //   scrollName: 'scrollUp', // Element ID
    //   topDistance: '300', // Distance from top before showing element (px)
    //   topSpeed: 300, // Speed back to top (ms)
    //   animation: 'fade', // Fade, slide, none
    //   animationInSpeed: 200, // Animation in speed (ms)
    //   animationOutSpeed: 200, // Animation out speed (ms)
    //   scrollText: '<a class="hvr-icon-bob click-top"></a>', // Text for element
    //   activeOverlay: false // Set CSS color to display scrollUp active point, e.g '#00FFFF'
    // });
  });

  $(window).on('load', function () {
    /*-------------------------------------
        preloader
    -------------------------------------*/

    $('.preloader-area').fadeOut('500');


  });
}(jQuery));

