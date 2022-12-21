<%-- <%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- core, security -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	<!-- jquery -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	
	
	 <div class="freereply-contents-div">
          <div class="freereply-contents-header">
            <a href="javascript:doDisplay()">댓글 목록 (댓글수)
            <i id="chevron-down" class="fa-sharp fa-solid fa-chevron-down"></i>
            <i id="chevron-up"  class="fa-sharp fa-solid fa-chevron-up"></i></a>
         
	
	 		<c:forEach var="replyboard" items="${freereplyboards.content}">
	            <div class="freereply-contents-main">
	                <c:if test="${replyboard.users.username==principal.user.username}">
	                  <div class="freereply-contents-main-item" id="myDIV">
		                 <form>
		                    <div class="freereply-form-title">
		                      작성자: ${replyboard.users.username} ${replyboard.users.userid}
		                      작성날짜: ${replyboard.users.createDate}
		                    <input type="text" value="게시판 번호 ${replyboard.freeboards.freenum}" size="10" readonly>
		                    <input type="text" value="${replyboard.freereplynum}" size="8" readonly id="deletenum">
		                    </div>
		                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" readonly>${replyboard.content}</textarea>
		                 </form>
	                  	<button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${replyboard.freereplynum})">삭제 x</button>
	                  </div>
	                </c:if>
	            </div>
          </c:forEach>
	
	<!-- 예전 -->
	<%-- 
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
					<c:if test="${reply.user.username==principal.user.username}">
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<button id="freeboardbtn-delete" class="btn btn-danger" value="${freeboard.users.num}">delete </button>
					</sec:authorize>
					</c:if>
				</div>	
			</div>
		</c:forEach> --%>
		${param.freecontent}
	<script type="text/javascript">
	 window.onload = (event) => {
         var btn1 = document.getElementById("chevron-up");
         btn1.style.display = 'none';   
       };
         var bDisplay = true; function doDisplay(){    
             var con = 
             /*document.getElementsByClassName("myDIV");*/
             document.getElementById("myDIV"); 
             var btn2 = document.getElementById("chevron-up");
             var btn1 = document.getElementById("chevron-down");
 
             if(con.style.display=='none'){       
                 con.style.display = 'flex'; 
                 btn1.style.display = 'inline';   
                 btn2.style.display = 'none';   
 
             }else{       
                 con.style.display = 'none'; 
                 btn1.style.display = 'none';
                 btn2.style.display = 'inline';   
             } 
         } ;
	</script>	
	
		</div>
	 </div>
	<script type="text/javascript" src="/js/freeDetailCss.js"></script>
		<script type="text/javascript" src="/js/freereply.js"></script>

	<br/>
