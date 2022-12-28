let recommend={
	init: function(){
		$("#freeboardbtn-recommend").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.recommend();
		});
	},
	recommend: function(){

	let data={
			freenum: $("#freenum").val(),
			userid: $("#userid").val(),
		};
		$.ajax({ 
			type:"POST",
			url:"/auth/freeboard/"+freenum+"/like",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("추천클릭이 완료되었습니다.");
			location.href="/auth/freeboard/"+freenum;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	
	},
}	
recommend.init();