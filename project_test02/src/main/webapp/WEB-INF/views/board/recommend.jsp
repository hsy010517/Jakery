<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- 맨처음  -->
<%-- <sec:authorize access="isAuthenticated()">
   <sec:authentication property="principal" var="principal" />
</sec:authorize> --%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>


<form action="/api/freeboard/${freeboard.freenum}/recommend"
	method="POST">
	<input type="hidden" value="${freeboard.freenum}" id="recommendfreenum"
		size="0"> <input type="hidden"
		value="${principal.user.userid}" id="recommenduserid" size="0">
</form>
<button id="freeboardbtn-recommendSave"
	class="freeboardbtn freeboardbtn-recommend" type="button">
	<i class="fa-regular fa-heart"></i>
</button>
</div>
<!-- <input id="checkboxId" type="checkbox" style="opacity: 0.1" checked>
<button id="freeboardbtn-recommendSave" class="freeboardbtn freeboardbtn-recommend" type="button">
<i class="fa-regular fa-heart"></i>
</button>
 -->


<div>
	<c:if test="${(recommend==null)}">
		<button id="freeboardbtn-recommendDelete"
			class="freeboardbtn freeboardbtn-recommend" type="button">
			<i class="fa-solid fa-heart"></i>
		</button>
		<input type="hidden" value="${recommend.recommendfreeboard.freenum}"
			id="recommendfreenum">
		<input type="hidden" value="${recommend.recommendid}" id="recommendid">
	</c:if>
</div>




${param.recommendcontent}
<script type="text/javascript" src="/js/recommendcnt.js"></script>


</body>
</html>