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
            Title: ${freeboard.freetitle}
          </li>
          <li>
            <div class="freeDetail-btn-div">
              <sec:authorize access="hasRole('ROLE_USER')">
                <c:if test="${freeboard.users.num==principal.user.num}">
                  <a href="/board/${freeboard.freenum}/freeUpdateForm" class="freeboardbtn freeboardbtn-update"><i class="fa-solid fa-pencil"></i></a>
                 <!--  <button id="freeboardbtn-delete" class="freeboardbtn freeboardbtn-delete"><i class="fa-solid fa-trash"></i></button> -->
                </c:if>
              </sec:authorize>
      
            </div>
          </li>
        </ul>
        <ul class="boardDetail-content-item boardDetail-info">
          <li class="boardcontent-title-item boardcontent-num info_group">
            <span class="info_detail">NUM : </span><span id="num" class="info_detail_content">
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


<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">back</button>
	<sec:authorize access="hasRole('ROLE_USER')">
		<c:if test="${freeboard.users.num==principal.user.num}">
			<!-- <button id="freeboardbtn-delete" class="btn btn-danger">delete</button> -->
			<a href="/board/${freeboard.freenum}/freeUpdateForm" class="btn btn-warning">update</a>
		</c:if>
	</sec:authorize>
	<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
		<%-- <button id="freeboardbtn-delete" class="btn btn-danger" value="${freeboard.users.num}">delete </button>	 --%>
	</sec:authorize>
	<div>
	<br />
	<br />
	<hr />
	<script type="text/javascript" src="/js/freeboard.js"></script>

	
	
	
 <a href="http://localhost:8013/auth/freeboard/${freeboard.freenum}1/freereply">댓글</a> 

</div>
<br>
<!-- <!-- 댓글 게시판 작성-->
<div class="reply-container">
  	<div class="container">
		<div class="card">
		<!-- 등록 폼  -->
		<%-- <form>
			<input type="text" id="freenum" value="${freeboard.freenum}" />
			<input type="text" id="replynum" value="${replyboard.freereplynum}" />
			<input type="text" id="replyuser" value="${principal.user.username}" />

			<div class="form-group">
				<label for="freereplycontent">Content:</label>
				<textarea id="freereplycontent" class="form-control summernote" rows="1"></textarea>
			</div>
		</form> --%>
		<!-- <button id="freeboardreplybtn-save" class="btn btn-primary" >등록</button> -->
		<!-- 삭제 폼  -->
		
		</div>
		<br>
		<div class="card">
			<div class="card-header">댓글 목록</div>
			<ul id="comment-box" class="list-group">

			</ul>
				
		</div>
		
	</div>
  
  </div>
 <!-- c:import -->
<%-- <c:import url="http://localhost:8013/auth/freereplyboard/${freeboard.freenum}/freereply" >
	<c:param name="freecontent" value="${freereplyboards.content}">
	
	</c:param>
</c:import> --%>
<!-- 현재까지 -------------------------- -->


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
          <!-- 등록 폼  -->
          <form class="freereply-form">
            <input type="text" id="freenum" value="${freeboard.freenum}" />
            <div class="freereply-username">작성자: <input type="text" id="replyuser" value="${principal.user.username}" disabled/></div>
            <textarea id="freereplycontent" class="reply-form-note" rows="5" cols="150" placeholder="댓글을 입력하세요."></textarea>
          	<button id="freeboardreplybtn-save" class="freeboard-reply-btn" type="button">등록</button>
          	
          </form>
          
          <!-- 목록 폼  -->
        </div>
        <br>
      <!--   <div class="freereply-contents-div"> -->
          <!-- <div class="freereply-contents-header">
            <a href="javascript:doDisplay()">댓글 목록 (댓글수)
            <i id="chevron-down" class="fa-sharp fa-solid fa-chevron-down"></i>
            <i id="chevron-up"  class="fa-sharp fa-solid fa-chevron-up"></i></a>
          </div> -->
          
         <%--  <c:forEach var="replyboard" items="${replyboards.content}">
            <div class="freereply-contents-main">
                <c:if test="${reply.user.username==principal.user.username}">
                  <div class="freereply-contents-main-item" id="myDIV">
                  <form>
                    <div class="freereply-form-title">
                      작성자: ${replyboard.users.username} (${replyboard.users.userid})
                      작성날짜: ${replyboard.users.createDate}
                    <input type="hidden" value="게시판 번호 ${replyboard.boards.num}" size="10" disabled>
                    <input type="hidden" value="${replyboard.num}" size="8" disabled id="deletenum">
                    </div>
                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" disabled>${replyboard.contents}</textarea>
                 </form>
                  <button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${replyboard.num})">삭제 x</button>
                  </div>
                  </c:if>
            </div>
          </c:forEach> --%>
        </div>
        
      </div>
    </div>
  </div>
<!-- 붙여놓은것 -----------------------------------------------------  -->
<script type="text/javascript" src="/js/freereply.js"></script>
<%@ include file="../layout/footer.jsp" %>
