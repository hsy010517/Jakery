<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jakery</title>
<link rel="shortvut icon" href="image\logo_J.png">

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" type="text/css" href="/css/style_t.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js">
	
</script>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<script type="text/javascript" src="/js/main.js"></script>
</head>

<body>
	<!-- 헤더 메뉴바 -->
	<nav class="navbar">
		<div class="navbar-list navbar-menu">
			<ul class="navbar-nav">
				<li><a class="nav-content navbar-logo" href="/"><span
						style="color: #ffc730;">J</span><span style="color: #303030;">akery</span></a></li>
				<li class="menu-item nav-item"><a class="nav-link" href="">News</a>
					<ol class="sub_menu_list">
						<li class="sub-item"><a href="">Notice</a></li>
						<li class="sub-item"><a href="">Event</a></li>
					</ol></li>
				<li class="menu-item nav-item"><a class="nav-link" href="">Menu</a>
					<ol class="sub_menu_list">
						<li class="sub-item"><a href="">Bread</a></li>
						<li class="sub-item"><a href="">Desert</a></li>
						<li class="sub-item"><a href="">Baking tools</a></li>
					</ol></li>
				<li class="menu-item nav-item"><a class="nav-link" href="">Board</a>
					<ol class="sub_menu_list">
						<li class="sub-item"><a href="">1 : 1</a></li>
						<li class="sub-item"><a href="/auth/freeBoard">Free</a></li>
					</ol></li>
			</ul>
		</div>
		<div class="navbar-list navbar-user">

			<c:choose>
				<c:when test="${empty principal}">
					<ul class="navbar-nav">
						<li class="user-item nav-item"><a class="nav-link"
							href="/auth/loginForm">Login</a></li>
						<li class="user-item nav-item"><a class="nav-link"
							href="/auth/joinForm">Account</a></li>
						<li class="user-item nav-item search-icon"><a
							class="nav-link" href=""><span class="reading-glasses">
									<span class="reading-glasses__circle"></span> <span
									class="reading-glasses__line"></span>
							</span></a></li>
					</ul>
				</c:when>

				<c:otherwise>
					<ul class="navbar-nav">
						<li class="user-item nav-item"><a class="nav-link"
							href="/logout">Logout</a></li>
						<li class="user-item nav-item"><a class="nav-link" href="">Mypage</a></li>
						<li class="user-item nav-item"><a class="nav-link" href=""><span
								class="reading-glasses"> <span
									class="reading-glasses__circle"></span> <span
									class="reading-glasses__line"></span>
							</span></a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>

	</nav>
	<br />