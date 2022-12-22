<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

  <div id="registerUpdateForm-container">
    <div class="registerUpdateForm-wrapper">
      <a class="mypage-register-logo" href="/"><span style="color: #ffc730;">M</span><span
          style="color: #303030;">EMBER</span></a>
      <form action="/action_page.php" onsubmit="return false" class="mypage-register-form">
        <div class="mypage-register-div">
          <div class="mypage-registerform-label">
            <label for="userid">아이디<span style="color: #ffc730;"> *</span> </label>
            <label for="username">이름<span style="color: #ffc730;"> *</span> </label>
            <label for="password">비밀번호<span style="color: #ffc730;"> *</span> </label>
            <label for="subaddress">비밀번호 확인<span style="color: #ffc730;"> *</span></label>
            <label for="email">메일<span style="color: #ffc730;"> *</span> </label>
            <label for="postnum">우편번호<span style="color: #ffc730;"> *</span> </label>
            <label for="address">주소<span style="color: #ffc730;"> *</span></label>
            <label for="subaddress">상세주소</label>


          </div>
          <div class="mypage-registerform-input">
            <input type="text" class="mypage-registerform-control" value="입력된 아이디, 수정불가" id="userid" disabled>
            <input type="text" class="mypage-registerform-control" value="입력된 이름, 수정불가" id="username" disabled
              autofocus>
            <input type="password" class="mypage-registerform-control" id="password">
            <input type="password" class="mypage-registerform-control" id="password_chk">
            <input type="email" class="mypage-registerform-control" value="입력된 이메일" id="email">
            <input type="text" class="mypage-registerform-control" name="zipcode" value="입력된 우편번호" id="postnum">
            <input type="text" class="mypage-registerform-control" name="address" value="입력된 주소"
              placeholder="Enter Your Address" id="address">
            <input type="text" class="mypage-registerform-control" name="address_detail" value="입력된 주소" id="subaddress">
            <button type="button" class="btn-postnum2" value="검색" onclick="kakaopost()">검색</button>
          </div>
        </div>
      </form>
      
      <div class="mypage-register-btn-div">
        <button type="submit" class="mypage-btn-register" id="btn-delete">회원탈퇴</button>
        <button type="submit" class="mypage-btn-register" id="btn-update">수정하기</button>
        <a href="javascript:window.history.back();" class="mypage-btn-logout" id="">돌아가기</a>
      </div>
    </div>
  </div>

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    function kakaopost() {
      new daum.Postcode({
        oncomplete: function (data) {
          document.querySelector("#postnum").value = data.zonecode;
          document.querySelector("#address").value = data.address
        }
      }).open();
    };
  </script>

<%@ include file="../layout/footer.jsp" %>