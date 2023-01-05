

let index2 = {

	init: function() {

		$("#productbtn-save").on("click", () => {
			this.save();
		});
		$("#productbtn-update").on("click", () => {
			this.updateByPronum();
		});
		$("input[type='file']").on("change", () => {
		});
		 $("#AdminDeletecheckbox").on("click", () => {
         this.AdminDeletecheckbox();
      });
	},

	save: function() {
		var categories = document.getElementById("categories");
		var categoriesValue = (categories.options[categories.selectedIndex].value);

		var prodate = document.getElementById("prodate");
		var prodateValue = (prodate.options[prodate.selectedIndex].value);

		var prosave = document.getElementById("prosave");
		var prosaveValue = (prosave.options[prosave.selectedIndex].value);

		let data = {
			categories: categoriesValue,
			proname: $("#proname").val(),
			proprice: $("#proprice").val(),
			proamount: $("#proamount").val(),
			prodate: prodateValue,
			prosave: prosaveValue,
			prodesc1: $("#prodesc1").val(),
			prodesc2: $("#prodesc2").val(),
			procontent: $("#procontent").val()
		};


		var mainfileObj = $('#productimgfile-main')[0].files[0];
		var listfileObj = $('#productimgfile-list')[0].files[0];
		var infofileObj = $('#productimgfile-info')[0].files[0];
		var formData = new FormData();
		formData.append('file', mainfileObj);
		formData.append('file2', listfileObj);
		formData.append('file3', infofileObj);
		formData.append('key', new Blob([JSON.stringify(data)], { type: "application/json; charset=utf-8" }));
		for (var pair of formData.entries()) {
			console.log(pair[0] + ', ' + pair[1]);
		}


		$.ajax({
			type: "POST",
			url: "/api/product",
			method: "post",

			data: formData,
			contentType: false,
			processData: false,
			cache: false,
			enctype: 'multipart/form-data',
			dataType: "json",
			/*data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",*/
			/*dataType: "json"*/
		}).done(function(resp) {
			alert("상품이 업로드되었습니다.");
			location.href = "/auth/product";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	
	   AdminDelete: function() {
      let data = {
         userid: $("#delete").val(),
      };

      console.log(data.userid);

      Swal.fire({
         title: '이 상품을 삭제하시겠습니까?',
         icon: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#3085d6',
         confirmButtonText: '돌아가기',
         cancelButtonText: '삭제하기'

      }).then((result) => {
         if (result.isConfirmed) {

         } else {
            $.ajax({
               type: "POST",
               url: "/delete",
               data: JSON.stringify(data),
               contentType: "application/json; charset=utf-8",
               dataType: "json"
            }).done(function(data) {
               alert("회원 삭제를 완료했습니다");
               location.reload();
            }).fail(function(error) {
               alert(JSON.stringify(error));
            });
         }
      })
   },
	
	updateByPronum: function() {
		let pronum= $("#pronum").val();
		var categories = document.getElementById("categories");
		var categoriesValue = (categories.options[categories.selectedIndex].value);

		var prodate = document.getElementById("prodate");
		var prodateValue = (prodate.options[prodate.selectedIndex].value);

		var prosave = document.getElementById("prosave");
		var prosaveValue = (prosave.options[prosave.selectedIndex].value);

		let data = {
			categories: categoriesValue,
			proname: $("#proname").val(),
			proprice: $("#proprice").val(),
			proamount: $("#proamount").val(),
			prodate: prodateValue,
			prosave: prosaveValue,
			prodesc1: $("#prodesc1").val(),
			prodesc2: $("#prodesc2").val(),
			procontent: $("#procontent").val()
		};


		var mainfileObj = $('#productimgfile-main')[0].files[0];
		var listfileObj = $('#productimgfile-list')[0].files[0];
		var infofileObj = $('#productimgfile-info')[0].files[0];
		var formData = new FormData();
		formData.append('file', mainfileObj);
		formData.append('file2', listfileObj);
		formData.append('file3', infofileObj);
		formData.append('key', new Blob([JSON.stringify(data)], { type: "application/json; charset=utf-8" }));
		for (var pair of formData.entries()) {
			console.log(pair[0] + ', ' + pair[1]);
		}


		$.ajax({
			type: "PUT",
			url: "/api/product/" + pronum,
			method: "put",

			data: formData,
			contentType: false,
			processData: false,
			cache: false,
			enctype: 'multipart/form-data',
			dataType: "json",
			/*data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",*/
			/*dataType: "json"*/
		}).done(function(resp) {
			alert("상품이 수정되었습니다.");
			location.href = "/auth/product";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
}

function deleteByPronum(pronum) {
	console.log(pronum);
	$.ajax({
		type: "DELETE",
		url: "/api/product/" + pronum,
		dataType: "json"
	}).done(function(resp) {
		alert("상품이 삭제되었습니다.");
		location.href = "/auth/product";
	}).fail(function(error) {
		alert(JSON.stringify(error));
	});
}


index2.init();