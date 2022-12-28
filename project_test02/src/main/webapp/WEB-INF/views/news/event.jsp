<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>


	<div id="event-container">
    <div class="wrapper event-wrapper">
      <div class="event-content">
        <div class="event-content-item event-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#fff;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <a href="/auth/event" class="event-content-title-a dummy">EVENT</a>
            <div onclick="location.href='/'" class="close close1"></div>
        </div>
        <ul class="event-content-item event-content-title">
          <li class="boardcontent-title-item event-content-item">
            <!--${freeboard.title}-->2022 12월 연말 EVENT START!</li>
        </ul>
        <ul class="event-content-item event-info">
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">WRITER : </span><span class="info_detail_content">
                관리자
              </span>
          </li>
          <li class="boardcontent-title-item boardcontent-username info_group">
            <span class="info_detail">작성일 : </span><span class="info_detail_content">
                2022.12.01
              </span>
          </li>

        </ul>
        <div class="event-content-item event-content-main">
          <img src="/image/event.png" alt="event">
          <a href="#" class="btn_gotop"><i class="fa-solid fa-chevron-up dummy"></i></a>
        </div>

      </div>
    </div>
  </div>


<script type="text/javascript" src="/js/event.js"></script>
<%@ include file="../layout/footer.jsp" %>