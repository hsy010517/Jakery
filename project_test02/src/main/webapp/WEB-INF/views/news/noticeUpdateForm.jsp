
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div id="writing-container">
	<div class="wrapper writing-wrapper">
		<div class="product-sub-title">
			<span style="color: #ffc730;">N</span>OTICE
		</div>
		<form>
			<input type="hidden" value="${notice.noticenum}" id="noticenum">

			<div class="freetitle">
				<input id="noticetitle" type="text" class="form-control"
					value="${notice.noticetitle}" disabled>
			</div>
			<div class="freecontent">
				<textarea id="noticecontent" class="form-control summernote"
					rows="20">${notice.noticecontent}</textarea>
			</div>
		</form>
		<button id="noticebtn-update" class="freeboardbtn-save">수정하기
		</button>
	</div>
</div>

<script>
	$('#noticecontent')
			.summernote(
					{
						height : 400,
						toolbar : [
								// 글꼴 설정
								[ 'fontname', [ 'fontname' ] ],
								// 글자 크기 설정
								[ 'fontsize', [ 'fontsize' ] ],
								// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'strikethrough', 'clear' ] ],
								// 글자색
								[ 'color', [ 'forecolor', 'color' ] ],
								// 표만들기
								[ 'table', [ 'table' ] ],
								// 글머리 기호, 번호매기기, 문단정렬
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								// 줄간격
								[ 'height', [ 'height' ] ],
								// 그림첨부, 링크만들기, 동영상첨부
								[ 'insert', [ 'picture', 'link', 'video' ] ],

						],
						// 추가한 글꼴
						fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
								'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림',
								'돋음체', '바탕체' ],
						// 추가한 폰트사이즈
						fontSizes : [ '8', '9', '10', '11', '12', '14', '16',
								'18', '20', '22', '24', '28', '30', '36', '50',
								'72' ]
					});
</script>
<script type="text/javascript" src="/js/notice.js"></script>
<%@ include file="../layout/footer.jsp"%>