<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div id="productForm-container">
	<div class="wrapper productForm-wrapper">
		<div class="productForm-content">
			<div class="productForm-content-item productForm-content-head">
				<svg viewBox="0 0 20 20" width="15" height="10" style="fill: #fff;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
				<span>상품 업로드</span>
				<div onclick="history.back()" class="close close1"></div>
			</div>
			<h1 class="productForm-title">
				<span style="color: #ffc730;">P</span>RODUCT <span
					style="color: #ffc730;">F</span>ORM
			</h1>
			<form class="productForm-main" enctype="multipart/form-data"
				id="productForm">
				<input id="pronum" type="hidden" value="${product.pronum}">
				<fieldset class="productForm-field">
					<legend class="legend">작성하기</legend>

					<ul class="productForm-ul1">
						<div class="productForm-userdiv">
							<li class="product-name"><label
								class="product-username-label" for="productForm-admin">작성자
									: </label> <input type="text" id="productForm-adminname"
								value="${principal.username}" disabled
								class="productForm-username productForm-input-item" required>
							</li>
							<li class="product-date"><label for="productForm-userdate">작성
									날짜 : </label> <input type="date" id="productForm-userdate"
								class="productForm-userdate productForm-input-item" disabled
								required></li>
						</div>
					</ul>
					<div class="productForm-productdiv">
						<ul class="productForm-ul2">
							<div class="productForm-product-label">
								<li><label for="productForm-productclass">분류 : </label></li>
								<li><label for="productForm-productname">상품명 : </label></li>
								<li><label for="productForm-productprice"> 가격 : </label></li>
								<li><label for="productForm-productamount"> 재고 : </label></li>
								<li><label for="productForm-productdate">유통기한 : </label></li>
								<li><label for="productForm-productsave">보관방법 : </label></li>
							</div>
							<div class="productForm-product-input">
								<li><select id="categories" name="categories">
										<option value="BREAD"
											${product.categories eq 'BREAD' ? 'selected="selected"' : '' }>빵류</option>
										<option value="DESSERT"
											${product.categories eq 'DESSERT' ? 'selected="selected"' : '' }>디저트류</option>
										<option value="BAKING"
											${product.categories eq 'BAKING' ? 'selected="selected"' : '' }>기구류</option>
								</select></li>
								<li><input type="text" id="proname" name="proname"
									class="productForm-productname productForm-input-item" required
									value="${product.proname}"></li>
								<li><input type="number" id="proprice" name="proprice"
									required value="${product.proprice}" min="0"
									class="productForm-productamount productForm-input-item"></li>
								<li><input type="number" id="proamount" name="proamount"
									required value="${product.proamount}" min="0" max="9999"
									class="productForm-productamount productForm-input-item"></li>
								<li><select id="prodate" name="prodate">
										<option value="당일 섭취 권장">당일 섭취 권장</option>
										<option value="1~2일 이내 섭취 권장"
											${product.prodate eq '1~2일 이내 섭취 권장' ? 'selected="selected"' : '' }>1~2일
											이내 섭취 권장</option>
										<option value="3~4일 이내 섭취 권장"
											${product.prodate eq '3~4일 이내 섭취 권장' ? 'selected="selected"' : '' }>3~4일
											이내 섭취 권장</option>
										<option value="일주일 이내 섭취 권장"
											${product.prodate eq '일주일 이내 섭취 권장' ? 'selected="selected"' : '' }>일주일
											이내 섭취 권장</option>
										<option value="2주 이내 섭취 권장"
											${product.prodate eq '2주 이내 섭취 권장' ? 'selected="selected"' : '' }>2주
											이내 섭취 권장</option>
										<option value="1개월 이내 섭취 권장"
											${product.prodate eq '1개월 이내 섭취 권장' ? 'selected="selected"' : '' }>1개월
											이내 섭취 권장</option>
										<option value="3개월 이내 섭취 권장"
											${product.prodate eq '3개월 이내 섭취 권장' ? 'selected="selected"' : '' }>3개월
											이내 섭취 권장</option>
										<option value="6개월 이내 섭취 권장"
											${product.prodate eq '6개월 이내 섭취 권장' ? 'selected="selected"' : '' }>6개월
											이내 섭취 권장</option>
										<option value="1년 이내 섭취 권장"
											${product.prodate eq '1년 이내 섭취 권장' ? 'selected="selected"' : '' }>1년
											이내 섭취 권장</option>
								</select></li>
								<li><select id="prosave" name="prosave">
										<option value="실온 보관"
											${product.prosave eq '실온 보관' ? 'selected="selected"' : '' }>실온
											보관</option>
										<option value="냉장 보관"
											${product.prosave eq '냉장 보관' ? 'selected="selected"' : '' }>냉장
											보관</option>
										<option value="냉동 보관"
											${product.prosave eq '냉동 보관' ? 'selected="selected"' : '' }>냉동
											보관</option>
								</select></li>
							</div>
						</ul>
						<ul class="productForm-ul3">
							<div class="productForm-descdiv">
								<li><label for="prodesc1">1줄 설명 :</label><br> <textarea
										required class="productForm-caption" name="prodesc1"
										id="prodesc1" cols="50" rows="1">${product.prodesc1}</textarea></li>
								<li><label for="prodesc2">상품 상세 설명 :</label><br> <textarea
										class="productForm-caption" name="prodesc2" id="prodesc2"
										cols="50" rows="5">${product.prodesc2}</textarea></li>
								<li><label for="procontent">상세 정보 :</label><br> <textarea
										class="productForm-caption summernote" name="procontent"
										id="procontent" cols="50" rows="20">${product.procontent}</textarea></li>
							</div>
						</ul>
						<ul class="productForm-ul4">
							<div class="productForm-imgdiv-label">
								<li><label for="productimgfile-main">상품 메인 이미지 : </label></li>
								<li><label for="productimgfile-list">상품 리스트 이미지 : </label></li>
								<li><label for="productimgfile-info">info 이미지: </label></li>
							</div>
							<div class="productForm-imgdiv-input">

								<li>
									<div class="file-input">
										<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
										<span style="color: #ffc730">${product.main_oriImgName }
										</span><a href='#this' class="fileDelete" name='filedeletemain'>교체하기</a>
									</div> <input type="file" id="productimgfile-main"
									name="productimgfile-main" class="productImgUpdate" required />

								</li>
								<li><div class="file-input">
										<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
										<span style="color: #ffc730">${product.list_oriImgName }
										</span><a href='#this' class="fileDelete" name='filedeletelist'>교체하기</a>
									</div> <input type="file" id="productimgfile-list"
									name="productimgfile-list" class="productImgUpdate" required />
								</li>
								<li><div class="file-input">
										<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
										<span style="color: #ffc730">${product.info_oriImgName }
										</span><a href='#this' class="fileDelete" name='filedeleteinfo'>교체하기</a>
									</div> <input type="file" id="productimgfile-info"
									name="productimgfile-info" class="productImgUpdate" required />
								</li>
							</div>
						</ul>
					</div>
				</fieldset>
			</form>
			<div class="order-btn-div">
				<button type="reset" value="" class="productForm-reset-btn dummy">다시
					작성</button>
				<button id="productbtn-update" class="productForm-submit-btn dummy">수정하기</button>
			</div>
		</div>
	</div>
</div>

<script>
	document.getElementById('productForm-userdate').valueAsDate = new Date();
</script>
<script>
	$('#procontent')
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
<script type="text/javascript" src="/js/proimgchk.js"></script>
<script type="text/javascript" src="/js/productUpdateForm.js"></script>

<script type="text/javascript" src="/js/product.js"></script>
<%@ include file="../layout/footer.jsp"%>