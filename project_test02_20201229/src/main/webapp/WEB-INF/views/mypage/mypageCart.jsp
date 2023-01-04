<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            
            <!-- 장바구니 페이지 임포트 -->

             <div id="mypage-cart-container">
              <div class="cart">
                <div class="cart__information">
                  <ul class="cart-info-ul">
                    <li class="cart-info-li-first cart-info-li">장바구니 상품은 <b>최대 30일간 저장</b>됩니다.</li>
                    <li class="cart-info-li">가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                    <li class="cart-info-li">주문시 픽업(예약)과 배송(택배) 여부를 반드시 확인해주세요. <b>선택 실수로 인한 환불 및 변경은 불가</b>합니다.</li>
                  </ul>
                </div>
                <a class="mypage-cart-logo" href="/"><span style="color: #ffc730;">C</span><span
                    style="color: #303030;">ART</span></a>
                <table class="cart__list">
                  <form>
                    <thead class="cart__list_thead">
                      <tr class="cart__list_thead_tr">
                        <th style="width: 5%;" class="cart__list_th dummy"><input type="checkbox"  onclick='selectAll(this)'></th>
                        <th style="width: 55%;" class="cart__list_th dummy">상품정보</th>
                        <th style="width: 20%;" class="cart__list_th dummy">주문정보</th>
                        <th style="width: 20%;" class="cart__list_th dummy">상품금액</th>
                      </tr>
                    </thead>
                    <tbody class="cart__list__tbody">
                      <tr class="cart__list__detail">
                        <td>
                          <div><input type="checkbox" name="cart-product" ></div>
                        </td>
                        <td class="cart-main">
                          <img class="cart-img" src="">
                          <div class="cart-title">
                            <span class="cart-sub">1줄 설명</span>
                            <p class="cart-name">상품명상품명</p>
                            <sapn class="cart-price"><span id="mypage-price">1000</span>원</sapn>
                          </div>
                        </td>
                        <td>
                          <div class="cart__list__option">
                            <form name="product_count" action="">
                              <p class="cart-option-num"> 상품명 / <span id="mypage-count-result">1</span>
                                개</p>
                              <div class="cart_count_item _count">
                                <button type="button" class="minus">-</button>
                                <input type="text" class="inp" value="1" disabled />
                                <button type="button" class="plus">+</button>
                                <input type="hidden" value="가격*수량">
                              </div>
                            </form>
                          </div>
                        </td>
                        <td><span class="cart-price"><span id="mypage-price-result">1000</span>원</span><br>
                          <button class="cart__list__orderbtn">바로 주문하기</button>
                        </td>
                      </tr>
                      <tr class="cart__list__detail">
                        <td>
                          <div><input type="checkbox" name="cart-product"></div>
                        </td>
                        <td class="cart-main">
                          <img class="cart-img" src="">
                          <div class="cart-title">
                            <span class="cart-sub">1줄 설명</span>
                            <p class="cart-name">상품명상품명</p>
                            <sapn class="cart-price">99,999원</sapn>
                          </div>
                        </td>
                        <td>
                          <div class="cart__list__option">
                            <form name="product_count" action="">
                              <p class="cart-option-num"> 상품명 / 13개</p>
                              <div class="cart_count_item _count">
                                <button type="button" class="minus">-</button>
                                <input type="text" class="inp" value="1" disabled />
                                <button type="button" class="plus">+</button>
                                <input type="hidden" value="가격*수량">
                              </div>
                            </form>
                          </div>
                        </td>
                        <td><span class="cart-price">116,620원</span><br>
                          <button class="cart__list__orderbtn">바로 주문하기</button>
                        </td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <td style="height:50px; padding-left: 12px; border: none;" colspan="3"><input type="checkbox"> <button class="cart__list__optionbtn">선택상품 삭제</button>
                        </td>
                      </tr>
                    </tfoot>
                  </form>
                </table>
                <div class="cart__mainbtns">
                  <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
                  <button class="cart__bigorderbtn right">주문하기</button>
                </div>
              </div>
            </div>

          <div class="mypage-sub-etc mypage-sub-active mypage-sub-content">