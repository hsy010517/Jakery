<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp" %>
 <link rel="stylesheet" type="text/css" href="/css/secretDetail.css">
 
 <div id="boardDetail-container">
    <div class="wrapper boardDetail-wrapper">
      <div class="boardDetail-content">
        <div class="boardDetail-content-item secretboardDetail-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#303030;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="/secretboard/secretBoard">1:1 BOARD</a>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <ul class="boardDetail-content-item boardDetail-content-title">
          <li class="boardcontent-title-item boardcontent-title">
            ${secretboard.secrettitle}
          </li>
          <li>
            <div class="secretDetail-btn-div">
              <sec:authorize access="hasRole('ROLE_USER')">
                <c:if test="${secretboard.users.username==principal.user.username}">
                  <a href="/secretboard/${secretboard.secretnum}/secretUpdateForm" class="secretboardbtn secretboardbtn-update"><i class="fa-solid fa-pencil"></i></a>
                  <button id="secretboardbtn-delete" class="secretboardbtn secretboardbtn-delete"><i class="fa-solid fa-trash"></i></button>
                </c:if>
              </sec:authorize>
              <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
 <button id="secretboardbtn-delete" class="secretboardbtn secretboardbtn-delete"><i class="fa-solid fa-trash"></i></button>
              </sec:authorize>
            </div>
          </li>
        </ul>
        <ul class="boardDetail-content-item secretboardDetail-info">
          <li class="boardcontent-title-item boardcontent-num info_group">
            <span class="info_detail">NUM : </span><span id="num" class="info_detail_content">
               ${secretboard.secretnum}
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">WRITER : </span><span class="info_detail_content">
                ${secretboard.users.username}
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">작성일 : </span><span class="info_detail_content">
               ${secretboard.createDate}
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-count info_group">
            <span class="info_detail">답변 : </span>
            <span id="count" class="info_detail_content">
            	<c:choose>
	                <c:when test="${secretboard.secretreplycnt==0}">
	                	미완료
	                </c:when>
	                <c:otherwise>
	                	완료
	                </c:otherwise>
                </c:choose>
            </span> 
          </li>
        </ul>
        <div class="boardDetail-content-item boardDetail-content-main">
          ${secretboard.secretcontent}

        </div>

      </div>
    </div>
  </div>

<!--댓글 게시판  -->
<div id="freereply-container">
    <div class="wrapper freereply-wrapper">
      <div class="freereply-content">

        <div class="freereply-content-item secretreply-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#303030;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="보드 목록으로 돌아가기">REPLYS</a>
          <div onclick="history.back()" class="close close1"></div>
        </div>
        <div class="freereply-form-div">
          <!-- 댓글 등록 폼  -->
          <form class="freereply-form">
            <input type="hidden" id="secretnum" value="${secretboard.secretnum}" />
            <div class="freereply-username" style="color:#999;">작성자: <input style="color:#999;" type="text" id="secretreplyuser" value="${principal.user.username}" disabled/></div>
           <div class="freereply-comment dummy"> 
            <textarea id=secretreplycontent class="reply-form-note" rows="5" cols="130" placeholder="댓글을 입력하세요."></textarea>
          	<button id="secretboardreplybtn-save" class="freeboard-reply-btn" type="button">등록</button>
          </div>
          </form>
          
          <!-- 관리용 -->
<%--  <a href="http://localhost:8013/secretboard/${secretboard.secretnum}/secretreply">댓글</a> --%>
          
    	<!-- 목록 폼  -->
        </div>
        <br>
        <div class="freereply-contents-div">
          <div class="freereply-contents-header">
            <a href="javascript:doDisplay()">댓글 목록 (${secretboard.secretreplycnt})
            <i id="chevron-down" class="fa-sharp fa-solid fa-chevron-down"></i>
            <i id="chevron-up"  class="fa-sharp fa-solid fa-chevron-up"></i></a>
            <div id="myDIV">
            <!-- 작성자가 본인 댓글 보기 -->
				<!-- c:import -->
				<c:import url="/secretboard/${secretboard.secretnum}/secretreply" >
					<c:param name="secretcontent" value="${secretreplyboards.content}">
					</c:param>
				</c:import>

         </div>
        </div>
        
      </div>
    </div>
  </div>
</div> 
<script type="text/javascript" src="/js/freeDetailCss.js"></script>
<script type="text/javascript" src="/js/secretreply.js"></script>
<script type="text/javascript" src="/js/secretboard.js"></script>

  <%@ include file="../layout/footer.jsp" %>