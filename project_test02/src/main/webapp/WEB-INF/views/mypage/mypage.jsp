<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div id="mypage-container">
	<div class="wrapper mypage-wrapper">

		<div class="mypage-sub-title" style="font-size: 38px;">
			<span style="color: #ffc730;">M</span>Y <span style="color: #ffc730;">P</span>AGE
		</div>
		<div class="mypage-sub-div">
			<div class="mypage-sub-head">
				<div class="mypage-sub-logo">
					<span style="color: #ffc730;">J</span>AKERY
				</div>
				<div class="mypage-sub-profile">
					<div class="mypage-sub-profile-item mypage-sub-profile-title">
						<span class="mypage-sub-profile-name"><span
							style="color: #ffc730;">${principal.user.username}</span>님</span><br> 환영합니다.
					</div>
					<table class="mypage-sub-profile-item mypage-sub-profile-table">
						<tr>
							<th>가입일</th>
							<td>｜ <fmt:formatDate value="${principal.user.createDate}" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<th>등급</th>
							<td>｜ ${principal.user.roles}</td>
						</tr>
						<tr>
							<th>구매</th>
							<td>｜ 12건</td>
						</tr>
					</table>
					<button class="mypage-sub-profile-item mypage-sub-profile-btn"
						type="button">LOGOUT</button>
				</div>
				<ul>
					<li class="mypage-sub-li" id="chk"><a href="#">회원정보</a></li>
					<li class="mypage-sub-li"><a href="#">장바구니</a></li>
					<li class="mypage-sub-li"><a href="#">구매내역</a></li>
					<li class="mypage-sub-li"><a href="#">예약일정</a></li>
				</ul>
			</div>
			<div class="mypage-sub-body">
				<div class="mypage-sub-active mypage-sub-content">
					<!-- 회원정보 페이지 임포트 -->
					<%@ include file="../mypage/mypageMember.jsp"%>
				</div>
				<div class="mypage-sub-etc mypage-sub-active mypage-sub-content">
					<!-- 장바구니 페이지 임포트 -->
					<%@ include file="../mypage/mypageCart.jsp"%>
				</div>
				<div class="mypage-sub-etc mypage-sub-active mypage-sub-content">
					<!--구매내역 페이지 임포트-->
					<%@ include file="../mypage/mypageBuylist.jsp"%>
				</div>
				<div class="mypage-sub-etc mypage-sub-active mypage-sub-content">
					<%@ include file="../mypage/mypageReservation.jsp"%>
</div>
			</div>
		</div>


	</div>
</div>



    <script type="text/javascript" src="/js/mypage.js"></script>
<%@ include file="../layout/footer.jsp"%>