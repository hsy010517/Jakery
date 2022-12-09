<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form action="/action_page.php" onsubmit="return false">
		<div class="form-group">
			<label for="userid">UserID</label> <input type="text"
				class="form-control" placeholder="Enter UserID" id="userid">
		</div>

		<img id="id_check_sucess" style="display: none;">
		<div class="form-group">
			<label for="password">Password</label> <input type="password"
				class="form-control" placeholder="Enter password" id="password">
		</div>
		<div class="form-group">
			<label for="password">password check</label> <input type="password"
				class="form-control" placeholder="Enter password" id="passwordcheck">
		</div>
		<div class="form-group">
			<label for="username">Username</label> <input type="text"
				class="form-control" placeholder="Enter Username" id="username">
		</div>

		<div class="form-group">
			<label for="email">Email</label> <input type="email"
				class="form-control" placeholder="Enter email" id="email">
		</div>
		<div class="form-group">
			<label for="address">Address</label> <input type="text"
				class="form-control" placeholder="Enter Your Address" id="address">
		</div>


	</form>
	<button type="submit" class="btn btn-primary" id="btn-save"
		onclick="checkValue()">회원가입</button>


</div>
<script type="text/javascript">
	function checkValue() {
		
		

		if (!document.getElementById('userid').value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.getElementById('password').value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.getElementById('password').value != document
				.getElementById('passwordcheck').value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		if (!document.getElementById('username').value) {
			alert("이름을 입력하세요.");
			return false;
		}

		if (!document.getElementById('email').value) {
			alert("메일 주소를 입력하세요.");
			return false;
		}

		if (!document.getElementById('address').value) {
			alert("주소를 입력하세요.");
			return false;
		}

		alert("가입에 성공하셨습니다.");
		location.href = "http://localhost:8013/auth/loginForm";

	}

	function goFirstForm() {
		location.href = "http://localhost:8013/auth/joinForm";
	}

	function openIdChk() {

		window.name = "parentForm";
		window.open("user/joinForm.jsp", "chkForm",
				"width=500, height=300, resizable = no, scrollbars = no");
	}
</script>
<script src="/js/user.js"></script>
<br />
<%@ include file="../layout/footer.jsp"%>
