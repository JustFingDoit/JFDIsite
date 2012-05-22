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
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function(){
	// Nice scrolling effect causing the main headline to fade out.
	$(window).scroll(function(){
		$('h1').css({opacity: 1-(($(window).scrollTop()*.001)*3)});
	})

	// Center the main headline on the front page in it's parent element
	$('.front-page h1').center();
	
	// Add a page selector for mobile use, using all items in Nav
	$('nav').append('<select class="page_switcher" style="display:none;">')
	$('.page_switcher').append('<option>Select Page</option>');
	$('nav ul li').each(function(){
		link = $(this).find('a');
		if (link.hasClass('selected')) {
			$('.page_switcher').append("<option value='"+link.attr('href')+"' selecte='selected'>"+link.html()+"</option>");
		}else{
			$('.page_switcher').append("<option value='"+link.attr('href')+"'>"+link.html()+"</option>");			
		};

	})
	
	// Change page when page switcher changes
	$('nav').delegate('.page_switcher','change',function(){
		selected = $(this).find('option:selected');
		window.location = selected.attr('value');
	})
})

jQuery.fn.center = function () {
    // this.css("position","absolute");
    this.css("margin-top", ((($(this).parent().outerHeight() - this.outerHeight())-75) / 2) + "px");
    // this.css("left", (($(window).width() - this.outerWidth()) / 2) + 
                                                // $(window).scrollLeft() + "px");
    return this;
}

