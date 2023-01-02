let index={
	init: function(){
		$("#secretboardbtn-save").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.secretSave();
		});
		$("#secretboardbtn-delete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.secretDeleteById();
		});
		$("#secretboardbtn-update").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.secretUpdate();
		});
		
	},
	secretSave: function(){
		//alert('user의 save함수 호출됨');
		let data={
			secrettitle: $("#secrettitle").val(),
			secretcontent: $("#secretcontent").val()
		};
		$.ajax({ 
			type:"POST",
			url:"/api/secretboard",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	secretUpdate: function(){
		let secretnum=$("#secretnum").val();
		
		let data={
			secrettitle: $("#secrettitle").val(),
			secretcontent: $("#secretcontent").val()
		};
		$.ajax({ 
			type:"PUT",
			url:"/api/secretboard/"+secretnum,
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("수정이 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	secretDeleteById: function(){
		let secretnum=$("#secretnum").val();
		$.ajax({ 
			type:"DELETE",
			url:"/api/secretboard/"+secretnum,
			dataType:"json" 
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
}
index.init();