<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

  <br />

  <nav class="subnavbar">
    <ul class="freeDetailContents category-list-div">
      <li class="category-item category-button">
        <!-- Three rectangles, evenly distributed -->
        <svg viewBox="0 0 20 20" width="15" height="10">
          <rect width="25" height="3"></rect>
          <rect y="8" width="25" height="3"></rect>
          <rect y="16" width="25" height="3"></rect>
        </svg>
      </li>
      <li class="category-item category-title">Category</li>
      <li class="category-item"><a href="">Bread</a></li>
      <li class="category-item"><a href="">Dessert</a></li>
      <li class="category-item"><a href="">Baking Tools</a></li>
    </ul>
  </nav>
  <div id="productDetail-container">
    <div class="wrapper productDetail-wrapper">

      <div class="freeDetailContents product-main-div">
        <div class="product-main-item product-main-img"
          style="background: url('/image?filename=${product.main_imgName}') no-repeat center center;">상품사진</div>
        <div class="product-main-item  product-main-title">
          <h3 class="freeDetailTitle freeDescription-item">${product.proname}</h3>
          <div class="freeDetailDesc freeDescription-item">${product.prodesc2}</div>
          <div class="freeDetailReviewCount freeDescription-item">
            <a href="리뷰칸으로 이동">리뷰수</a>
            <span>명이 해당 상품에 후기를 남겼어요!</span>
          </div>
        </div>
        <table class="product-main-table product-main-item">
          <tr>
            <th>유통기한</th>
            <td>${product.prodate}</td>
          </tr>
          <tr>
            <th>보관방법</th>
            <td>${product.prosave}</td>
          </tr>
          <tr>
            <th>가격</th>
            <td><small>개당 </small> ${product.proprice}<small>원 </small> </td>
          </tr>
          <tr>
            <th>배송비</th>
            <td>선불 <b>2500원</b>(30,000원 이상 무료배송)</td>
          </tr>
          <tr>
            <th>적립금</th>
            <td><b style="color: #ffc730;"> ${product.proprice*0.02}</b><b>P</b></td>
          </tr>
        </table>
        <div class="product-main-item product-main-count">
          <div class="total_name">
            <div class="product_count_item total_name_title">상품명 : [${product.proname}]</div>
            <span class="product_count_item total_name_price">가격 : [${product.proprice}]</span>
          </div>
          <form class="total_count" name="product_count" action="">
            <div class="count-wrap _count product_count_item">
              <button type="button" class="minus">-</button>
              <input type="text" id="cartcount-inp" class="inp" value="1" disabled />
              <button type="button" class="plus">+</button>
              <input type="hidden" id="cart_pronum" value="${product.pronum}">
            </div>
          </form>
          <div class="total_price">
            <span class="product_price_item" style="color: #ffc730;">총 상품금액&nbsp </span>
            <span class="product_price_item">${product.proprice}*<span id="inp2">1</span> = 최종가격원</span>
          </div>
        </div>
        <div class="product-main-item product-main-btn">
          <input class="product-btn" type="button" value="장바구니" id="cartbtn-save">
          <input class="product-btn" type="button" value="바로 구매하기"  onclick="location.href='/product/orderForm/${product.pronum}'">
        </div>
      </div>

      <div class="product-sub-title">
        <span style="color: #ffc730;">M</span>ORE <span style="color: #ffc730;">D</span>ETAILS
      </div>
      <div class="freeDetailContents product-sub-div">
        <div class="product-sub-head">
          <ul>
            <li class="product-sub-active"><a href="#">INFO</a></li>
            <li><a href="#">상세 정보</a></li>
            <li><a href="#">REVIEW</a></li>
          </ul>
        </div>
        <div class="product-sub-body">
          <div class="product-sub-active product-sub-content">
            <!--subpage info-->
            <div class="product-sub-contentdetail">
              <img src="/image?filename=${product.info_imgName}" alt="크로와상" style="width: 100%;">
            </div>
          </div>
          <!--subpage 상세 정보-->
            <div class="product-sub-active product-sub-content">
              <div class="product-sub-contentdetail">
                ${product.procontent}
              </div>
            </div>
          <!--subpage reviews-->
            <div class="product-sub-active product-sub-content">
              <div class="product-sub-contentdetail">
				<%@ include file="review.jsp" %>
              </div>
            </div>

        </div>
</div>

    </div>
  </div>


    <script type="text/javascript" src="/js/productDetail.js"></script>
    <script type="text/javascript" src="/js/cart.js"></script>

<%@ include file="../layout/footer.jsp" %>