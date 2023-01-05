<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="adminpage-memberList-container">
   <div class="adminpage-memberList-wrapper">
      <a class="adminpage-memberList-logo" href="/"><span
         style="color: #ffc730;">M</span><span style="color: #303030;">EMBER</span><span
         style="color: #ffc730;"> L</span><span style="color: #303030;">IST</span></a>
      <div class="adminpage-memberList-head">
         <div class="search-box-admin">
            <input type="text" id="search-admin-member"
               class="search-admin-member" placeholder="회원정보 검색"
               onkeyup="filter()">
            <button class="search-btn">
               <i class="fa-solid fa-magnifying-glass"></i>
            </button>
         </div>
      </div>
      <hr>
      <div class="cart">
         <table class="adminpage-memberList-table">
            <form>
               <thead class="adminpage-memberList-thead">
                  <tr class="adminpage-memberList-thead_tr">
                     <th style="width: 5%;" class="adminpage-memberList-th dummy"><input
                        type="checkbox" onclick='selectAllmemberList(this)'></th>
                     <th style="width: 15%;" class="adminpage-memberList-th dummy">회원명</th>
                     <th style="width: 50%;" class="adminpage-memberList-th dummy">회원정보</th>
                     <th style="width: 15%;" class="adminpage-memberList-th dummy">가입일</th>
                     <th style="width: 15%;" class="adminpage-memberList-th dummy">관리</th>
                  </tr>
               </thead>
               <tbody class="adminpage-memberList-tbody">
                  <c:forEach items="${users}" var="userinfo">
                     <input type="hidden" id="userid" value="${userinfo.userid}">
                     <input type="hidden" id="username" value="${userinfo.username}">
                     <tr class="adminpage-memberList-detail">
                        <td>
                           <div>
                              <input type="checkbox" name="adminpage-memberList-user"
                                 value="${userinfo.userid}">
                           </div>
                        </td>
                        <td class="adminpage-memberList-td">
                           <p class="adminpage-memberList-username">
                              ${userinfo.username} <br> (${userinfo.userid})
                           </p>
                        </td>
                        <td class="adminpage-memberList-td">
                           <div class="adminpage-memberList-userdetail">
                              <p>메일 : ${userinfo.email}</p>
                              <p>주소 : ${userinfo.address}</p>
                           </div>
                        </td>
                        <td class="adminpage-memberList-td">
                           <p class="adminpage-memberList-userdate"><fmt:formatDate value="${userinfo.createDate}" pattern="yyyy-MM-dd"/></p>
                        </td>
                        <td class="adminpage-memberList-td">
                           <button
                              class="adminpage-memberList-btn adminpage-memberList-userdelete"
                              type="button" id="delete" value="${userinfo.userid}">삭제하기</button>
                           <button
                                 class="adminpage-memberList-btn adminpage-memberList-userupdate"
                                 type="button" id="update" value="${userinfo.userid}">수정하기</button>
                        </td>
                     </tr>
                  </c:forEach>
               </tbody>
               <tfoot>
                  <tr>
                     <td style="height: 50px; padding-left: 12px; border: none;"
                        colspan="3"><input type="checkbox"
                        name="adminpage-memberList-user" value="${userinfo.userid}">
                        <button class="adminpage-memberList-userdeleteall" type="button"
                           id="AdminDeletecheckbox">선택 회원 정보 모두 삭제</button></td>
                  </tr>
               </tfoot>
            </form>
         </table>
      </div>
   </div>
</div>
<script type="text/javascript" src="/js/user.js"></script>
</html>