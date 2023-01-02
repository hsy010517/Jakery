<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core, security -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal" />
	</sec:authorize>

<!-- jquery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<!-- 맨처음  -->
<!-- principal 작동안함 -->
<%--${principal.user.username} --%>

<input id="checkboxId" type="checkbox" style="opacity: 0.1" checked>

<button id="freeboardbtn-recommendSave" class="freeboardbtn freeboardbtn-recommend" type="button">
<i class="fa-regular fa-heart"></i>
</button>


<c:forEach var="recommendpage" items="${recommends.content}">  

<input type="hidden" value="${recommendpage.recommendfreeboard.freenum}" id="recommendfreeboard">
<input type="hidden" value="${recommendpage.recommendid}" id="recommendid">
<button id="freeboardbtn-recommendDelete" class="freeboardbtn freeboardbtn-recommend" type="button" style="display: none;" >
<i class="fa-solid fa-heart"></i>
</button>

</c:forEach>

${param.recommendcontent}
<script type="text/javascript" src="/js/recommendcnt.js"></script>


</body>
</html>