<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/box.css"> 
</head>
<script type="text/javascript" src="/js/useridcheck.js"></script>
<body>
	<h2>아이디 중복 확인</h2>
	<form action="/auth/idCheck" method="get" name="frm">
		아이디
		<input type=text name="username" value="${username}"> 
		비밀번호 재생성
		<input type=text name="password" value="${password}"> 
		
		
	</form>
</body>
</html>