<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <div id="adminpage-memberList-container">
              <div class="adminpage-memberList-wrapper">
          
                <a class="adminpage-memberList-logo" href="/"><span style="color: #ffc730;">M</span><span
                    style="color: #303030;">EMBER</span><span style="color: #ffc730;"> L</span><span
                    style="color: #303030;">IST</span></a>
                    <div class="adminpage-memberList-head">
                      <div class="search-box-admin">
                        <input type="text" id="search-admin-member" class="search-admin-member" placeholder="회원정보 검색"
                          onkeyup="filter()">
                        <button class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
                      </div>
              </div>
                <hr>
                    <div class="cart">
                    <table class="adminpage-memberList-table">
                  <form>
                    <thead class="adminpage-memberList-thead">
                      <tr class="adminpage-memberList-thead_tr">
                        <th style="width: 5%;" class="adminpage-memberList-th dummy"><input type="checkbox"
                            onclick='selectAllmemberList(this)'></th>
                        <th style="width: 15%;" class="adminpage-memberList-th dummy">회원명</th>
                        <th style="width: 50%;" class="adminpage-memberList-th dummy">회원정보</th>
                        <th style="width: 15%;" class="adminpage-memberList-th dummy">가입일</th>
                        <th style="width: 15%;" class="adminpage-memberList-th dummy">관리</th>
                      </tr>
                    </thead>
                    <tbody class="adminpage-memberList-tbody">
                                  <!--반복코드 tr기준으로 반복하시면됩니다.-->
          
                      <tr class="adminpage-memberList-detail">
                        <td>
                          <div><input type="checkbox" name="adminpage-memberList-user"></div>
                        </td>
                        <td class="adminpage-memberList-td">
                          <p class="adminpage-memberList-username">회원 이름 <br> (아이디)</p>
                        </td>
                        <td class="adminpage-memberList-td">
                          <div class="adminpage-memberList-userdetail">
                            <p>연락처 : 010-1234-5678</p>
                            <p>메일 : 0123456790@gmail.com</p>
                            <p>주소 : 기본주소 + 상세주소</p>
                          </div>
                        </td>
                        <td class="adminpage-memberList-td">
                          <p class="adminpage-memberList-userdate">2022.12.31</p>
                        </td>
                        <td class="adminpage-memberList-td">
                          <button class="adminpage-memberList-btn adminpage-memberList-userdelete">삭제하기</button>
                          <button class="adminpage-memberList-btn adminpage-memberList-userupdate">수정하기</button>
                        </td>
                      </tr>
          
                    </tbody>
                    <tfoot>
                      <tr>
                        <td style="height:50px; padding-left: 12px; border: none;" colspan="3"><input type="checkbox"  name="adminpage-memberList-user"> <button
                            class="adminpage-memberList-userdeleteall">선택 회원 정보 모두 삭제</button>
                        </td>
                      </tr>
                    </tfoot>
                  </form>
                </table>
              </div>
              </div>
            </div>