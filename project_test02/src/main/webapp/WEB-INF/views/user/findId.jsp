<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<script type="text/javascript" src="/js/useridcheck.js"></script>

<div id="register-container">
	<div class="wrapper register-wrapper">
		<a class="register-logo" href="/"><span style="color: #ffc730;">J</span><span
			style="color: #303030;">akery</span></a>
		<form action="/action_page.php" onsubmit="return false"
			class="register-form" name="frm">
			<div class="register-div">
				<div class="registerform-label">

					<label for="username">이름 <span style="color: #ffc730;">*</span></label>
					
				</div>
				<div class="registerform-input">
						<input type="text"
						class="registerform-control" placeholder="Enter Username"
						id="username">

						<input type="hidden" name="rename" size="20">
				</div>
				<div class="registerform-check">
					<button type="button" class="btn-idCheck" onclick="idCheck()" id="idcheck">중복 확인</button>
				</div>
			</div>
		</form>
		<button type="submit" class="btn-register" id="btn-save"
			onclick="checkValue()">Find ID&nbsp&nbsp⊙</button>
		<a href="" class="sns-login-link">소셜 네트워크로 쉽게 로그인하기 > </a>

	</div>
</div>



<script src="/js/useridcheck.js"></script>
<br />
<%@ include file="../layout/footer.jsp"%>
