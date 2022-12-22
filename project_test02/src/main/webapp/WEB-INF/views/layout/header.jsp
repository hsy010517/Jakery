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
<link rel="shortvut icon" href="/image/logo_J.png">

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" type="text/css" href="/css/style_t.css">
<link rel="stylesheet" type="text/css" href="/css/board.css">
<link rel="stylesheet" type="text/css" href="/css/boardDetail.css">
<link rel="stylesheet" type="text/css" href="/css/boardForm.css">
<link rel="stylesheet" type="text/css" href="/css/event.css">
<link rel="stylesheet" type="text/css" href="/css/freereply.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
<link rel="stylesheet" type="text/css" href="/css/mypage-memberForm.css">
<link rel="stylesheet" type="text/css" href="/css/mypage-cart.css">
<link rel="stylesheet" type="text/css" href="/css/mypage-buylist.css">
<link rel="stylesheet" type="text/css" href="/css/notice.css">
<link rel="stylesheet" type="text/css" href="/css/noticeDetail.css">
<link rel="stylesheet" type="text/css" href="/css/productDetail.css">
<link rel="stylesheet" type="text/css" href="/css/productDetail-review.css">
<link rel="stylesheet" type="text/css" href="/css/productList.css">
<link rel="stylesheet" type="text/css" href="/css/register.css">
<link rel="stylesheet" type="text/css" href="/css/reservation.css">
<link rel="stylesheet" type="text/css" href="/css/secretboard.css">
<link rel="stylesheet" type="text/css" href="/css/secretDetail.css">
<link rel="stylesheet" type="text/css" href="/css/registerUpdateForm.css">
<link rel="stylesheet" type="text/css" href="/css/orderForm.css">
<link rel="stylesheet" type="text/css" href="/css/reply.css">
<link rel="stylesheet" type="text/css" href="/css/search.css">
<link rel="stylesheet" type="text/css" href="/css/reviewForm.css">
<!-- font awesome -->
  <script src="https://kit.fontawesome.com/a067aa947d.js" crossorigin="anonymous"></script>
<!-- boot strap -->
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- summernote -->
<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js">
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<sec:authorize access="isAuthenticated()">
   <sec:authentication property="principal" var="principal" />
</sec:authorize>
<!-- <script type="text/javascript" src="/js/main.js"></script> -->
 <script type="text/javascript" src="/js/reservation.js"></script>
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
                  <li class="sub-item"><a href="/auth/notice">Notice</a></li>
                  <li class="sub-item"><a href="/auth/event">Event</a></li>
               </ol></li>
            <li class="menu-item nav-item"><a class="nav-link" href="">Menu</a>
               <ol class="sub_menu_list">
                  <li class="sub-item"><a href="">Bread</a></li>
                  <li class="sub-item"><a href="">Desert</a></li>
                  <li class="sub-item"><a href="">Baking tools</a></li>
               </ol></li>
            <li class="menu-item nav-item"><a class="nav-link" href="">Board</a>
               <ol class="sub_menu_list">
                  <li class="sub-item"><a href="/secretboard/secretBoard">1 : 1</a></li>
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
                  <li class="user-item nav-item"><a class="nav-link" href="/mypage">Mypage</a></li>
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