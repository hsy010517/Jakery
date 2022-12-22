
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- core, security -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal" />
	</sec:authorize>

<!-- jquery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


		<c:forEach var="secretreplyboard" items="${secretreplyboards.content}">
		<!-- 작성자가 본인 댓글 보기 -->
		<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
		<c:if test="${secretreplyboard.users.username == principal.user.username || secretreplyboard.users.roles=='ADMIN'}">
		<c:if test="${secretreplyboard.secretboards.secretnum==secretboard.secretnum }">
            <div class="freereply-contents-main"> 
                  <div class="freereply-contents-main-item" >
                  	<form>
	                    <div class="freereply-form-title">
	                      작성자: ${secretreplyboard.users.username} ${secretreplyboard.users.userid}
	                      작성날짜: ${secretreplyboard.users.createDate}
	                    <input type="hidden" value="게시판 번호 ${secretreplyboard.secretboards.secretnum}" size="10" disabled>
	                    <input type="hidden" value="${secretreplyboard.secretreplynum}" size="8" disabled id="secretdeletenum">
	                    </div>
	                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" disabled>${secretreplyboard.secretreplycontent}</textarea>
                 	</form>
                 
                 	<button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${secretreplyboard.secretreplynum})">삭제 x</button>
   					</div>
            </div>
            </c:if>
            </c:if>
            </sec:authorize>
            
            <!-- 어드민이 댓글 보기 -->
            
            
            
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <c:if test="${secretreplyboard.users.username != principal.user.username}">
             	 <div class="freereply-contents-main"> 
                  <div class="freereply-contents-main-item" >
                  <form>
                    <div class="freereply-form-title">
                      작성자: ${secretreplyboard.users.username} ${secretreplyboard.users.userid}
                      작성날짜: ${secretreplyboard.users.createDate}
                    <input type="hidden" value="게시판 번호 ${secretreplyboard.secretboards.secretnum}" size="10" disabled>
                    <input type="hidden" value="${secretreplyboard.secretreplynum}" size="8" disabled id="secretdeletenum">
                    </div>
                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" disabled>${secretreplyboard.secretreplycontent}</textarea>
                 </form>
					<button type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${secretreplyboard.secretreplynum})">삭제 x</button>
                  </div>                 
            	</div>
            </c:if>
             </sec:authorize>  
          </c:forEach>
          


		${param.secretcontent}
		
	
<!-- 나중에 -->
	<%-- 	<sec:authorize access="hasRole('ROLE_USER')">
	<c:if test="${secretreplyboard.users.username != principal.user.username || secretreplyboard.users.roles=='ADMIN'}">
	</c:if>
	</sec:authorize>
	<br/> --%>


<!--    <script type="text/javascript">
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
	</script>	 -->   
          <script type="text/javascript" src="/js/secretreply.js"></script>

