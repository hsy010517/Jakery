let index = {
	init: function() {
		$("#noticebtn-save").on("click", () => {
			this.save();
		});
		$("#noticebtn-delete").on("click", () => {
			this.deleteByNoticenum();
		});
		$("#noticebtn-update").on("click", () => {
			this.updateByNoticenum();
		});
	},
	save: function() {
		let data = {
			noticetitle: $("#noticetitle").val(),
			noticecontent: $("#noticecontent").val()
		};
		console.log(data);
		$.ajax({
			type: "POST",
			url: "/api/notice",
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
	deleteByNoticenum: function() {
		var noticenum = $("#noticenum").text();
		$.ajax({
			type: "DELETE",
			url: "/api/notice/" + noticenum,
			dataType: "json"
		}).done(function(resp) {
			alert("공지가 삭제되었습니다.");
			location.href = "/notice";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	updateByNoticenum: function() {
		let noticenum = $("#noticenum").val();
		let data = {
			noticetitle: $("#noticetitle").val(),
			noticecontent: $("#noticecontent").val()
		};
		console.log(data);
		console.log(noticenum);
		$.ajax({
			type: "PUT",
			url: "/api/notice/" + noticenum,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("수정이 완료되었습니다.");
			location.href = "/notice/"+noticenum;
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
}
index.init();