<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp"%>
    
  <div id="orderForm-container">
    <div class="wrapper orderForm-wrapper">
      <div class="orderForm-content">
        <div class="orderForm-content-item orderForm-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#303030;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <span>주문서</span>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <h1 class="orderForm-title"><span style="color: #ffc730;">O</span>RDER <span style="color: #ffc730;">F</span>ORM</h1>
      <form class="orderForm-main">
        <hr>

        <fieldset class="orderForm-productfield">
          <legend class="legend">주문 정보</legend>
          <ul>
            <li class="select-li">
              <label class="select-dp orderForm-main-label">배송 여부<span style="color:#ffc730;"> *</span></label>
              <label for="select-pickup" class="select-pickup select-dp-list"><input type="radio" name="select-dp" id="select-pickup" value="예약" onchange="setDisplay()">픽업 예약(방문 포장)</label>
              <label for="select-delivery" class="select-delivery select-dp-list" ><input type="radio" name="select-dp" id="select-delivery" value="택배" onchange="setDisplay()">택배 배송 </label>
            </li>
            <li class="product-li">
              <label class="orderForm-main-label">상품 정보</label>
              <table class="orderFormList__list dummy">
                <thead>
                  <tr>
                    <th style="width: 5%;font-weight:500;" class="orderFormList_th dummy">No.</th>
                    <th style="width: 40%;">상품정보</th>
                    <th style="width: 24%;">주문정보</th>
                    <th style="width: 12%;">상품금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="orderFormList__list__detail">
                    <td>
                      <div class="orderFormList_num">1</div>
                    </td>
                    <td class="orderFormList-main">
                      <img class="orderFormList-img" src="">
                      <div class="orderFormList-title">
                        <span class="orderFormList-sub">1줄 설명</span>
                        <p class="orderFormList-name">상품명상품명</p>
                        <sapn class="orderFormList-price">99,999원</sapn>
                      </div>
                    </td>
                    <td>
                      <div class="orderFormList__list__option">
                        <p class="orderFormList-option-num"> 13개</p>
                      </div>
                    </td>
                    <td><div class="orderFormList-price2">116,620원</div><br></td>
                  </tr>
                  <tr class="orderFormList__list__detail">
                    <td>
                      <div class="orderFormList_num">1</div>
                    </td>
                    <td class="orderFormList-main">
                      <img class="orderFormList-img" src="">
                      <div class="orderFormList-title">
                        <span class="orderFormList-sub">1줄 설명</span>
                        <p class="orderFormList-name">상품명상품명</p>
                        <sapn class="orderFormList-price">99,999원</sapn>
                      </div>
                    </td>
                    <td>
                      <div class="orderFormList__list__option">
                        <p class="orderFormList-option-num"> 13개</p>
                      </div>
                    </td>
                    <td><div class="orderFormList-price2">116,620원</div><br></td>
                  </tr>
                </tbody>
              </table>
            </li>
          </ul>

        </fieldset>
        <hr>

        <fieldset class="orderForm-field orderForm-userfield">
          <legend class="legend">개인 정보</legend>
          <ul>
            <div class="orderForm-userfield-label-div">
            <li><label for="orderForm_username" class="title" >성명</label></li>
            <li><label for="orderForm_usertell" class="title">전화번호</label></li>
          </div>
          <div  class="orderForm-userfield-input-div">
            <li><input type="text" id="orderForm_username" value="principal 받아와서 고정" disabled></li>
            <li><input type="tel" id="orderForm_usertell" value="principal 받아와서 고정" disabled></li>
          </div>
          </ul>
        </fieldset>


        <fieldset id="orderForm-deliveryfield" class="orderForm-field orderForm-deliveryfield">
          <legend class="legend">배송지 정보</legend>
          <button type="button" value="주소 가져오기" class="delivery-btn">주소 불러오기</button>
          <ul>
            <div class="orderForm-deliveryfield-label-div">
            <li><label for="tel2" class="title">우편번호</label></li>
            <li><label for="addr" class="title">주소</label></li>
            <li><label for="addr" class="title">상세 주소</label></li>
            </div>
            <div class="orderForm-deliveryfield-input-div">
            <li><input type="text" name="zipcode" id="zipcode" size="7"
              readonly> <button type="button"
              onclick="kakaopost()" class="delivery-btn dummy">검색</button></li> 
            <li><input type="text" name="address" id="address"  style="width: 350px;"></li>
            <li><input type="text" name="address_detail" /></li>
          </div>
          </ul>
          <div class="orderForm-deliveryfield-memo-div">
            <li><label for="comment" class="delivertfield-memo-title" >배송메모</label>              
            </li>
            <div>
              <select id="myDropdown">
                <option value="배송 시 미리 연락 부탁드립니다." label="배송 시 미리 연락 부탁드립니다.">배송 시 미리 연락 부탁드립니다.</option>
                <option value="부재 시 문 앞에 놓고 가주세요." label="부재 시 문 앞에 놓고 가주세요.">부재 시 문 앞에 놓고 가주세요.</option>
                <option value="부재 시 경비실에 놓고 가주세요." label="부재 시 경비실에 놓고 가주세요.">부재 시 경비실에 놓고 가주세요.</option>
                <option value="부재 시 택배 보관함에 놓고 가주세요." label="부재 시 택배 보관함에 놓고 가주세요.">부재 시 택배 보관함에 놓고 가주세요.</option>
              </select>
              <li><textarea rows="5" cols="44" id="txtBox" type="text"></textarea></li>
            </div>
          </div>
        </fieldset>

        <fieldset  id="orderForm-reservation" class="orderForm-field orderForm-reservation">
          <legend class="legend">예약 정보</legend>
          <table id="reservation_time">
            <tr>
              <td class="top" align="left">시간선택</td>
              <td class="top" align="right"><button class="btnTime" type="button" onclick="tableinit()">초기화</button></td>
            </tr>
            <tr>
              <td>
                <table id="calendar">
                  <tr>
                    <td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
                    <td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
                    <td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
                  </tr>
                  <tr>
                    <td align="center"><font color ="#F79DC2">일</td>
                    <td align="center">월</td>
                    <td align="center">화</td>
                    <td align="center">수</td>
                    <td align="center">목</td>
                    <td align="center">금</td>
                    <td align="center"><font color ="skyblue">토</td>
                  </tr>
                </table>
              </td>
              <td>
                <table id = "timeTable">	</table>
              </td>
            </tr>
            <tr> 
              <td class="top" align="left" colspan="2">예약일시</td>
            </tr>
            <tr>
              <td class="content" colspan="2" align="left">
                <input id="selectedDate" style="border:none; width:100px"  name="selectedDate" value="" readonly="readonly" ></input>
                <input id="selectedTime" style="border:none"  name="selectedTime" value="" readonly="readonly"></input>
              </td>
            </tr>

          </table>
        </fieldset>
        <hr>

        <fieldset class="orderForm-field orderForm-totalfield">
          <div class="orderFormList__total">
            총 결제 금액 <br>
            <span><span style="color:#ffc730;">9,999,999원 + 배송비 2,500</span> = 9,999,999원</span>
            <input type="hidden" value="위에서총결제금액받아와서연동">
          </div>
        </fieldset>
        <div class="order-btn-div">
          <button type="reset" value="다시 작성" class="orderForm-reset-btn dummy">다시 작성</button>
          <button type="submit" value="주문하기" class="orderForm-submit-btn dummy">주문하기</button>
        </div>
      </form>
    </div>
    </div>
  </div>
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script type="text/javascript" src="/js/orderForm.js"></script>
  <%@ include file="../layout/footer.jsp"%>