// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-cycle
//= require libs/modernizr-2.6.2.min
//= require libs/gumby.min
//= require main
//= require plugins
//= require libs/gumby.init
//= require libs/ui/gumby.checkbox
//= require libs/ui/gumby.fittext
//= require libs/ui/gumby.fixed
//= require libs/ui/gumby.navbar
//= require libs/ui/gumby.radiobtn
//= require libs/ui/gumby.retina
//= require libs/ui/gumby.skiplink
//= require libs/ui/gumby.tabs
//= require libs/ui/gumby.toggleswitch
//= require_tree .


$(document).ready(function() {
    $('.slideshow').cycle({
		fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
	});
});
