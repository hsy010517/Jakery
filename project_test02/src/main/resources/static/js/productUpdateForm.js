window.addEventListener('DOMContentLoaded', function() {
	$(".productImgUpdate").hide();
	$("a[name='filedeletemain']").on("click", function(e) {
		e.preventDefault();
		deleteFile($(this));
	})


	$("a[name='filedeletelist']").on("click", function(e) {
		e.preventDefault();
		deleteFile($(this));
	})

	$("a[name='filedeleteinfo']").on("click", function(e) {
		e.preventDefault();
		deleteFile($(this));
	})

	function deleteFile(obj) {
		obj.parent().next().show();
		obj.parent().remove();

	}
})