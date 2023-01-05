

/*document.getElementById('checkboxId').onchange = function() {
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
   */
   /*if(checkboxcheck.checked==true){
	 checkboxcheck.checked= !checkboxcheck.checked;
	 recommendSave.style.display
	}else if(checkboxcheck.checked==false){
		checkboxcheck.checked= !checkboxcheck.checked;
	}
  */
   
//}
/*checkboxcheck.checked;*/
let recommend={

	
	init: function(){
		
		$("#freeboardbtn-recommendSave").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.recommendSave();
		});
		/*
		$("#freeboardbtn-recommendDelete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.recommendDelete();
			
		});*/
	},
recommendSave: function(){
		let recommendfreeboardnum= $("#recommendfreenum").val();
		//alert('recommendSave 함수 호출됨');
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
			//resp.data
			let recommendtest =$("#recommendtest");
			let recommendtest2 =$("#recommendtest2");
			recommendtest.hide();
			recommendtest2.show();
			location.href = "/auth/freeboard/"+recommendfreeboardnum;
			}).fail(function(error){
			alert("잘못된 접근입니다")
			alert(JSON.stringify(error));
		});
	},

	
}	
function recommendDelete(recommendfreeboardnum){
		/*let recommendfreeboard= $("#recommendfreenum").val();
		let recommendid= $("#recommendid").val();*/
		console.log(recommendfreeboardnum);
		$.ajax({ 
			type:"DELETE",
			url:"/api/freeboard/"+recommendfreeboardnum+"/recommend",
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			let recommendtest =$("#recommendtest");
			let recommendtest2 =$("#recommendtest2");
			recommendtest.show();
			recommendtest2.hide();
			location.href = "/auth/freeboard/"+recommendfreeboardnum;
		}).fail(function(error){
			alert("잘못된 접근입니다")
			alert(JSON.stringify(error));
		});
	}
	
recommend.init();