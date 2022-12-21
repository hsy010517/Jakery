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
				<input id="freetitle" type="text" class="form-control"
					placeholder="제목을 입력하세요.">
			</div>
			<div class="freecontent">
				<textarea id="freecontent" class="form-control summernote"
					placeholder="작성할 내용을 입력하세요." rows="20"></textarea>
			</div>
		</form>
		<button id="freeboardbtn-save" class="freeboardbtn-save">저장하기</button>
	</div>
</div>
<script src="/js/freeboard.js"></script>
<%@ include file="../layout/footer.jsp"%>