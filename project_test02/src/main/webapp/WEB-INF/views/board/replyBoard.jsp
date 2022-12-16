<%-- <%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 <script type="text/javascript" src="/js/replyHide.js"></script>
 <a href="javascript:doDisplay();"> > 내용보기</a><br/><br/>
	<div class="container myDIV" id="myDIV">
		<c:forEach var="replyboard" items="${replyboards.content}">
			<div class="card m-2">
				<div class="card-body">
				
				<p style="font-size: small;" class="myDIV">
				
				<c:if test="${reply.user.username==principal.user.username}">
				<form>
				<input type="text" value="게시판 번호 ${replyboard.boards.num}" size="10" readonly>
				댓글번호<input type="text" value="${replyboard.num}" size="8" readonly id="deletenum">
				<input type="text" value="내용 ${replyboard.content}"size="25" readonly>
				<input type="text" value="이름:${replyboard.users.username}" size="6" readonly>
				<input type="text" value="아이디:${replyboard.users.userid}" size="10" readonly>
				<input type="text" value="작성날짜${replyboard.users.createDate}" readonly>
				
				</form>
				<button id="freeboardreplybtn-delete" type="button" class="badge" onclick="reply.replyDelete(${replyboard.num})">댓글 삭제</button>
				</c:if>
				
				

				</p>
					<%-- <h4>내용${replyboard.content}</h4>
					<h4>이름:${replyboard.users.username}</h4>
					<h4>아이디:${replyboard.users.userid}</h4>
					<h4>작성날짜"${replyboard.users.createDate}</h4>
					<h4>게시판 번호${replyboard.boards.num}</h4>
					<h4>댓글 번호${replyboard.num}</h4> --%>
					<!-- 삭제구현x -->
					<%-- <c:if test="${reply.user.username==principal.user.username}">
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<button id="freeboardbtn-delete" class="btn btn-danger" value="${freeboard.users.num}">delete </button>
					</sec:authorize>
					</c:if> --%>
				</div>	
			</div>
		</c:forEach>
		${param.content}
		
		<!-- 댓글 page 구현 x -->
		<%-- <ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${replyboards.first}">
				<li class="page-item disabled"><a class="page-link" href="?page=${replyboards.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${replyboards.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${replyboards.last}">
				<li class="page-item disabled"><a class="page-link" href="?page=${replyboards.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${replyboards.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
		</ul> --%>
		</div>
		<div class="reply-container">

		<script type="text/javascript" src="/js/reply.js"></script>
	</div>
	<br/>
