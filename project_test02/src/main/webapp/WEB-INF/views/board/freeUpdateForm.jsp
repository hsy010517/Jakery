<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<input type="hidden" id="freenum" value="${freeboard.freenum}"/>
		<div class="form-group">
			<input value="${freeboard.freetitle}" type="text" class="form-control"
			 placeholder="Enter title" id="freetitle">
		</div>
		
		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="freecontent">${freeboard.freecontent}</textarea>
		</div>
	</form>
	<button id="freeboardbtn-update" class="btn btn-primary">수정</button>
</div>
<br/>
<script>
      $('.summernote').summernote({
        tabsize: 2,
        height: 300
      });
</script>
<script type="text/javascript" src="/js/freeboard.js"></script>
<%@ include file="../layout/footer.jsp"%>

