<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp"%>
    <div id="reviewForm-container">
    <div class="wrapper reviewForm-wrapper">
      <div class="reviewForm-content">
        <div class="reviewForm-content-item reviewForm-content-head">
          <svg viewBox="0 0 20 20" width="15" height="10" style="fill:#fff;">
            <rect width="25" height="3"></rect>
            <rect y="8" width="25" height="3"></rect>
            <rect y="16" width="25" height="3"></rect>
          </svg>
          <span>REVIEW</span>
            <div onclick="history.back()" class="close close1"></div>
        </div>
        <h1 class="reviewForm-title"><span style="color: #ffc730;">R</span>EVIEW <span style="color: #ffc730;">F</span>ORM</h1>
      <form class="reviewForm-main">
<br>
        <fieldset class="reviewForm-productfield">
          <legend class="legend">구매 상품</legend>
          <ul>
            <li class="product-li">
              <table class="reviewFormList__list dummy">
                <thead>
                  <tr>
                    <th style="width: 40%;">상품정보</th>
                    <th style="width: 12%;">주문정보</th>
                    <th style="width: 12%;">상품금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="reviewFormList__list__detail">
                    <td class="reviewFormList-main">
                      <img class="reviewFormList-img" src="">
                      <div class="reviewFormList-title">
                        <span class="reviewFormList-sub">1줄 설명</span>
                        <p class="reviewFormList-name">상품명상품명</p>
                        <sapn class="reviewFormList-price">99,999원</sapn>
                      </div>
                    </td>
                    <td>
                      <div class="reviewFormList__list__option">
                        <p class="reviewFormList-option-num"> 13개</p>
                      </div>
                    </td>
                    <td><div class="reviewFormList-price2">116,620원</div><br></td>
                  </tr>
                </tbody>
              </table>
            </li>
          </ul>

        </fieldset>
<br>
<br>
        <fieldset class="reviewForm-field">
          <legend class="legend">리뷰 작성</legend>
          
          <ul class="reviewForm-ul1">
            <div class="reviewForm-userdiv">
              <li class="review-name">
                <label class="review-username-label"  for="reviewform-username">작성자 : </label>
                <input type="text" id="reviewform-username" value="로그인한유저name" disabled class="reviewform-username reviewform-input-item">
              </li>
              <li class="review-date">
                  <label for="reviewform-userdate">작성 날짜 : </label>
                  <input type="date" id="now_date" class="reviewform-userdate reviewform-input-item" disabled>
                </li>
            </div>
            <div class="reviewForm-productdiv">

              <li class="review-name">
                <label  for="reviewform-productname">상품명 : </label>
                <input type="text" id="reviewform-productname" value="받아온데이터" disabled class="reviewform-productname reviewform-input-item">
              </li>
              <li >
                <label for="reviewform-productamount">구매 개수 : </label>
                <input type="num" id="reviewform-productamount"  value="1234" disabled class="reviewform-productamount reviewform-input-item">
                </li>
                <li>
                <label for="reviewform-productdate">구매 날짜 : </label>
                <input type="date" id="reviewform-productdate" disabled class="reviewform-productdate reviewform-input-item">
              </li>
            </div>
          </ul>
          <ul class="reviewForm-ul2">
            <li>
              <label for="reviewform-star">
                평점 : 
              </label>
              <div class="star-rating">
                <input type="radio" id="5-stars" name="rating" value="10" />
                <label for="5-stars" class="star">&#9733;</label>
                <input type="radio" id="4-stars" name="rating" value="8" />
                <label for="4-stars" class="star">&#9733;</label>
                <input type="radio" id="3-stars" name="rating" value="6" />
                <label for="3-stars" class="star">&#9733;</label>
                <input type="radio" id="2-stars" name="rating" value="4" />
                <label for="2-stars" class="star">&#9733;</label>
                <input type="radio" id="1-star" name="rating" value="2" />
                <label for="1-star" class="star">&#9733;</label>
              </div>
            </li>
            <li>
              <label for="reviewform-keyword">KEYWORD 평가 :</label>
              <div class="reviewform-select-div">
              <select id="reviewform-keyword1" name="reviewform-keyword">
                <option value="default" disabled selected>맛</option>
                <option value="간단히 먹기 좋아요">바삭하고 짭짤해요</option>
                <option value="축구">담백하고 고소해요</option>
                <option value="음악감상">포근하고 달콤해요</option>
              </select>
              <select id="reviewform-keyword2" name="reviewform-keyword2">
                <option value="default" disabled selected>양</option>
                <option value="한 끼 식사로 좋아요">한 끼 식사로 좋아요</option>
                <option value="가벼운 간식으로 좋아요">가벼운 간식으로 좋아요</option>
                <option value="친구들과 함께 하기 좋아요">친구들과 함께 하기 좋아요</option>
              </select>
              <select id="reviewform-keyword3" name="reviewform-keyword3">
                <option value="default" disabled selected>기타</option>
                <option value="아이들이 좋아해요">아이들이 좋아해요</option>
                <option value="포장이 깔끔해요">포장이 깔끔해요</option>
                <option value="응대가 친절해요">응대가 친절해요</option>
              </select>
              </div>
            </li>
            <li>
              <label for="reviewform-keyword">상품평 :</label><br>
              <textarea class="reviewform-caption" name="reviewform-caption" id="" cols="50" rows="10" placeholder="상품 후기를 적어주세요."></textarea>
            </li>
            <li>
              <label for="gdsImg">이미지 첨부 : </label> <br>
              <input type="file" id="gdsImg" name="file"/>
              <div class="select_img"><img src="" /></div>
              </li>

          </ul>

        </fieldset>



        <div class="order-btn-div">
          <button type="reset" value="" class="reviewForm-reset-btn dummy">다시 작성</button>
          <button type="submit" value="" class="reviewForm-submit-btn dummy">올리기</button>
        </div>
      </form>
    </div>
    </div>
  </div>

  <script>
    document.getElementById('now_date').valueAsDate = new Date();
    </script>
  <%@ include file="../layout/footer.jsp"%>