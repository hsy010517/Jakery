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
          style="background: url('image/product.png') no-repeat center center;">상품사진</div>
        <div class="product-main-item  product-main-title">
          <h3 class="freeDetailTitle freeDescription-item">상품명</h3>
          <div class="freeDetailDesc freeDescription-item">Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Atque
            error voluptates, officia assumenda quae tempore ea quidem ab officiis. Nihil modi illo maiores.</div>
          <div class="freeDetailReviewCount freeDescription-item">
            <a href="리뷰칸으로 이동">리뷰수</a>
            <span>명이 해당 상품에 후기를 남겼어요!</span>
          </div>
        </div>
        <table class="product-main-table product-main-item">
          <tr>
            <th>유통기한</th>
            <td>기한을 입력해주세요</td>
          </tr>
          <tr>
            <th>보관방법</th>
            <td>보관방법을 입력해주세요</td>
          </tr>
          <tr>
            <th>가격</th>
            <td><small>개당 </small> [가격]</td>
          </tr>
          <tr>
            <th>배송비</th>
            <td>선불 <b>2500원</b>(30,000원 이상 무료배송)</td>
          </tr>
          <tr>
            <th>적립금</th>
            <td><b style="color: #ffc730;">20</b><b>P</b></td>
          </tr>
        </table>
        <div class="product-main-item product-main-count">
          <div class="total_name">
            <div class="product_count_item total_name_title">상품명 : [상품명]</div>
            <span class="product_count_item total_name_price">가격 : [가격]</span>
          </div>
          <form class="total_count" name="product_count" action="">
            <div class="count-wrap _count product_count_item">
              <button type="button" class="minus">-</button>
              <input type="text" class="inp" value="1" disabled />
              <button type="button" class="plus">+</button>
              <input type="hidden" value="가격*수량">
            </div>
          </form>
          <div class="total_price">
            <span class="product_price_item" style="color: #ffc730;">총 상품금액&nbsp </span>
            <span class="product_price_item">가격*수량 원</span>
          </div>
        </div>
        <div class="product-main-item product-main-btn">
          <input class="product-btn" type="button" value="장바구니">
          <input class="product-btn" type="button" value="바로 구매하기">
        </div>
      </div>

      <div class="product-sub-title">
        MORE DETAILS
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
              <img src="image/productDetail_crossiant.png" alt="크로와상" style="width: 100%;">
            </div>
          </div>
          <!--subpage 상세 정보-->
            <div class="product-sub-active product-sub-content">
              <div class="product-sub-contentdetail">
                상세정보
              </div>
            </div>
          <!--subpage reviews-->
            <div class="product-sub-active product-sub-content">
              <div class="product-sub-contentdetail">
				<%@ include file="/review.jsp" %>
              </div>
            </div>

        </div>


    </div>
  </div>


    <script type="text/javascript" src="/js/productDetail.js"></script>

<%@ include file="../layout/footer.jsp" %>