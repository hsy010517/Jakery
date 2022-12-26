<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="adminpage-buyList-container">
  <div class="adminpage-buyList-wrapper">

    <a class="adminpage-buyList-logo" href="/"><span style="color: #ffc730;">B</span>UY &nbsp;<span
        style="color: #303030;"><span style="color: #ffc730;"> L</span>IST<span style="color: #303030;"></a>
          <div class="adminpage-buyList-head">
            <div class="search-box-admin">
              <input type="text" id="search-admin-buy" class="search-admin-buy" placeholder="주문정보 검색"
                onkeyup="filter()">
              <button class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
    </div>
    
    <div class="cart">  <table class="adminpage-buyList-table">
        <thead class="adminpage-buyList-thead">
          <tr>
            <th style="width: 5%;" class="adminpage-memberList-th dummy"><input type="checkbox"
              onclick='selectAllbuy(this)'></th>
            <th style="width:25%;"  class="adminpage-buyList-th dummy">주문자</th>
            <th style="width: 35%;"  class="adminpage-buyList-th dummy">주문정보</th>
            <th style="width: 12%;"  class="adminpage-buyList-th dummy">결제 금액</th>
            <th style="width: 12%;"  class="adminpage-buyList-th dummy">진행 상태</th>
            <th style="width: 12%;"  class="adminpage-buyList-th dummy">비고</th>

          </tr>
        </thead>
        <tbody class="adminpage-buyList-tbody">

          <tr class="adminpage-buyList-detail">
            <td class="adminpage-buyList-td">
              <div><input type="checkbox" name="adminpage-productList-buy"></div>
            </td>
            <td class="adminpage-buyList-td">
              <p><b>주문자: 유저 이름(아이디)</b></p>
              <p> 주문일 : 2022.12.14</p>
            </td>
            
            <td class="adminpage-buyList-td">
              <div class="adminpage-buyList-option">
                <p>상품명상품명 / 13개 </p>
                <p>상품명상품명 / 23개 </p>
                <p>상품명상품명 / 133개 </p>     
                                   </div>
            </td>
            <td class="adminpage-buyList-td">
              <p><b>116,620</b>원<br>(결제방식)</p>
            </td>
            <td class="adminpage-buyList-td">
              <p>배송중</p>
            </td>
            <td class="adminpage-buyList-td">
              <button class="adminpage-buyList-btn adminpage-buyList-delete">삭제하기</button>
              <button class="adminpage-buyList-btn adminpage-buyList-update">수정하기</button>
            </td>
          </tr>
        </tbody>
        <tfoot>
          <tr>
            <td style="height:50px; padding-left: 12px; border: none;" colspan="3"><input type="checkbox" name="adminpage-productList-buy"> <button
                class="adminpage-buyList-deleteall">선택 주문 정보 모두 삭제</button>
            </td>
          </tr>
        </tfoot>
    </table>
  </div>    
  </div>
</div>