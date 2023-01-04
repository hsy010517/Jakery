var index = {
	init: function() {
		$("#registerbtn-save").on("click", () => {
			this.save();
		});

		$("#registerbtn-update").on("click", () => {
			this.update();
		});
		$("#idCheck").on("click", () => {
			this.idcheck();
		});

	},
	save: function() {
		let data = {
			userid: $("#userid").val(),
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val(),
			address: $("#address").val(),
			postnum: $("#postnum").val(),
			subaddress: $("#subaddress").val()
		};

		$.ajax({
			type: "POST",
			url: "/auth/joinProc",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(data, status) {
			console.log(data);
			alert("회원가입이 완료되었습니다.");
			location.href = "/";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},


	idcheck: function() {
		let data={
			userid : $("#userid").val()
		};
	
		$.ajax({
			type: 'POST',
			url: "/idcheck.do",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8"


		}).done(function(resp) {
			console.log(resp)
			alert("호출 성공");

			if (data.cnt > 0) {

				Swal.fire({
					icon: 'warning',
					title: '이미 존재하는 아이디입니다.',
					text: "다른 아이디를 입력해 주세요.",
				});

			} else {

				Swal.fire({
					icon: 'success',
					title: '사용 가능한 아이디입니다.',
				});
			}

		}).fail(function(error) {
			alert("error:" + error);
		});
	}

}
index.init();
