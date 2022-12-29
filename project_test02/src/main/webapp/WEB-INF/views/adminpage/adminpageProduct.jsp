<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="adminpage-productList-container">
              <div class="adminpage-productList-wrapper">
          
                <a class="adminpage-productList-logo" href="/"><span style="color: #ffc730;">P</span>RODUCT &nbsp;<span
                    style="color: #303030;"><span style="color: #ffc730;">L</span>IST<span style="color: #303030;"></a>
                    <div class="adminpage-productList-head">
                      <select id="adminselect" name="adminselect">
                        <option value="all" selected="selected">전체</option>
                        <option value="option1">빵류</option>
                        <option value="option2">디저트류</option>
                        <option value="option3">기구류</option>
                      </select>
                      <div class="search-box-admin">
                        <input type="text" id="search-admin-product" class="search-admin-product" placeholder="상품명 검색"
                          onkeyup="filter()">
                        <button class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
                      </div>
              </div>
              <hr>
              <div class="adminpage-productList-newbtn-div">
                <button class="adminpage-productList-newbtn" onclick="location.href='/product/saveForm'">상품 추가하기</button>
              </div>
          
              <div class="adminpage-productList-body">
                <div class="admin-product1 cart">
                  <p class="adminpage-productList-selecttitle"><span style="color: #ffc730;">B</span>READ</p>
          
                  <table class="adminpage-productList-table">
                    <form>
                      <thead class="adminpage-productList-thead">
                        <tr class="adminpage-productList-thead_tr">
                          <th style="width: 5%;" class="adminpage-memberList-th dummy"><input type="checkbox"
                              onclick='selectAllproduct1(this)'></th>
                          <th style="width: 40%;" class="adminpage-productList-th dummy">상품</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">가격</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">재고</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">관리</th>
                        </tr>
                      </thead>
                      <tbody class="adminpage-productList-tbody">
                        <tr class="adminpage-productList-detail">
                          <td class="adminpage-productList-td">
                            <div><input type="checkbox" name="adminpage-productList-product1"></div>
                          </td>
                          <td class="adminpage-productList-main adminpage-productList-td">
                            <img class="adminpage-productList-img" src="/image/productlist.png">
                            <div class="adminpage-productList-title">
                              <span class="adminpage-productList-sub">1줄 설명</span>
                              <p class="adminpage-productList-name"><b>상품명상품명</b></p>
                              <div class="adminpage-productList-desc">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At facere sequi voluptates odio et impedit veniam animi maiores quisquam praesentium rem dicta error, reiciendis ipsa voluptas unde quis saepe sint.</div>
                            </div>
                          </td>
                          <td class="adminpage-productList-td">
                            <p class="adminpage-productList-price2">116,620원</p><br>
                          </td>
                          <td class="adminpage-productList-td">
                            <p class="adminpage-productList-pay">999개</p><br>
                          </td>
                          <td class="adminpage-productList-td">
                            <button class="adminpage-productList-btn adminpage-productList-userdelete">삭제하기</button>
                            <button class="adminpage-productList-btn adminpage-productList-userupdate">수정하기</button>
                          </td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td style="height:50px; padding-left: 12px; border: none;" colspan="3"><input type="checkbox" name="adminpage-productList-product1"  > <button
                            class="adminpage-memberList-userdeleteall">선택 상품 모두 삭제</button>
                          </td>
                        </tr>
                      </tfoot>
                    </form>
                  </table>
                </div>
                <div class="admin-product2 cart">
                  <p class="adminpage-productList-selecttitle"><span style="color: #ffc730;">D</span>ESSERT</p>
          
                  <table class="adminpage-productList-table">
                    <form>
                      <thead class="adminpage-productList-thead">
                        <tr class="adminpage-productList-thead_tr">
                          <th style="width: 5%;" class="adminpage-memberList-th dummy"><input type="checkbox"
                              onclick='selectAllproduct2(this)'></th>
                          <th style="width: 40%;" class="adminpage-productList-th dummy">상품</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">가격</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">재고</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">관리</th>
                        </tr>
                      </thead>
                      <tbody class="adminpage-productList-tbody">
                        <tr class="adminpage-productList-detail">
                          <td class="adminpage-productList-td">
                            <div><input type="checkbox" name="adminpage-productList-product2"></div>
                          </td>
                          <td class="adminpage-productList-main adminpage-productList-td">
                            <img class="adminpage-productList-img" src="">
                            <div class="adminpage-productList-title">
                              <span class="adminpage-productList-sub">1줄 설명</span>
                              <p class="adminpage-productList-name"><b>상품명상품명</b></p>
                              <div class="adminpage-productList-desc">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At facere sequi voluptates odio et impedit veniam animi maiores quisquam praesentium rem dicta error, reiciendis ipsa voluptas unde quis saepe sint.</div>
                            </div>
                          </td>
                          <td class="adminpage-productList-td">
                            <p class="adminpage-productList-price2">116,620원</p><br>
                          </td>
                          <td class="adminpage-productList-td">
                            <p class="adminpage-productList-pay">999개</p><br>
                          </td>
                          <td class="adminpage-productList-td">
                            <button class="adminpage-productList-btn adminpage-productList-userdelete">삭제하기</button>
                            <button class="adminpage-productList-btn adminpage-productList-userupdate">수정하기</button>
                          </td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td style="height:50px; padding-left: 12px; border: none;" colspan="3"><input type="checkbox" name="adminpage-productList-product2"  > <button
                            class="adminpage-memberList-userdeleteall">선택 상품 모두 삭제</button>
                          </td>
                        </tr>
                      </tfoot>
                    </form>
                  </table>
                </div>
                <div class="admin-product3 cart">
                  <p class="adminpage-productList-selecttitle"><span style="color: #ffc730;">T</span>OOLS</p>
          
                  <table class="adminpage-productList-table">
                    <form>
                      <thead class="adminpage-productList-thead">
                        <tr class="adminpage-productList-thead_tr">
                          <th style="width: 5%;" class="adminpage-memberList-th dummy"><input type="checkbox"
                              onclick='selectAllproduct3(this)'></th>
                          <th style="width: 40%;" class="adminpage-productList-th dummy">상품</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">가격</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">재고</th>
                          <th style="width: 10%;" class="adminpage-productList-th dummy">관리</th>
                        </tr>
                      </thead>
                      <tbody class="adminpage-productList-tbody">
                        <tr class="adminpage-productList-detail">
                          <td class="adminpage-productList-td">
                            <div><input type="checkbox" name="adminpage-productList-product3"></div>
                          </td>
                          <td class="adminpage-productList-main adminpage-productList-td">
                            <img class="adminpage-productList-img" src="">
                            <div class="adminpage-productList-title">
                              <span class="adminpage-productList-sub">1줄 설명</span>
                              <p class="adminpage-productList-name"><b>상품명상품명</b></p>
                              <div class="adminpage-productList-desc">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At facere sequi voluptates odio et impedit veniam animi maiores quisquam praesentium rem dicta error, reiciendis ipsa voluptas unde quis saepe sint.</div>
                            </div>
                          </td>
                          <td class="adminpage-productList-td">
                            <p class="adminpage-productList-price2">116,620원</p><br>
                          </td>
                          <td class="adminpage-productList-td">
                            <p class="adminpage-productList-pay">999개</p><br>
                          </td>
                          <td class="adminpage-productList-td">
                            <button class="adminpage-productList-btn adminpage-productList-userdelete">삭제하기</button>
                            <button class="adminpage-productList-btn adminpage-productList-userupdate">수정하기</button>
                          </td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td style="height:50px; padding-left: 12px; border: none;" colspan="3"><input type="checkbox" name="adminpage-productList-product3"  > <button
                            class="adminpage-memberList-userdeleteall">선택 상품 모두 삭제</button>
                          </td>
                        </tr>
                      </tfoot>
                    </form>
                  </table>
                </div>
              </div>
          
              </div>
            </div>
          