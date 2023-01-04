<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div id="writing-container">
	<div class="wrapper writing-wrapper">
		<div class="product-sub-title">
			<span style="color: #ffc730;">F</span>REE <span
				style="color: #ffc730;">B</span>OARD
		</div>
		<form>
			<div class="freetitle">
				<input value="${freeboard.freetitle}" id="freetitle" type="text" class="form-control"
					placeholder="제목을 입력하세요.">
			</div>
			<div class="freecontent">
				<textarea id="freecontent" class="form-control summernote"
				 rows="20">${freeboard.freecontent}</textarea>
			</div>
		</form>
		<button id="freeboardbtn-update" class="freeboardbtn-save">수정하기</button>
	</div>
</div>
<%@ include file="../layout/footer.jsp"%>


