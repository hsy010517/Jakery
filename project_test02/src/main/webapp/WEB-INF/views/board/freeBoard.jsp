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
            <button class="freeboard-link-btn" onclick="location.href='/board/freeSaveForm'; count();">게시판작성</button>
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
      <div class="board-div">
        <c:forEach var="freeboard" items="${freeboards.content}">
          <ul class="board-list">
            <li class="board-item"><a href="/auth/board/${freeboard.num}" class="board-num">num</a>
            </li>
            <li class="board-item"><a href="/auth/board/${freeboard.num}" class="board-title">${freeboard.title}</a>
            </li>
            <li class="board-item"><a href="/auth/board/${freeboard.num}" class="board-id">username수정</a>
            </li>
            <li class="board-item"><a href="/auth/board/${freeboard.num}" class="board-count">조회수</a>
            </li>
          </ul>
        </c:forEach>
      </div>
      <ul class="pagination justify-content-center">
        <c:choose>
          <c:when test="${freeboards.first}">
            <li class="page-item disabled"><a class="page-link" href="?page=${freeboards.number-1}">Previous</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${freeboards.number-1}">Previous</a></li>
          </c:otherwise>
        </c:choose>
        <c:choose>
          <c:when test="${freeboards.last}">
            <li class="page-item disabled"><a class="page-link" href="?page=${freeboards.number+1}">Next</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${freeboards.number+1}">Next</a></li>
          </c:otherwise>
        </c:choose>


      </ul>
    </div>
  </div>
  <br />

<%@ include file="../layout/footer.jsp"%>
