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
          <a href="/auth/freeBoard">FREE BOARD</a>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <ul class="boardDetail-content-item boardDetail-content-title">
          <li class="boardcontent-title-item boardcontent-title">
            ${freeboard.freetitle}
          </li>
          <li>
            <div class="freeDetail-btn-div">
              <sec:authorize access="hasRole('ROLE_USER')">
                <c:if test="${freeboard.users.num==principal.user.num}">

                  <a href="/board/${freeboard.freenum}/freeUpdateForm" class="freeboardbtn freeboardbtn-update"><i class="fa-solid fa-pencil"></i></a>
                  <button id="freeboardbtn-delete" class="freeboardbtn freeboardbtn-delete"><i class="fa-solid fa-trash"></i></button>

                </c:if>
              </sec:authorize>
              <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                  <a href="/board/${freeboard.freenum}/freeUpdateForm" class="freeboardbtn freeboardbtn-update"><i class="fa-solid fa-pencil"></i></a>
                <button id="freeboardbtn-delete" class="freeboardbtn freeboardbtn-delete"><i class="fa-solid fa-trash"></i></button>
              </sec:authorize>
            </div>
          </li>
        </ul>
        <ul class="boardDetail-content-item boardDetail-info">
          <li class="boardcontent-title-item boardcontent-num info_group">
            <span class="info_detail">NUM : </span><span id="freenum" class="info_detail_content">

              ${freeboard.freenum}

              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">WRITER : </span><span class="info_detail_content">
                ${freeboard.users.username}
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">작성일 : </span><span class="info_detail_content">
                ${freeboard.freecreateDate}
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-count info_group">
            <span class="info_detail">VIEW : </span><span id="count" class="info_detail_content">
                ${freeboard.count}
              </span> 
          </li>
          <li class="boardcontent-title-item boardcontent-count info_group">
            <span class="info_detail">LIKE : </span><span id="count" class="info_detail_content">
               ${freeboard.count}
              </span> 
          </li>
        </ul>
        <div class="boardDetail-content-item boardDetail-content-main">
        	${freeboard.freecontent}
        </div>

      </div>
    </div>
  </div>




<!-- 관리용 -->
<%--  <a href="http://localhost:8013/auth/freeboard/${freeboard.freenum}/freereply">댓글</a>  --%>



<!--댓글 게시판  -->
<div id="freereply-container">
    <div class="wrapper freereply-wrapper">
      <div class="freereply-content">

        <div class="freereply-content-item freereply-content-head">
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
            <input type="hidden" id="freereplynum" value="${freeboard.freenum}" />
            <div class="freereply-username">작성자: <input type="text" id="replyuser" value="${principal.user.username}" disabled/></div>
           <div class="freereply-comment dummy"> 
            <textarea id="freereplycontent" class="reply-form-note" rows="5" cols="130" placeholder="댓글을 입력하세요."></textarea>
          	<button id="freeboardreplybtn-save" class="freeboard-reply-btn" type="submit">등록</button>
          </div>
          </form>
          
    	<!-- 목록 폼  -->
        </div>
        <br>
        <div class="freereply-contents-div">
          <div class="freereply-contents-header">
            <a href="javascript:doDisplay()">댓글 목록 (댓글수)
            <i id="chevron-down" class="fa-sharp fa-solid fa-chevron-down"></i>
            <i id="chevron-up"  class="fa-sharp fa-solid fa-chevron-up"></i></a>
            <div id="myDIV">
				<!-- c:import -->
				<c:import url="/auth/freeboard/${freeboard.freenum}/freereply" ><%-- http://localhost:8013/auth/freereplyboard/${freeboard.freenum}/freereply --%>
					<c:param name="freecontent" value="${freereplyboards.content}">
					</c:param>
				</c:import>
         </div>
        </div>
        
      </div>
    </div>
  </div>
</div> 
  
  
 



<!-- 붙여놓은것 -----------------------------------------------------  -->
<script type="text/javascript" src="/js/freeDetailCss.js"></script>
<script type="text/javascript" src="/js/freereply.js"></script>
<script type="text/javascript" src="/js/freeboard.js"></script>
<%@ include file="../layout/footer.jsp" %>
