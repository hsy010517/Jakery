let reply={
	init: function(){
		$("#freeboardreplybtn-save").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.replySave();
		});
		/*$("#freeboardreplybtn-delete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.replyDelete();
		})*/
		
	},
	replySave: function(){
		
		let freereplynum=$("#freereplynum").val();
		let data={
			freereplycontent: $("#freereplycontent").val(),
			username: $("#replyuser").val(),
		};
		console.log(data);
		console.log(freereplynum);
		$.ajax({ 
			type:"POST",
			url:"/api/freeboard/"+freereplynum+"/freereply",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글 작성이 완료되었습니다.");
			location.href="/auth/freeboard/"+freereplynum;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	
	//reply num으로 삭제
	
	replyDelete: function(deletenum){
		/*let deletenum=$("#deletenum").text();*/
		$.ajax({ 
			type:"DELETE",
			//reply num
			url:"/api/freeboard/freereply/"+deletenum,
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

