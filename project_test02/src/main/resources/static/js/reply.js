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
		
		let freenum=$("#free-num").val();
		let data={
			content: $("#content").val(),
			replynum: $("#replynum").val(),
			user: $("#reply-user").val(),
		};
		console.log(data);
		console.log(freenum);
		$.ajax({ 
			type:"POST",
			url:"/api/freeboard/"+freenum+"/reply",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글 작성이 완료되었습니다.");
			location.href="/auth/freeBoard";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	
	//reply num으로 삭제
	
	replyDelete: function(deletenum){
		/*let deletenum=$("#deletenum").text();*/
		alert(deletenum);

		$.ajax({ 
			type:"DELETE",
			//reply num
			url:"/api/freeboard/reply/"+deletenum,
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
	/*$(document).on("click", "#freeboardreplybtn-delete", function(replynum){
		$.ajax({ 
			type:"DELETE",
			url:"/api/freeboard/reply/"+replynum,

			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글이 삭제 되었습니다.");
			console.log(replynum)
			location.href="/auth/freeboard";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	})
	
	$(document).on("click", "#freeboardreplybtn-save", function(){
		let freenum=$("#free-num").val();
		let data={
			content: $("#content").val(),
			replynum: $("#replynum").val(),
			user: $("#reply-user").val(),
		};
		console.log(data);
		console.log(freenum);
		$.ajax({ 
			type:"POST",
			url:"/api/freeboard/"+freenum+"/reply",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("댓글 작성이 완료되었습니다.");
			location.href="/auth/freeBoard";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	});*/
