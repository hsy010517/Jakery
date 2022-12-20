<%-- <%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="/js/replyHide.js"></script>
 <a href="javascript:doDisplay();"> > 내용보기</a><br/><br/>
	<div class="container myDIV" id="myDIV">
		<c:forEach var="replyboard" items="${freereplyboards.content}">
			<div class="card m-2">
				<div class="card-body">
				
				
				
				<form>
				<input type="text" value="게시판 번호 ${replyboard.freeboards.freenum}" size="10" readonly>
				댓글번호<input type="text" value="${replyboard.freereplynum}" size="8" readonly id="deletenum">
				<input type="text" value="내용 ${replyboard.freereplycontent}"size="25" readonly>
				<textarea rows="" cols=""> ${replyboard.freereplycontent}</textarea>
				<input type="text" value="이름:${replyboard.users.username}" size="6" readonly>
				<input type="text" value="아이디:${replyboard.users.userid}" size="10" readonly>
				<input type="text" value="작성날짜${replyboard.users.createDate}" readonly>
				</form>
				<button id="freeboardreplybtn-delete" type="button" class="badge" onclick="reply.replyDelete(${replyboard.freereplynum})">댓글 삭제</button>
				
				
					<!-- 삭제구현x -->
					<%-- <c:if test="${reply.user.username==principal.user.username}">
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<button id="freeboardbtn-delete" class="btn btn-danger" value="${freeboard.users.num}">delete </button>
					</sec:authorize>
					</c:if> --%>
				</div>	
			</div>
		</c:forEach>
		${param.freecontent}
		
	
		</div>


		<script type="text/javascript" src="/js/freereply.js"></script>

	<br/>
