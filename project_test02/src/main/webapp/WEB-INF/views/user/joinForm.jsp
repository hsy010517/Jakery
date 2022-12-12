<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>



<div id="register-container">
	<div class="wrapper register-wrapper">
		<a class="register-logo" href="/"><span style="color: #ffc730;">J</span><span
			style="color: #303030;">akery</span></a>
		<form action="/action_page.php" onsubmit="return false"
			class="register-form">
			<div class="register-div">
				<div class="registerform-label">
					<label for="userid">아이디 <span style="color: #ffc730;">*</span></label>

					<label for="username">이름 <span style="color: #ffc730;">*</span></label>
					<label for="password">비밀번호 <span style="color: #ffc730;">*</span></label>
					<label for="password">비밀번호 확인 <span style="color: #ffc730;">*</span></label>
					<label for="email">메일 <span style="color: #ffc730;">*</span></label>
					<label for="address">주소 <span style="color: #ffc730;">*</span></label>
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
					<input type="text" class="registerform-control"
						placeholder="Enter Your Address" id="address">
				</div>
				<div class="registerform-check">
					<button type="button" class="btn-idCheck">중복 확인</button>
				</div>
			</div>
		</form>
		<button type="submit" class="btn-register" id="btn-save"
			onclick="checkValue()">Join up&nbsp&nbsp⊙</button>
		<a href="" class="sns-login-link">소셜 네트워크로 쉽게 로그인하기 > </a>

	</div>
</div>



<script src="/js/user.js"></script>
<br />
<%@ include file="../layout/footer.jsp"%>
