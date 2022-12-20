$(document).ready(function(){

	$('.navbar-nav .sub_menu_list').hide();

	$('.menu-item').mouseover(function(){
		$('.sub_menu_list').slideDown();

	});
	$('.menu-item').mouseleave(function(){
		$('.sub_menu_list').hide();
	});
});
