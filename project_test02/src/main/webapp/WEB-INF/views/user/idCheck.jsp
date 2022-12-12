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
	<h2>아이디 찾기</h2>
	<form action="/auth/idCheck" method="get" name="frm">
		
		아이디
		<input type=text name="userid" value="${password}"> 
		
		
	</form>
</body>
</html>