
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <div id="freereply-container">
    <div class="wrapper freereply-wrapper">
      <div class="freereply-content">
  
        <div class="freereply-content-item freereply-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#303030;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="보드 목록으로 돌아가기">REPLYS</a>
          <div onclick="history.back()" class="close close1"></div>
        </div>
        <div class="freereply-form-div">
          <!-- 등록 폼  -->
          <form class="freereply-form">
            <input type="hidden" id="free-num" value="${num}" />
            <input type="hidden" id="reply-num" value="${replyboard.num}" />
            <div class="freereply-username">작성자: <input type="text" id="reply-user" value="${principal.user.username}" disabled/></div>
            <textarea id="content" class="reply-form-note" rows="5" cols="150" placeholder="댓글을 입력하세요."></textarea>
          </form>
          <button id="freeboardreplybtn-save" class="freeboard-reply-btn">등록</button>
          <!-- 목록 폼  -->
        </div>
        <br>
        <div class="freereply-contents-div">
          <div class="freereply-contents-header">
            <a href="javascript:doDisplay()">댓글 목록 (댓글수)
            <i id="chevron-down" class="fa-sharp fa-solid fa-chevron-down"></i>
            <i id="chevron-up"  class="fa-sharp fa-solid fa-chevron-up"></i></a>
          </div>
          <c:forEach var="replyboard" items="${replyboards.content}">
            <div class="freereply-contents-main">
                <c:if test="${reply.user.username==principal.user.username}">
                  <div class="freereply-contents-main-item" id="myDIV">
                  <form>
                    <div class="freereply-form-title">
                      작성자: ${replyboard.users.username} (${replyboard.users.userid})
                      작성날짜: ${replyboard.users.createDate}
                    <input type="hidden" value="게시판 번호 ${replyboard.boards.num}" size="10" disabled>
                    <input type="hidden" value="${replyboard.num}" size="8" disabled id="deletenum">
                    </div>
                    <textarea class="reply-form-note reply-desc" rows="3" cols="150" disabled>${replyboard.contents}</textarea>
                 </form>
                  <button id="freeboardreplybtn-delete" type="button" class="freeboardreplybtn-delete" onclick="reply.replyDelete(${replyboard.num})">삭제 x</button>
                  </div>
                  </c:if>
            </div>
          </c:forEach>
        </div>
        
      </div>
    </div>
  </div>
    <script type="text/javascript" src="/js/freereply.js"></script>