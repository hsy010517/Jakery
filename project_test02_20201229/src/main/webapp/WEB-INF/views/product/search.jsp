<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="../layout/header.jsp" %>
  <div id="search-container">
    <div class="search-box">
      <form action="" class="search-box-form">
        <input type="search" class="search-txt" name="" placeholder="검색어를 입력하세요.">
        <button class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
      </form>
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

    <div class="searchForm-div">

    </div>

    <div class="product-sub-title">
      <span style="color:#ffc730;">검</span>색 결과
    </div>

    <div class="wrapper search-wrapper">
      <!--검색결과가 없을 경우-->
      <p class="search-result-none">일치하는 검색 결과가 없습니다.</p>
      <div class="productList-main-div">
        <!-- <div class="productList-bundle">
          <div class="productList-image" style="background: url('image/productlist.png') no-repeat center center;">
          </div>
          <div class="productList-content-div">
            <span class="productList-content productList-title">제품명</span>
            <div class="productList-content productList-desc">Lorem ipsum dolor sit amet consectetur, adipisicing elit.
              Laboriosam laborum assumenda fugiat molestias mollitia delectus molestiae. Laborum hic eum deleniti.</div>
            <span class="productList-content productList-price">₩ 9,900원</span>
          </div>
        </div> -->

      </div>
    </div>
  </div>
      <%@ include file="../layout/footer.jsp" %>