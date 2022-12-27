<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" type="text/css" href="/css/notice.css">

<div id="notice-container">
    <div class="wrapper notice-wrapper">
      <div class="boardlogo-div">
        <div>
        <h1 class="freeboard-logo"><span style="color: #ffc730;">N</span><span style="color: #303030;">OTICE</span>
        </h1>
        <div class="notice-line"></div>
      </div>
      <div class="freeboardform-btndiv">
       
          	<sec:authorize access="hasRole('ROLE_ADMIN')">
            <button class="freeboard-link-btn" onclick="location.href='/notice/saveForm';">글쓰기</button>
            </sec:authorize>
       
      </div>
      </div>
      <div class="board-description">
        Jakery의 주요 공지가 업로드됩니다. <br>
        공지에 기재되어 있지 않아 Jakery와 관련한 문의가 필요할 경우 1:1 게시판을 이용해주시기 바랍니다.
      </div>
      <div class="board-list-title">LIST</div>
      <div class="board-div">
        <c:forEach var="notice" items="${notices.content}">
        <div>
          <ul class="board-list" onclick="location.href='/notice/${notice.noticenum}'" style="cursor:pointer;">
            <li class="board-item"><a href="/notice/${notice.noticenum}" class="board-num">${notice.noticenum}</a>
            </li>
            <li class="board-item"><a href="/notice/${notice.noticenum}" class="board-title">${notice.noticetitle}</a>
            </li>
            <li class="board-item"><a href="/notice/${notice.noticenum}" class="board-id">관리자</a>
            </li>
            <li class="board-item"><a href="/notice/${notice.noticenum}" class="board-count">Notice</a>
            </li>
          </ul>
        </div>
        </c:forEach>
      </div>
      <ul class="pagination justify-content-center">
        <c:choose>
          <c:when test="${notices.first}">
            <li class="pagingbtn pagingbtn-disabled"><a class="page-link" href="?page=${notices.number-1}">&laquo;</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${notices.number-1}">&laquo;</a></li>
          </c:otherwise>
        </c:choose>
        <li class="pagingbtn"><a class="page-link" href="?page=1">1</a></li>
        <li class="pagingbtn"><a class="page-link" href="?page=2">2</a></li>
        <li class="pagingbtn"><a class="page-link" href="?page=3">3</a></li>
        <c:choose>
          <c:when test="${notices.last}">
            <li class="pagingbtn pagingbtn-disabled"><a class="page-link" href="?page=${notices.number+1}">&raquo;</a></li>
          </c:when>
          <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${notices.number+1}">&raquo;</a></li>
          </c:otherwise>
        </c:choose>


      </ul>
    </div>
  </div>

<%@ include file="../layout/footer.jsp" %>