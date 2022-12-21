
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


		<c:forEach var="replyboard" items="${freereplyboards.content}">
            <div class="freereply-contents-main">
                <c:if test="${replyboard.users.username==principal.user.username}">
                  <div class="freereply-contents-main-item" >
                  <form>
                    <div class="freereply-form-title">
                      작성자: ${replyboard.users.username} (${replyboard.users.userid})
                      작성날짜: ${replyboard.users.createDate}
                    <input type="hidden" value="게시판 번호 ${replyboard.freeboards.freenum}" size="10" disabled>
                    <input type="hidden" value="${replyboard.freereplynum}" size="8" disabled id="deletenum">
                    </div>
                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" disabled>${replyboard.freereplycontent}</textarea>
                 </form>
                 	<button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${replyboard.freereplynum})">삭제 x</button>
                  </div>
                  </c:if>
                	<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						 <button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${replyboard.freereplynum})">삭제 x</button>
					</sec:authorize>
	                 
            </div>
          </c:forEach>


		${param.freecontent}
		
	
	
		</div>
	 </div>
	
		<script type="text/javascript" src="/js/freereply.js"></script>

	<br/>

          </div>
          
        </div>
        
      </div>
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
      
<!--  <script type="text/javascript" src="/js/freeDetailCss.js"></script -->>
 <script type="text/javascript" src="/js/freereply.js"></script>

