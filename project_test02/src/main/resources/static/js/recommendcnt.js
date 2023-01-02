

document.getElementById('checkboxId').onchange = function() {
   if($("#checkboxId").is(":checked")){
   $("#freeboardbtn-recommendSave").show();
   $("#freeboardbtn-recommendDelete").hide();

} else{
	$("#freeboardbtn-recommendDelete").show();
    $("#freeboardbtn-recommendSave").hide();
}
   if($("#checkboxId").is(":checked")){
   $("#freeboardbtn-recommendSave").show();
   $("#freeboardbtn-recommendDelete").hide();

} else{
	$("freeboardbtn-recommendDelete").show();
    $("#freeboardbtn-recommendSave").hide();
}
   
   /*if(checkboxcheck.checked==true){
	 checkboxcheck.checked= !checkboxcheck.checked;
	 recommendSave.style.display
	}else if(checkboxcheck.checked==false){
		checkboxcheck.checked= !checkboxcheck.checked;
	}
  */
   
}
/*checkboxcheck.checked;*/
let recommend={

	
	init: function(){
		
		$("#freeboardbtn-recommendSave").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.recommendSave();
		});
		$("#freeboardbtn-recommendDelete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.recommendDelete();
			
		});
	},
recommendSave: function(){
		let recommendfreeboardnum= $("#recommendfreenum").val();
		//alert('user의 save함수 호출됨');
		let data={
			recommenduserid: $("#recommenduserid").val(),

		};
		$.ajax({ 
			type:"POST",
			url:"/api/freeboard/"+recommendfreeboardnum+"/recommend",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("추천 완료되었습니다.");
			location.href="/auth/freeboard/"+recommendfreeboardnum;
		}).fail(function(error){
			alert("잘못된 접근입니다")
			alert(JSON.stringify(error));
		});
	},
recommendDelete: function(){
		let recommendfreeboard= $("#recommendfreenum").val();
		let recommendid= $("#recommendid").val();
		$.ajax({ 
			type:"DELETE",
			url:"/api/freeboard/"+recommendid+"/recommend",
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/auth/freeboard/"+recommendfreeboard;
		}).fail(function(error){
			alert("잘못된 접근입니다")
			alert(JSON.stringify(error));
		});
	},
	
	
}	
recommend.init();