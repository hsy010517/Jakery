let index = {
	init: function() {
		$("#cartbtn-save").on("click", () => {
			this.save();
		});
	},
	save: function() {
		let data = {
			cartcount: $("#cartcount-inp").val()
		};
		$.ajax({
			type: "POST",
			url: "/api/mypage/",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("공지 작성이 완료되었습니다.");
			location.href = "/notice";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
}
index.init();