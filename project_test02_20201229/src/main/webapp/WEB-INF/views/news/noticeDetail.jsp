<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp" %>
  <div id="noticeDetail-container">
    <div class="wrapper noticeDetail-wrapper">
      <div class="notice-content">
        <div class="notice-content-item notice-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#fff;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="공지 목록으로 돌아가기" class="notice-content-title-a dummy">NOTICE</a>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <ul class="notice-content-item notice-content-title">
          <li class="boardcontent-title-item boardcontent-title">
            <!--${freeboard.title}-->제목 어쩌고 저쩌고
          </li>
          <li>
            <div class="freeDetail-btn-div">
              <sec:authorize access="hasRole('ROLE_USER')">
                <c:if test="${freeboard.users.num==principal.user.num}">
                  <a href="/board/${freeboard.num}/freeUpdateForm" class="freeboardbtn freeboardbtn-update"><i class="fa-solid fa-pencil"></i></a>
                  <button id="freeboardbtn-delete" class="freeboardbtn freeboardbtn-delete"><i class="fa-solid fa-trash"></i></button>
                </c:if>
              </sec:authorize>
              <!-- <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                <button id="freeboardbtn-delete" class="freeboardbtn freeboardbtn-update" value="${freeboard.users.num}">delete
                </button>
              </sec:authorize> -->
            </div>
          </li>
        </ul>
        <ul class="notice-content-item notice-info">
          <li class="boardcontent-title-item boardcontent-num info_group">
            <span class="info_detail">NUM : </span><span id="num" class="info_detail_content">
                <!-- ${freeboard.num} -->3
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">WRITER : </span><span class="info_detail_content">
                관리자
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">작성일 : </span><span class="info_detail_content">
                <!--${freeboard.createDate}-->2021.1.16
              </span>
          </li>

        </ul>
        <div class="notice-content-item notice-content-main">
          <!--${freeboard.content}--> 공지 자세한 내용을 입력해주세요.
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          
          글 내용이 들어갑니다
          <img src>
        </div>

      </div>
    </div>
  </div>
<%@ include file="../layout/footer.jsp" %>