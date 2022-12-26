
    window.onload = function () {
      chk.click();
    }

    $('.adminpage-sub-div .adminpage-sub-head > ul > li').click(function () {
      // 클릭된 당사자 => this
      // 이 함수를 실행한 주어 => this
      // $(this) => 이거 포장해주세요.
      // 굳이 포장을 하는 이유
      var $클릭된_녀석 = $(this);
      var $part5 = $클릭된_녀석.closest('.adminpage-sub-div');
      //var $part5 = $클릭된_녀석.parent().parent().parent(); // $part5를 얻는 또 다른 방법
      // 오직 $part5 안에서만 .body 로 검색해서 나온 것들 포장해주세요.
      var $body = $part5.find('.adminpage-sub-body');
      // 기존에 active 가진 녀석에게 active 빼앗기

      $클릭된_녀석.parent().find('.adminpage-sub-active').removeClass('adminpage-sub-active');
      $클릭된_녀석.addClass('adminpage-sub-active');

      // 클릭된 녀석이 형제 중에서 몇 번째 인지 확인(참고로 0부터 셉니다.);
      var index = $클릭된_녀석.index();

      // part-5 라는 클래스를 가진 나의 조상중에 나랑 가장 가까운 1개를 포장해주세요.

      // 기존의 active 된 요소들에서 active 제거
      $body.find('.adminpage-sub-active').removeClass('adminpage-sub-active');

      $body.find('div:nth-child(' + (index + 1) + ')').addClass('adminpage-sub-active');
    });

    $(".adminpage-sub-head ul li").on("click", function () {
      $(".adminpage-sub-head ul li").css('background-color', 'inherit');
      $(this).css('background-color', '#ffc730');
      $(".adminpage-sub-head ul li").css('border', 'inherit');
      $(this).css('border', '#ffc730');
    });


  /*전체선택*/
  
  function selectAllmemberList(selectAllmemberList)  {
const checkboxes 
     = document.getElementsByName('adminpage-memberList-user');

checkboxes.forEach((checkbox) => {
  checkbox.checked = selectAllmemberList.checked;
})
}

function selectAllproduct1(selectAllproduct1)  {
const checkboxes 
     = document.getElementsByName('adminpage-productList-product1');

checkboxes.forEach((checkbox) => {
  checkbox.checked = selectAllproduct1.checked;
})
}

function selectAllproduct2(selectAllproduct2)  {
const checkboxes 
     = document.getElementsByName('adminpage-productList-product2');

checkboxes.forEach((checkbox) => {
  checkbox.checked = selectAllproduct2.checked;
})
}

function selectAllproduct3(selectAllproduct3)  {
const checkboxes 
     = document.getElementsByName('adminpage-productList-product3');

checkboxes.forEach((checkbox) => {
  checkbox.checked = selectAllproduct3.checked;
})
}

function selectAllbuy(selectAllbuy)  {
const checkboxes 
     = document.getElementsByName('adminpage-productList-buy');

checkboxes.forEach((checkbox) => {
  checkbox.checked = selectAllbuy.checked;
})
}

  $("#adminselect option:selected").val();
  $("select[name=adminselect]").val();
  $("#adminselect option").index($("#adminselect option:selected"));

$(document).ready(function() {
  $('#adminselect').change(function() {
    var result = $('#adminselect option:selected').val();
    if (result == 'option1') {
      $('.admin-product1').show();
      $('.admin-product2').hide();
      $('.admin-product3').hide();
    }
    if (result == 'option2') {
      $('.admin-product2').show();
      $('.admin-product1').hide();
      $('.admin-product3').hide();
    }
    if (result == 'option3') {
      $('.admin-product3').show();
      $('.admin-product1').hide();
      $('.admin-product2').hide();
    }
    if (result == 'all') {
      $('.admin-product3').show();
      $('.admin-product1').show();
      $('.admin-product2').show();
    }
  }); 
}); 

  /*필터*/ 

  // function filter() {
  //   let search = document.getElementById("search-admin-product").value.toLowerCase();
  //   let listInner = document.getElementsByClassName("listInner");

  //   for (let i = 0; i < listInner.length; i++) {
  //     productname = listInner[i].getElementsByClassName("admin-productname");
  //     country = listInner[i].getElementsByClassName("country");
  //     if (productname[0].innerHTML.toLowerCase().indexOf(search) != -1 ||
  //       country[0].innerHTML.toLowerCase().indexOf(search) != -1
  //     ) {
  //       listInner[i].style.display = "flex"
  //     } else {
  //       listInner[i].style.display = "none"
  //     }
  //   }
  // }
