<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



 <div id="orderForm-container">
    <div class="wrapper orderForm-wrapper">
      <form>
        <fieldset>
          <legend>개인 정보</legend>
          <ul>
            <li>
              <label for="uname" class="title" >성명</label>
              <input type="text" id="orderForm_username" value="principal 받아와서 고정" disabled>
            </li>
            <li>
              <label for="tel1" class="title">전화번호</label>
              <input type="tel" id="orderForm_usertell" value="principal 받아와서 고정" disabled>
            </li>
          </ul>
        </fieldset>
        <fieldset>
          <legend>배송지 정보</legend>
          <ul>
            <li>
              <label for="tel2" class="title">우편번호</label>
              <input type="text" name="zipcode" id="zipcode" size="7"
              readonly> 
              <input type="button" value="우편번호찾기"
              onclick="kakaopost()">
            </li>
            <li>
              <label for="addr" class="title">주소</label>
              <input type="text" name="address" id="address">
              <label for="addr" class="title">상세 주소</label>
              <input type="text" name="address_detail" /></li>

            <li>
              <label for="comment" class="title">배송메모</label>
              <select id="myDropdown">
                <option value="jan" label="2000">January</option>
                <option value="apr" label="2500">April</option>
                <option value="jul" label="2000">July</option>
                <option value="oct" label="2500">October</option>
              </select>
              <div>
                <textarea rows="5" cols="20" id="txtBox" type="text"></textarea>
              </div>
            </li>
          </ul>
        </fieldset>
        <fieldset>
          <legend>주문 정보</legend>
          <ul>
            <li>
              <label><input type="checkbox">과테말라 안티구아 (100g) </label>
              <label><input type="number" value="0" min="0" max="5">개 </label>
            </li>
            <li>
              <label><input type="checkbox">인도네시아 만델링 (100g) </label>
              <label><input type="number" value="0" min="0" max="5">개 </label>
            </li>
            <li>
              <label><input type="checkbox">탐라는도다(블렌딩) (100g) </label>
              <label><input type="number" value="0" min="0" max="5">개 </label>
            </li>
          </ul>
        </fieldset>
        <div class="centered">
          <input type="submit" value="주문하기">
          <input type="reset" value="다시 작성">
        </div>
      </form>
    </div>
  </div>


  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
  function kakaopost() {
      new daum.Postcode({
          oncomplete: function(data) {
             document.querySelector("#zipcode").value = data.zonecode;
             document.querySelector("#address").value =  data.address
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




</body>
</html>