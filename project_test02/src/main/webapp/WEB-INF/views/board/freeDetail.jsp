<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>


<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">back</button>
	<sec:authorize access="hasRole('ROLE_USER')">
		<c:if test="${freeboard.users.num==principal.user.num}">
			<button id="freeboardbtn-delete" class="btn btn-danger">delete</button>
			<a href="/board/${freeboard.num}/freeUpdateForm" class="btn btn-warning">update</a>
		</c:if>
	</sec:authorize>
	<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
		<button id="freeboardbtn-delete" class="btn btn-danger" value="${freeboard.users.num}">delete </button>	
	</sec:authorize>
	<div>
	<br />
	<br />
	<!-- 자유게시판 내용 -->
	<div>
		조회수:<span id="count"><i>${freeboard.count}</i></span>
		글번호:<span id="num"><i>${freeboard.num}</i></span>
		작성자:<span><i>${freeboard.users.username}</i></span>

	</div>
	<h3>${freeboard.title}</h3>
	</div>
	<hr>
	<div>
		<div>${freeboard.content}</div>
	</div>
	<hr />
	<script type="text/javascript" src="/js/freeboard.js"></script>
	
	
<%-- <a href="/auth/board/${freeboard.num}/reply">댓글</a> --%>

</div>
<br>
<!-- 댓글 게시판 작성-->
<div class="reply-container">
  	<div class="container">
		<div class="card">
		<!-- 등록 폼  -->
		<form>
			<input type="text" id="free-num" value="${num}" />
			<input type="text" id="reply-num" value="${replyboard.num}" />
			<input type="text" id="reply-user" value="${principal.user.username}" />

			<div class="form-group">
				<label for="content">Content:</label>
				<textarea id="content" class="form-control summernote" rows="1"></textarea>
			</div>
		</form>
		<button id="freeboardreplybtn-save" class="btn btn-primary" >등록</button>
		<!-- 삭제 폼  -->
		
		</div>
		<br>
		<div class="card">
			<div class="card-header">댓글 목록</div>
			<ul id="comment-box" class="list-group">
				<%-- <c:forEach var="reply" items="${freeboardreply.content}">
				
				<li id="reply-num" class="list-group-item d-flex justify-content-between">
					<div>${reply.content}</div>
					<div class="d-flex">
						<div class="font-italic">작성자:${reply.users.username} &nbsp;</div>
						<c:if test="${reply.user.username==principal.user.username}">
						<button id="freeboardreplybtn-delete" onclick="reply.replyDelete(${freeboardreply.num})" class="badge">삭제</button>
						</c:if>
					</div>
				</li>
				</c:forEach> --%>
			</ul>
				
		</div>
		
	</div>
  
  </div>


<!-- c:import -->
<c:import url="http://localhost:8013/auth/board/50/reply" >
	<c:param name="content" value="${replyboard.content}">
	
	</c:param>
</c:import> 

<script type="text/javascript" src="/js/reply.js"></script>
<%@ include file="../layout/footer.jsp" %>
