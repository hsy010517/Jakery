<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp" %>
 <div id="boardDetail-container">
    <div class="wrapper boardDetail-wrapper">
      <div class="boardDetail-content">
        <div class="boardDetail-content-item boardDetail-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#303030;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="보드 목록으로 돌아가기">1:1 BOARD</a>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <ul class="boardDetail-content-item boardDetail-content-title">
          <li class="boardcontent-title-item boardcontent-title">
            <!--${secretboard.title}-->제목 어쩌고 저쩌고
          </li>
          <li>
            <div class="secretDetail-btn-div">
              <sec:authorize access="hasRole('ROLE_USER')">
                <c:if test="${secretboard.users.num==principal.user.num}">
                  <a href="/board/${secretboard.num}/secretUpdateForm" class="secretboardbtn secretboardbtn-update"><i class="fa-solid fa-pencil"></i></a>
                  <button id="secretboardbtn-delete" class="secretboardbtn secretboardbtn-delete"><i class="fa-solid fa-trash"></i></button>
                </c:if>
              </sec:authorize>
              <!-- <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                <button id="secretboardbtn-delete" class="secretboardbtn secretboardbtn-update" value="${secretboard.users.num}">delete
                </button>
              </sec:authorize> -->
            </div>
          </li>
        </ul>
        <ul class="boardDetail-content-item boardDetail-info">
          <li class="boardcontent-title-item boardcontent-num info_group">
            <span class="info_detail">NUM : </span><span id="num" class="info_detail_content">
                <!-- ${secretboard.num} -->3
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">WRITER : </span><span class="info_detail_content">
                <!--${secretboard.users.username}-->작성자
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">작성일 : </span><span class="info_detail_content">
                <!--${secretboard.createDate}-->2021.1.16
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-count info_group">
            <span class="info_detail">답변 : </span><span id="count" class="info_detail_content">완료
              </span> 
          </li>
        </ul>
        <div class="boardDetail-content-item boardDetail-content-main">
          <!--${secretboard.content}--> 자유게시판 자세한 내용을 입력해주세요.
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          글 내용이 들어갑니다<br>
          
          글 내용이 들어갑니다
        </div>

      </div>
    </div>
  </div>
  <%@ include file="/freeReplyBoard.jsp" %>
  
  <%@ include file="../layout/header.jsp" %>