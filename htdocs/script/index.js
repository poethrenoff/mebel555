jQuery(function($){
	$.supersized({
		slides : [{image : '/image/back.jpg'}]
	});
	
	$(window).resize(function(){
		$('#menu').height($(document).height());
	}).resize();
});