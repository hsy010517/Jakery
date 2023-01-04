<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

  <div id="freeboard-container">
    <div class="wrapper freeboard-wrapper">
      <div class="boardlogo-div">
        <div>
        <h1 class="freeboard-logo"><span style="color: #ffc730;">F</span><span style="color: #303030;">REE</span><br>
          <span style="color: #ffc730;">B</span><span style="color: #303030;">OARD</span>
        </h1>
        <div class="freeboard-line"></div>
      </div>
      <div class="freeboardform-btndiv">
        <c:choose>
          <c:when test="${empty principal}">
            <button class="freeboard-link-btn" onclick="location.href='/auth/loginForm';">글쓰기</button>
          </c:when>

         <c:otherwise>
            <button class="freeboard-link-btn" onclick="location.href='/freeboard/freeSaveForm'; count();">게시판작성</button>
          </c:otherwise> 
        </c:choose>
      </div>
      </div>
      <div class="board-description">
        유저 간의 자유로운 소통이 가능한 게시판 공간입니다. <br>
        비방, 허위사실 유포, 악의성이 짙은 글 등 커뮤니티 공간의 분위기를 저해하는 글은 관리자에 의해 삭제될 수 있습니다.<br>
        게시글 관련 신고는 1:1 문의를 통해 접수해주시기 바랍니다.
      </div>
      <div class="board-list-title">LIST</div>
        <c:forEach var="freeboard" items="${freeboards.content}">
          <div class="board-div">
            <ul class="board-list">
            <li class="board-item"><a href="/auth/freeboard/${freeboard.freenum}" class="board-num">${freeboard.freenum}</a>
            </li>
            <li class="board-item"><a href="/auth/freeboard/${freeboard.freenum}" class="board-title">${freeboard.freetitle}<span style="font-weight:300; color:#ffc730;"> (댓글수)</span></a>
            </li>
            <li class="board-item"><a href="/auth/freeboard/${freeboard.freenum}" class="board-id">${freeboard.users.userid}</a>
            </li>
            <li class="board-item"><a href="/auth/freeboard/${freeboard.freenum}" class="board-count">${freeboard.count}</a>
            </li>
          </ul>
        </div>
        </c:forEach>
      <ul class="pagination justify-content-center">
        <c:choose>
          <c:when test="${freeboards.first}">
            <li class="pagingbtn pagingbtn-disabled"><a class="page-link" href="?page=${freeboards.number-1}">&laquo;</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${freeboards.number-1}">&laquo;</a></li>
          </c:otherwise>
        </c:choose>
        <li class="pagingbtn"><a class="page-link" href="?page=1">1</a></li>
        <li class="pagingbtn"><a class="page-link" href="?page=2">2</a></li>
        <li class="pagingbtn"><a class="page-link" href="?page=3">3</a></li>
        <c:choose>
          <c:when test="${freeboards.last}">
            <li class="pagingbtn pagingbtn-disabled"><a class="page-link" href="?page=${freeboards.number+1}">&raquo;</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${freeboards.number+1}">&raquo;</a></li>
          </c:otherwise>
        </c:choose>


      </ul>
    </div>
  </div>

  
  <br />


    <script type="text/javascript" src="/js/freeboard.js"></script>
<%@ include file="../layout/footer.jsp"%>
