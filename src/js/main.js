(function($){

  'use strict';

  // $('.sub-menu .menu-item-type-taxonomy > a, .woocommerce-product-gallery__image > a').on('click', function(event){
  //   event.preventDefault();
  // });


  // $('.fb-share').click(function(e) {
  //     e.preventDefault();
  //     window.open($(this).attr('href'), 'fbShareWindow', 'height=450, width=550, top=' + ($(window).height() / 2 - 275) + ', left=' + ($(window).width() / 2 - 225) + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
  //     return false;
  // });


  /* Open nav menu slide
  ----------------------------------------------------- */
  // $('.menu-mobile').click(function() {
  //   $('.site-header').toggleClass('open')
  // });


  // Scroll Top
  // ----------------------------------------------------------------------------
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
        $('.site-header').addClass('sticky-header');
    }
    else {
        $('.site-header').removeClass('sticky-header');
    }
  });


  // owlCarousel
  // ----------------------------------------------------------------------------
  if ( $('#carousel-home').length > 0 ) {
    $('#carousel-home').owlCarousel({
      loop: false,
      margin: 0,
      nav: false,
      dots: true,
      items: 1,
      smartSpeed: 450,
      autoplay: false,
      autoplayTimeout: 5000
    });
  }

  // owlCarousel Depoimentos
  // ----------------------------------------------------------------------------
  if ( $('#carousel-depoimentos').length > 0 ) {
    $('#carousel-depoimentos').owlCarousel({
      loop: false,
      margin: 30,
      nav: false,
      dots: true,
      smartSpeed: 450,
      autoplay: true,
      autoplayTimeout: 5000,
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 1
        },
        990: {
          items: 2
        },
        1000: {
          items: 2
        }
      }
    })
  }

})(jQuery);

// document.body.addEventListener('touchstart',function(){},false);


// function share() {
//   var width = 626;
//   var height = 436;
//   var yourPageToShare = location.href;
//   var sharerUrl = 'https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(yourPageToShare);
//   var l = window.screenX + (window.outerWidth - width) / 2;
//   var t = window.screenY + (window.outerHeight - height) / 2;
//   var winProps = ['width='+width,'height='+height,'left='+l,'top='+t,'status=no','resizable=yes','toolbar=no','menubar=no','scrollbars=yes'].join(',');
//   var win = window.open(sharerUrl, 'fbShareWin', winProps);
// }
