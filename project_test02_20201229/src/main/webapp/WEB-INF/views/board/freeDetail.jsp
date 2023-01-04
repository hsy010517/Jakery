<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<script type="text/javascript" src="/js/freeDetailCss.js"></script>



  <div id="boardDetail-container">
    <div class="wrapper boardDetail-wrapper">
      <div class="boardDetail-content">
        <div class="boardDetail-content-item boardDetail-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#303030;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="보드 목록으로 돌아가기">FREE BOARD</a>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <ul class="boardDetail-content-item boardDetail-content-title">
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
        <ul class="boardDetail-content-item boardDetail-info">
          <li class="boardcontent-title-item boardcontent-num info_group">
            <span class="info_detail">NUM : </span><span id="num" class="info_detail_content">
                <!-- ${freeboard.num} -->3
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">WRITER : </span><span class="info_detail_content">
                <!--${freeboard.users.username}-->작성자
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">작성일 : </span><span class="info_detail_content">
                <!--${freeboard.createDate}-->2021.1.16
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-count info_group">
            <span class="info_detail">VIEW : </span><span id="count" class="info_detail_content">
                <!--${freeboard.count}-->5
              </span> 
          </li>
          <li class="boardcontent-title-item boardcontent-count info_group">
            <span class="info_detail">LIKE : </span><span id="count" class="info_detail_content">
                <!--${freeboard.count}-->2
              </span> 
          </li>
        </ul>
        <div class="boardDetail-content-item boardDetail-content-main">
          <!--${freeboard.content}--> 자유게시판 자세한 내용을 입력해주세요.
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
 <script type="text/javascript" src="/js/freeDetailCss.js"></script>

<%@ include file="../layout/footer.jsp" %>
