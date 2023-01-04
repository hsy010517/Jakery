<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>



<div id="register-container">
	<div class="wrapper register-wrapper">
		<a class="register-logo" href="/"><span style="color: #ffc730;">J</span><span
			style="color: #303030;">Jakery</span></a>
		<form class="register-form" name="joinForm" onsubmit="return checkLogin()">
			<div class="register-div">
				<div class="registerform-label">
					<label for="userid">아이디 <span style="color: #ffc730;">*</span></label>
					<label for="username">이름 <span style="color: #ffc730;">*</span></label>
					<label for="password">비밀번호 <span style="color: #ffc730;">*</span></label>
					<label for="password">비밀번호 확인 <span style="color: #ffc730;">*</span></label>
					<label for="email">메일 <span style="color: #ffc730;">*</span></label>
					<label for="tel2" class="title">우편번호</label> <label for="addr"
						class="title">주소</label> <label for="addr" class="title">상세
						주소</label>
				</div>
				<div class="registerform-input">
					<input type="text" class="registerform-control"
						placeholder="Enter UserID" id="userid"> <input type="text"
						class="registerform-control" placeholder="Enter Username"
						id="username"> <input type="password"
						class="registerform-control" placeholder="Enter password"
						id="password"> <input type="password"
						class="registerform-control" placeholder="Enter password again"
						id="passwordcheck"> <input type="email"
						class="registerform-control" placeholder="Enter email" id="email">



					<input type="text" name="zipcode" id="postnum" size="7" readonly
						placeholder="Post Number: Zip code">
					<button type="button" class="btn-postnum" value=""
						onclick="kakaopost()">검색</button>
					<input type="text" name="address" id="address"
						placeholder="Address"> <input type="text"
						name="address_detail" id="subaddress" placeholder="Detail Address" />
				</div>
				<div class="registerform-check">
					<input type="button" class="registerbtn-idCheck" id="idCheck"
						value="중복 확인">
				</div>
			</div>
		</form>
			<input type="button" class="btn-register" id="registerbtn-save"
				value="Join⊙">
<!-- kakao address api script		
		<a href="" class="sns-login-link">소셜 네트워크로 쉽게 로그인하기 > </a>
 -->
	</div>
</div>







<!-- kakao address api script
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function kakaopost() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#postnum").value = data.zonecode;
				document.querySelector("#address").value = data.address
			}
		}).open();
	}
	$(document).ready(function() {
		$("#myDropdown").change(function() {
			var selectedValue = $(this).val();
			$("#txtBox").val(selectedValue);
		});
	});

	function checkLogin() {
		var id = document.getElementById("userid");
		var pw = document.getElementById("password");
		var username = document.getElementById("username");
		var pwchk = document.getElementById("passwordcheck");
		var email = document.getElementById("email");
		var postnum = document.getElementById("postnum");

		var re = /^[a-zA-Z0-9]{4,12}$/;

		var re2 = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		if (id.value == "") {
			Swal.fire({
				icon : 'warning',
				title : '아이디를 입력해 주세요.'
			});
			id.focus();
			return false;
		}

		if (re.test(id.value) == false) {
			Swal.fire({
				icon : 'warning',
				title : "아이디는 영문과 숫자를 조합한 4 ~ 12자 사이로 입력해주세요."
			});
			id.focus();
			return false;
		}

		if (username.value == "") {
			Swal.fire({
				icon : 'warning',
				title : '이름을 입력해 주세요.'
			});
			username.focus();
			return false;
		}

		if (pw.value == "") {
			Swal.fire({
				icon : 'warning',
				title : '비밀번호를 입력해 주세요.'
			});
			pw.focus();
			return false;
		}

		if (re.test(id.value) == false) {
			Swal.fire({
				icon : 'warning',
				title : "비밀번호는 영문과 숫자를 조합한 4 ~ 12자 사이로 입력해주세요"
			});
			id.focus();
			return false;
		}

		if (pwchk.value == "") {
			Swal.fire({
				icon : 'warning',
				title : '비밀번호를 재입력해 주세요.'
			});
			pwchk.focus();
			return false;
		}

		if (joinForm.password.value != joinForm.passwordcheck.value) {
			Swal.fire({
				icon : 'warning',
				title : '재입력된 비밀번호가 같지 않습니다.'
			});
			pwchk.focus();
			return false;
		}

		if (email.value == "") {
			Swal.fire({
				icon : 'warning',
				title : '이메일을 입력해 주세요.'
			});
			email.focus();
			return false;
		}

		else if (postnum.value == "") {
			Swal.fire({
				icon : 'warning',
				title : '우편번호를 입력해 주세요.'
			});
			postnum.focus();
			return false;
		} else {


		}
		
		return false;

	}
</script>
 -->

<script src="/js/user.js"></script>
<br />
<%@ include file="../layout/footer.jsp"%>