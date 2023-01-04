<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div id="noticeDetail-container">
	<div class="wrapper noticeDetail-wrapper">
		<div class="notice-content">
			<div class="notice-content-item notice-content-head">
				<svg viewBox="0 0 20 20" width="15" height="10" style="fill: #fff;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
				<a href="/notice" class="notice-content-title-a dummy">NOTICE</a>
				<div onclick="location.href='/notice'" class="close close1"></div>
			</div>
			<ul class="notice-content-item notice-content-title">
				<li class="boardcontent-title-item boardcontent-title">
					${notice.noticetitle}</li>
				<li>
					<div class="freeDetail-btn-div">
						<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
							<a href="/notice/${notice.noticenum}/updateForm"
								class="freeboardbtn freeboardbtn-update"><i
								class="fa-solid fa-pencil"></i></a>
							<button id="noticebtn-delete"
								class="freeboardbtn freeboardbtn-delete">
								<i class="fa-solid fa-trash"></i>
							</button>
						</sec:authorize>
					</div>
				</li>
			</ul>
			<ul class="notice-content-item notice-info">
				<li class="boardcontent-title-item boardcontent-num info_group">
					<span class="info_detail">NUM : </span><span id="noticenum"
					class="info_detail_content"> ${notice.noticenum} </span>
				</li>
				<li class="boardcontent-title-item boardcontent-username info_group">
					<span class="info_detail">WRITER : </span><span
					class="info_detail_content"> 관리자 </span>
				</li>
				<li class="boardcontent-title-item boardcontent-username info_group">
					<span class="info_detail">작성일 : </span><span
					class="info_detail_content"> ${notice.createDate} </span>
				</li>

			</ul>
			<div class="notice-content-item notice-content-main">
				${notice.noticecontent}</div>

		</div>
	</div>
</div>

<script type="text/javascript" src="/js/notice.js"></script>

<%@ include file="../layout/footer.jsp"%>