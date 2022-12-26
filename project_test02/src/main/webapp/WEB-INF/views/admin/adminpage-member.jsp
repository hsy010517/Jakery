<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="adminpage-register-container">
  <div class="adminpage-register-wrapper">
    <a class="adminpage-register-logo" href="/"><span style="color: #ffc730;">M</span><span
        style="color: #303030;">EMBER</span></a>
    <form action="/action_page.php" onsubmit="return false" class="adminpage-register-form">
      <div class="adminpage-register-div">
        <div class="adminpage-registerform-label">
          <label for="userid">아이디 </label>
          <label for="username">이름 </label>
          <label for="password">비밀번호 </label>
          <label for="email">메일 </label>
          <label for="postnum">우편번호 </label>
          <label for="address">주소</label>
          <label for="subaddress">상세주소</label>
          <label for="subaddress">마일리지</label>


        </div>
        <div class="adminpage-registerform-input">
          <input type="text" class="adminpage-registerform-control" value="입력된 아이디" id="userid" disabled> <input
            type="text" class="adminpage-registerform-control"  value="입력된 이름"  id="username" disabled> <input
            type="password" class="adminpage-registerform-control" value="입력된 패스워드" id="password" disabled> 
            <input  type="email" class="adminpage-registerform-control" value="입력된 이메일" id="email" disabled>
            <input type="text" class="adminpage-registerform-control" name="zipcode" readonly id="postnum" disabled>
            <input type="text" class="adminpage-registerform-control" name="address" readonly placeholder="Enter Your Address" id="address" disabled>
            <input type="text"  class="adminpage-registerform-control"  name="address_detail" id="subaddress" disabled>
            <input type="number"  class="adminpage-registerform-control"  name="number" id="number" value ="1234" disabled>

        </div>
      </div>
    </form>
    <div class="adminpage-register-btn-div">
      <button type="submit" class="adminpage-btn-register" id="btn-delete">회원탈퇴</button>
    <button type="submit" class="adminpage-btn-register" id="btn-update">수정하기</button>
    <a href="/logout" class="adminpage-btn-logout" id="">로그아웃</a>
  </div>
  </div>
</div>
            <br />