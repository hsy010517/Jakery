<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div id="writing-container">
	<div class="wrapper writing-wrapper">
		<div class="product-sub-title">
			<span style="color: #ffc730;">1</span>:1 <span
				style="color: #ffc730;">B</span>OARD
		</div>
		<form>
		<input value="${secretboard.secretnum}" type="hidden" id="secretnum">
			<div class="freetitle">
				<input value="${secretboard.secrettitle}" id="secrettitle" type="text" class="form-control"
					placeholder="제목을 입력하세요.">
			</div>
			<div class="freecontent">
				<textarea id="secretcontent" class="form-control summernote"
				 rows="20">${secretboard.secretcontent}</textarea>
			</div>
		</form>
		<button id="secretboardbtn-update" class="freeboardbtn-save">수정하기</button>
	</div>
</div>
<script src="/js/secretboard.js"></script>
<%@ include file="../layout/footer.jsp"%>


