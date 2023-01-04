<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div id="login-contatiner">
    <div class="wrapper login-wrapper">
      <a class="login-logo" href="/"><span style="color: #ffc730;">J</span><span style="color: #fff;">akery</span></a>
      <form action="/auth/loginProc" method="POST" class="login-form" >
        <div class="login-div">
          <input type="text" class="form-control2" placeholder="ID" id="userid" name="userid">
          <input type="password" class="form-control2" placeholder="PASSWORD" id="password" name="password">
          <div class="btn2">
         	<c:if test="${error eq 'true'}">
					<p class="alert alert-danger">${exception}</p>
			</c:if>
            <button type="submit" id="btn-login">LOGIN&nbsp&nbsp⊙</button>
            <button type="button" id="btn-register"><a>Join up&nbsp&nbsp⊙</a></button>
          </div>
        </div>
      </form>
      <ul class="find">
        <li class="find-control"><a href="/auth/findId">아이디 찾기</a></li>
        <p style="color: rgb(189, 189, 189,0.5);">｜</p>
        <li class="find-control"><a href="/auth/modifyPwd">비밀번호 찾기</a></li>
      </ul>

      <!-- 외부로그인 및 회원가입 -->
      <div class="sns">
        <p class="sns-title"> SNS LOGIN&nbsp&nbsp⊙</p>
        <ul class="sns-list">
          <li class="sns-list-li"><a href="">KaKao</span></a></li>
          <li class="sns-list-li"><a href="">Facebook</span></a></li>
          <li class="sns-list-li"><a href="">Naver</span></a></li>
        </ul>
      </div>
    </div>
  </div><%@ include file="../layout/footer.jsp"%>
  