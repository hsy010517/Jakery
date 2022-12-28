<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
  <link rel="stylesheet" type="text/css" href="/css/secretboard.css">
<div id="secretboard-container">
    <div class="wrapper secretboard-wrapper">
      <div class="boardlogo-div">
        <div>
        <h1 class="secretboard-logo"><span style="color: #999;">1</span><span style="color: #303030;">:1</span><br>
          <span style="color: #999;">B</span><span style="color: #303030;">OARD</span>
        </h1>
        <div class="secretboard-line"></div>
      </div>
      <div class="secretboardform-btndiv">
        <c:choose>
       		<c:when test="${empty principal}">
            	<button class="secretboard-link-btn" onclick="location.href='/auth/loginForm';">글쓰기</button>
          	</c:when>
         	<c:otherwise>
            	<button class="secretboard-link-btn" onclick="location.href='/secretboard/secretSaveForm';">게시판작성</button>
          	</c:otherwise>
        </c:choose>
      </div>
      </div>
      <div class="board-description">
        관리자와 본인만 확인이 가능한 게시판입니다. <br>
        문의와 관련 없는 내용의 게시글은 일방적으로 삭제될 수 있으니 주제에 맞는 게시글만 업로드해주시기 바랍니다. <br>
        빠른 답변이 필요한 문의의 경우 전화 문의를 이용해주시기 바랍니다. (1234-5678, 평일 9:00~18:00)
      </div>
      <div class="board-list-title">LIST</div>
      <!-- 작성자 본인이 자신의 1:1게시판을 사용하는 경우 -->

	
        <c:forEach var="secretboard" items="${secretboards.content}">
                <div class="board-div">     
                <c:if test="${secretboard.users.username == principal.user.username}">
          <ul class="board-list" onclick="location.href='/secretboard/${secretboard.secretnum}'" style="cursor:pointer;">  
            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="secretboard-num dummy">${secretboard.secretnum}</a>
            </li>
            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="board-title">${secretboard.secrettitle} (${secretboard.secretreplycnt}) </a>
            </li>
            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="board-id ">${secretboard.users.userid}</a>
            </li>
            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="secretboard-count dummy">
              <span class="checkmark">
                <!--답장 완료 시 / 미 완료시 클래스 전자 후자 구분해서 choose 넣어주기-->
                 <c:choose>
		                <c:when test="${secretboard.secretreplycnt == 0}">
		                	<div class="checkmark_stem_none"></div>
		                  	<div class="checkmark_kick_none"></div>
		                </c:when>
		                <c:otherwise>
		                	<div class="checkmark_stem"></div>
		                	<div class="checkmark_kick"></div>
		                </c:otherwise>
	                </c:choose>
                </span></a>
            </li>
          </ul>
          </c:if>
           <!-- 어드민이 쓸 수 있게 -->
          <sec:authorize access="hasRole('ROLE_ADMIN')">
          <c:if test="${secretboard.users.username != principal.user.username}">
           	<ul class="board-list" onclick="location.href='/secretboard/${secretboard.secretnum}'" style="cursor:pointer;">  
	            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="secretboard-num dummy">${secretboard.secretnum}</a>
	            </li>
	            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="board-title">${secretboard.secrettitle} (${secretboard.secretreplycnt}) </a>
	            </li>
	            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="board-id ">${secretboard.users.userid}</a>
	            </li>
	            <li class="board-item"><a href="/secretboard/${secretboard.secretnum}" class="secretboard-count dummy">
	              <span class="checkmark">
	                <!--답장 완료 시 / 미 완료시 클래스 전자 후자 구분해서 choose 넣어주기-->
	                <c:choose>
		                <c:when test="${secretboard.secretreplycnt >= 1}">
		                	<div class="checkmark_stem_none"></div>
		                  	<div class="checkmark_kick_none"></div>
		                </c:when>
		                <c:otherwise>
		                	<div class="checkmark_stem"></div>
		                	<div class="checkmark_kick"></div>
		                </c:otherwise>
	                </c:choose>
	                  <!-- <div class="checkmark_stem checkmark_stem_none"></div>
	                  <div class="checkmark_kick checkmark_stem_none"></div> -->
	                </span></a>
	            </li>
          	</ul>
           </c:if>
           </sec:authorize>
           
        </div>
        </c:forEach>

      <ul class="pagination justify-content-center">
        <c:choose>
          <c:when test="${secretboards.first}">
            <li class="pagingbtn pagingbtn-disabled"><a class="page-link" href="?page=${secretboards.number-1}">&laquo;</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${secretboards.number-1}">&laquo;</a></li>
          </c:otherwise>
        </c:choose>
        <li class="pagingbtn"><a class="page-link" href="?page=1">1</a></li>
        <li class="pagingbtn"><a class="page-link" href="?page=2">2</a></li>
        <li class="pagingbtn"><a class="page-link" href="?page=3">3</a></li>
        <c:choose>
          <c:when test="${secretboards.last}">
            <li class="pagingbtn pagingbtn-disabled"><a class="page-link" href="?page=${secretboards.number+1}">&raquo;</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${secretboards.number+1}">&raquo;</a></li>
          </c:otherwise>
        </c:choose>


      </ul>
    </div>
  </div>


    <script type="text/javascript" src="/js/secretboard.js"></script>
<%@ include file="../layout/footer.jsp" %>