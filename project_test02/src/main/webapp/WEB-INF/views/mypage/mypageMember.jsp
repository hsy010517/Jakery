<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <link rel="stylesheet" type="text/css" href="/css/mypage-memberForm.css">

<div id="mypage-register-container">
  <div class="mypage-register-wrapper">
    <a class="mypage-register-logo" href="/"><span style="color: #ffc730;">M</span><span
        style="color: #303030;">EMBER</span></a>
    <form action="/action_page.php" onsubmit="return false" class="mypage-register-form">
      <div class="mypage-register-div">
        <div class="mypage-registerform-label">
          <label for="userid">아이디 </label>
          <label for="username">이름 </label>
          <label for="password">비밀번호 </label>
          <label for="email">메일 </label>
          <label for="postnum">우편번호 </label>
          <label for="address">주소</label>
          <label for="subaddress">상세주소</label>
          <label for="subaddress">마일리지</label>
        </div>
        <div class="mypage-registerform-input">
          <input type="text" class="mypage-registerform-control" value="${principal.user.userid}" id="userid" disabled> <input
            type="text" class="mypage-registerform-control"  value="${principal.user.username}" id="username" disabled> <input
            type="password" class="mypage-registerform-control" value="" id="password" disabled> 
            <input  type="email" class="mypage-registerform-control" value="${principal.user.email}" id="email" disabled>
            <input type="text" class="mypage-registerform-control" name="zipcode" value="${principal.user.postnum}" readonly id="postnum" disabled>
            <input type="text" class="mypage-registerform-control" name="address" value="${principal.user.address}" readonly id="address" disabled>
            <input type="text"  class="mypage-registerform-control"  name="address_detail" value="${principal.user.subaddress}" id="subaddress" disabled>
            <input type="number"  class="mypage-registerform-control"  name="number" id="number" value ="1234" disabled>

        </div>
      </div>
    </form>
    <div class="mypage-register-btn-div">
    <a href="/auth/updateForm"><button type="submit" class="mypage-btn-register" id="btn-update">수정하기</button></a>
    <a href="/logout" class="mypage-btn-logout" id="">로그아웃</a>
  </div>
  </div>
</div>
            <br />