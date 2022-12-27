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
			<form class="productForm-main">
				<fieldset class="productForm-field">
					<legend class="legend">작성하기</legend>

					<ul class="productForm-ul1">
						<div class="productForm-userdiv">
							<li class="product-name"><label
								class="product-username-label" for="productForm-admin">작성자
									: </label> <input type="text" id="productForm-adminname"
								value="admin name" disabled
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
							</div>
							<div class="productForm-product-input">
								<li><select id="productForm-productclass"
									name="productForm-productclass">
										<option value="bread">빵류</option>
										<option value="dessert">디저트류</option>
										<option value="tool">기구류</option>
								</select></li>
								<li><input type="text" id="productForm-productname"
									class="productForm-productname productForm-input-item" required></li>
								<li><input type="number" id="productForm-productprice"
									required value="1500" min="0"
									class="productForm-productamount productForm-input-item"></li>
								<li><input type="number" id="productForm-productamount"
									required value="100" min="0" max="9999"
									class="productForm-productamount productForm-input-item"></li>
								<li><select id="productForm-productdate"
									name="productForm-productdate">
										<option value="당일 섭취 권장">당일 섭취 권장</option>
										<option value="1~2일 이내 섭취 권장">1~2일 이내 섭취 권장</option>
										<option value="3~4일 이내 섭취 권장" selected>3~4일 이내 섭취 권장</option>
										<option value="일주일 이내 섭취 권장">일주일 이내 섭취 권장</option>
										<option value="2주 이내 섭취 권장">2주 이내 섭취 권장</option>
										<option value="1개월 이내 섭취 권장">1개월 이내 섭취 권장</option>
										<option value="3개월 이내 섭취 권장">3개월 이내 섭취 권장</option>
										<option value="6개월 이내 섭취 권장">6개월 이내 섭취 권장</option>
										<option value="1년 이내 섭취 권장">1년 이내 섭취 권장</option>
								</select></li>
							</div>
						</ul>
						<ul class="productForm-ul3">
							<div class="productForm-descdiv">
								<li><label for="productForm-keyword">1줄 설명 :</label><br>
									<textarea required class="productForm-caption"
										name="productForm-caption" id="" cols="50" rows="1"
										placeholder="상품에 대한 1줄 설명을 적어주세요.(20자 내외)"></textarea></li>
								<li><label for="productForm-keyword">상품 상세 설명 :</label><br>
									<textarea class="productForm-caption"
										name="productForm-caption" id="" cols="50" rows="5"
										placeholder="상품 설명을 한 문단 이내로 적어주세요."></textarea></li>
								<li><label for="productForm-keyword">상세 정보 :</label><br>
									<textarea class="productForm-caption"
										name="productForm-caption" id="" cols="50" rows="20"
										placeholder="상품에 관한 주의사항 등을 상세히 적어주세요."></textarea></li>
							</div>
						</ul>
						<ul class="productForm-ul4">
							<div class="productForm-imgdiv-label">
								<li><label for="productimgfile-main">상품 메인 이미지 : </label></li>
								<li><label for="productimgfile-list">상품 리스트 이미지 : </label></li>
								<li><label for="productimgfile-info">info 이미지: </label></li>
							</div>
							<div class="productForm-imgdiv-input">
								<li><input type="file" id="productimgfile-main" name="file"
									required />
									<div class="select_img">
										<img src="" />
									</div></li>
								<li><input type="file" id="productimgfile-list" name="file"
									required />
									<div class="select_img">
										<img src="" />
									</div></li>
								<li><input type="file" id="productimgfile-info" name="file"
									required />
									<div class="select_img">
										<img src="" />
									</div></li>
							</div>
						</ul>
					</div>
				</fieldset>



				<div class="order-btn-div">
					<button type="reset" value="" class="productForm-reset-btn dummy">다시
						작성</button>
					<button type="submit" value="" class="productForm-submit-btn dummy">올리기</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
    document.getElementById('productForm-userdate').valueAsDate = new Date();
  </script>

<%@ include file="../layout/footer.jsp"%>