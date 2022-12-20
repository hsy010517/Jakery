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
                  <button id="freeboardbtn-delete" class="freeboardbtn freeboardbtn-delete"><i class="fa-solid fa-trash"></i></button>
                </c:if>
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


<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">back</button>
	<sec:authorize access="hasRole('ROLE_USER')">
		<c:if test="${freeboard.users.num==principal.user.num}">
			<button id="freeboardbtn-delete" class="btn btn-danger">delete</button>
			<a href="/board/${freeboard.freenum}/freeUpdateForm" class="btn btn-warning">update</a>
		</c:if>
	</sec:authorize>
	<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
		<button id="freeboardbtn-delete" class="btn btn-danger" value="${freeboard.users.num}">delete </button>	
	</sec:authorize>
	<div>
	<br />
	<br />
	<hr />
	<script type="text/javascript" src="/js/freeboard.js"></script>
	
	
<!--  <a href="/auth/freeboard/1/freereply">댓글</a>  -->

</div>
<br>
<!-- <!-- 댓글 게시판 작성-->
<div class="reply-container">
  	<div class="container">
		<div class="card">
		<!-- 등록 폼  -->
		<form>
			<input type="text" id="freenum" value="${freeboard.freenum}" />
			<input type="text" id="replynum" value="${replyboard.freereplynum}" />
			<input type="text" id="replyuser" value="${principal.user.username}" />

			<div class="form-group">
				<label for="freereplycontent">Content:</label>
				<textarea id="freereplycontent" class="form-control summernote" rows="1"></textarea>
			</div>
		</form>
		<button id="freeboardreplybtn-save" class="btn btn-primary" >등록</button>
		<!-- 삭제 폼  -->
		
		</div>
		<br>
		<div class="card">
			<div class="card-header">댓글 목록</div>
			<ul id="comment-box" class="list-group">


			<c:import url="http://localhost:8013/auth/freeboard/${freeboard.freenum}/freereply" >
				<c:param name="freecontent" value="${freereplyboards.content}">
				
				</c:param>
			</c:import>
			</ul>
				
		</div>
		
	</div>
  
  </div>
 <!-- c:import -->




<script type="text/javascript" src="/js/freereply.js"></script>
<%@ include file="../layout/footer.jsp" %>
