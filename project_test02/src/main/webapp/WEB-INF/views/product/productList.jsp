<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp" %>
  <div id="productList-container">
    <div class="slide slide_wrap">
      <div class="slide_item item1" >
        <div class="slide-contents">
        <img class="slide_title" src="/image/banner_txt1.png">
        <img class="slide_img" src="/image/banner_img1.png">
        </div>
      </div>
      <div class="slide_item item2">
        <img class="slide_img" src="/image/banner_img2.png">
      </div>
      <div class="slide_item item3"> <img class="slide_title" src="/image/banner_txt3.png" style="height: 200px;">
        <img class="slide_img" src="/image/banner_img3.png" style="height: 250px;">
      </div>
      <div class="slide_item item4"> <img class="slide_title" src="/image/banner_txt4.png" style="height: 200px;">
        <img class="slide_img" src="/image/banner_img4.png" style="height: 300px;">
      </div>
      <div class="slide_prev_button slide_button">◀</div>
      <div class="slide_next_button slide_button">▶</div>
      <ul class="slide_pagination"></ul>
    </div>
    <br>
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


    <div class="product-sub-title">
      <span style="color:#ffc730;">B</span>READ
    </div>
    <div class="product-sub-desc">
      최고의 제빵기능사들이 신선한 재료를 이용해 정성껏 만든 빵을 만나볼 수 있습니다.<br>
      담백한 식사용 빵부터 가볍게 즐길 수 있는 빵까지 Jakery의 다양한 빵을 만나보세요.
    </div>
    <div class="wrapper productList-wrapper">
      <div class="productList-main-div">
       <c:forEach var="product" items="${products}">
        <div class="productList-bundle" onclick="location.href='/auth/product/${product.pronum}'">
          <div class="productList-image" style="background: url('/image?filename=${product.list_imgName}') no-repeat center center;">
          </div>
          <div class="productList-content-div">
            <span class="productList-content productList-title">${product.proname}</span>
            <div class="productList-content productList-desc">${product.prodesc2}</div>
            <span class="productList-content productList-price">₩ ${product.proprice}원</span>
          </div>
        </div>
</c:forEach>
      </div>
    </div>
    </div>
        <script type="text/javascript" src="/js/productList.js"></script>
        <%@ include file="../layout/footer.jsp" %>