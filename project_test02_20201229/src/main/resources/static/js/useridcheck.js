function idok(username){ //아이디사용하기
	opener.frm.username.value=document.frm.username.value;
	opener.frm.rename.value=document.frm.username.value;
	self.close();
}

function idCheck(){ //join.jsp
	if(document.frm.username.value.length==0){ //파라미터값이 null이면 안되니까
		alert("아이디를 입력해 주세요.");
		document.frm.username.focus();
		return false;
	}
	
	let url="/auth/idCheck?username="+document.frm.username.value; //회원가입 파라미터 //idCheckServlet +파라미터값(join.jsp)
	window.open(url,"_blank_1","toolbar=no,menubar=no,scrollbar=yes,resizable=no,width=40px,height=200px");
//	window.open(url,"_blank_1");
	//쪼그만 창 url은 띄워질 url
}

