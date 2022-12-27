
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


		<c:forEach var="freereplyboard" items="${freereplyboards.content}">
		<c:if test="${freereplyboard.freeboards.freenum==freeboard.freenum}">
            <div class="freereply-contents-main">
                
                  <div class="freereply-contents-main-item" >
                  <form>
                    <div class="freereply-form-title">
                      작성자: ${freereplyboard.users.username} (${freereplyboard.users.userid})
                      작성날짜: ${freereplyboard.users.createDate}
                    <input type="hidden" value="게시판 번호 ${freereplyboard.freeboards.freenum}" size="10" disabled>
                    <input type="hidden" value="${freereplyboard.freereplynum}" size="8" disabled id="deletenum">
                    </div>
                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" disabled>${freereplyboard.freereplycontent}</textarea>
                 </form>
                 <c:if test="${freereplyboard.users.username==principal.user.username}">
                 	<button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${freereplyboard.freereplynum})">삭제 x</button>
                  </c:if>
                  <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                      <c:if test="${freereplyboard.users.username!=principal.user.username}">

						 <button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${freereplyboard.freereplynum})">삭제 x</button>
					</c:if>
					</sec:authorize>
                  </div> 
            </div>
          </c:if>
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
      
<!--  <script type="text/javascript" src="/js/freeDetailCss.js"></script -->
 <script type="text/javascript" src="/js/freereply.js"></script>

