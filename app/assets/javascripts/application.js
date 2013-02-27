//= require jquery
//= require jquery_ujs
//= require lightbox
//= require html5shiv
//= require init
//= require mediaelement-and-player
//= require mediaelement-and-player.min
//= require jquery.textile.image
//= require_self

$(function(){
  $(".media").insertTextileImageTo("#post_body");
});