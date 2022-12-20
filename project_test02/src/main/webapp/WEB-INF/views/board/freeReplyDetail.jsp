<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>


<div class="reply-container">
  	<div class="container">
		<div class="card">
		<form>
			<input type="hidden" id="free-num" value="${freenum}" />
			<input type="hidden" id="reply-num" value="${freeboardreply.freereplynum}" />
			<input type="hidden" id="reply-user" value="${principal.user.username}" />

			<div class="form-group">
				<label for="content">Content:</label>
				<textarea id="content" class="form-control summernote" rows="1"></textarea>
			</div>
		</form>
		<button id="btn-reply-save" class="btn btn-primary" >등록</button>
		</div>
		<br>
		<div class="card">
			<div class="card-header">댓글 목록</div>
			<ul id="comment-box" class="list-group">
				<c:forEach var="reply" items="${freereplyboards.content}">
				
				<li id="reply-num" class="list-group-item d-flex justify-content-between">
					<div>${reply.freereplycontent}</div>
					<div class="d-flex">
						<div class="font-italic">작성자:${reply.users.username} &nbsp;</div>
						<c:if test="${reply.user.username==principal.user.username}">
						<button onclick="reply.replyDelete(${reply.freereplynum})" class="badge">삭제</button>
						</c:if>
					</div>
				</li>
				</c:forEach>
			</ul>
				
		</div>
		<script type="text/javascript" src="/js/reply.js"></script>
	</div>
  
  </div>
</body>
</html>