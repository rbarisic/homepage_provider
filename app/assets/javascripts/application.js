// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var screen_height = window.screen.height;

$(window).scroll(function() {

    if ($(this).scrollTop()>screen_height / 4)
     {
        $('.hide-on-scroll').fadeOut();
     }
    else
     {
      $('.hide-on-scroll').fadeIn();
     }
 });

$(window).scroll(function() {

    if ($(this).scrollTop()>screen_height + 10)
     {
        $('.splash-background').css('z-index',-99)
     }
    else
     {
        $('.splash-background').css('z-index',-102)

     }
 });