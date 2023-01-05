<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp" %>
  <div id="adminpage-container">
    <div class="wrapper adminpage-wrapper">

      <div class="adminpage-sub-title" style="font-size: 38px;">
        <span style="color:#ffc730;">A</span>DMIN <span style="color:#ffc730;">P</span>AGE
      </div>
      <div class="adminpage-sub-div">
        <div class="adminpage-sub-head">
          <div class="adminpage-sub-logo"><span style="color: #ffc730;">J</span>AKERY</div>
          <div class="adminpage-sub-profile">
            <div class="adminpage-sub-profile-item adminpage-sub-profile-title">
              <span class="adminpage-sub-profile-name"><span style="color: #ffc730;">${principal.user.username}</span>님</span><br>
              환영합니다.
            </div>
            <table class="adminpage-sub-profile-item adminpage-sub-profile-table">
              <tr>
                <th>가입일</th>
                <td>｜ <fmt:formatDate value="${principal.user.createDate}" pattern="yyyy-MM-dd"/></td>
              </tr>
              <tr>
                <th>등급</th>
                <td>｜ ${principal.user.roles}</td>
              </tr>
              <tr>
                <th>구매</th>
                <td>｜ 12건</td>
              </tr>
            </table>
            <a href="/logout"><button class="adminpage-sub-profile-item adminpage-sub-profile-btn" type="button">LOGOUT</button></a>
          </div>
          <ul>
            <li class="adminpage-sub-li" id="chk"><a href="#">관리자 정보</a></li>
            <li class="adminpage-sub-li"><a href="#">회원관리</a></li>
            <li class="adminpage-sub-li"><a href="#">상품관리</a></li>
            <li class="adminpage-sub-li"><a href="#">거래관리</a></li>
          </ul>
        </div>
        <div class="adminpage-sub-body">
          <div class="adminpage-sub-active adminpage-sub-content">
            <!-- 회원정보 페이지 임포트 -->
          <%@ include file="../adminpage/adminpageMember.jsp"%>
          </div>
          <div class="adminpage-sub-etc adminpage-sub-active adminpage-sub-content">
            <!-- 회원관리 페이지 임포트 -->
          <%@ include file="../adminpage/adminpageMemberList.jsp"%>
          </div>
          <div class="adminpage-sub-etc adminpage-sub-active adminpage-sub-content">
            <!--제품관리 페이지 임포트-->
            <%@ include file="../adminpage/adminpageProduct.jsp"%>
          </div>
          <div class="adminpage-sub-etc adminpage-sub-active adminpage-sub-content">
<!--회원들의 구매내역 페이지 임포트-->
<%@ include file="../adminpage/adminpageBuy.jsp"%>
          </div>
        </div>
      </div>


    </div>
  </div>
  
    <script type="text/javascript" src="/js/product.js"></script>
          <script type="text/javascript" src="/js/adminpage.js"></script>
          <%@ include file="../layout/footer.jsp" %>