<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>



<div id="register-container">
	<div class="wrapper register-wrapper">
		<a class="register-logo" href="/"><span style="color: #ffc730;">J</span><span
			style="color: #303030;">akery</span></a>
		<form class="register-form" name="joinForm">
			<div class="register-div">
				<div class="registerform-label">
					<label for="userid">아이디 <span style="color: #ffc730;">*</span></label>
					<label for="username">이름 <span style="color: #ffc730;">*</span></label>
					<label for="password">비밀번호 <span style="color: #ffc730;">*</span></label>
					<label for="password">비밀번호 확인 <span style="color: #ffc730;">*</span></label>
					<label for="email">메일 <span style="color: #ffc730;">*</span></label>
					<label for="tel2" class="title">우편번호</label> <label for="addr"
						class="title">주소</label> <label for="addr" class="title">상세						주소</label>
				</div>
				<div class="registerform-input">
					<input type="text" class="registerform-control" name="userid"
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
					<input type="button" class="registerbtn-idCheck"
						id="registerbtn-idCheck" value="중복 확인"> <input
						type="hidden" name="enc" id="idck2" value="0">
				</div>
			</div>
		</form>
		<input type="submit" class="btn-register" id="registerbtn-save"
			value="Join⊙">

	</div>
</div>







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
</script>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>