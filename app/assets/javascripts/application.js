// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function() {
  $('.has-tooltip').tooltip();
});

$(function(){

  $(".dropdown-menu").on('click', 'li a', function(){
  	var menuValue = parseInt($(this).attr('data-value'));
  	var starText = ""
  	for (i = 0; i < menuValue; i++) {
  		starText += '<span class="glyphicon glyphicon-star"></span> '
  	}
  	starText += '<span class="caret"></span>'
    $(this).parents(".dropdown").find('.btn').html(starText);
    $(this).parents(".dropdown").find('.btn').val(menuValue);
  });

});