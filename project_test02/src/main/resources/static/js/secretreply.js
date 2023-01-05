let reply={
	init: function(){
		$("#secretboardreplybtn-save").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.replySave();
		});
		/*$("#freeboardreplybtn-delete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.replyDelete();
		})*/
		
	},
	replySave: function(){
		
		let secretnum=$("#secretnum").val();
		let data={
			secretreplycontent: $("#secretreplycontent").val(),
			username: $("#secretreplyuser").val(),
		};
		$.ajax({ 
			type:"POST",
			url:"/api/secretboard/"+secretnum+"/secretreply",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글 작성이 완료되었습니다.");
			location.href="/secretboard/secretBoard";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	
	//reply num으로 삭제
	
	replyDelete: function(secretdeletenum){
		/*let deletenum=$("#deletenum").text();*/


		$.ajax({ 
			type:"DELETE",
			//reply num
			url:"/api/scretboard/secretreply/"+secretdeletenum,
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글이 삭제 되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	}
}
reply.init();
