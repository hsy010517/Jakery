    window.onload = function () {
      chk.click();
    }

    $('.mypage-sub-div .mypage-sub-head > ul > li').click(function () {
      // 클릭된 당사자 => this
      // 이 함수를 실행한 주어 => this
      // $(this) => 이거 포장해주세요.
      // 굳이 포장을 하는 이유
      var $클릭된_녀석 = $(this);
      var $part5 = $클릭된_녀석.closest('.mypage-sub-div');
      //var $part5 = $클릭된_녀석.parent().parent().parent(); // $part5를 얻는 또 다른 방법
      // 오직 $part5 안에서만 .body 로 검색해서 나온 것들 포장해주세요.
      var $body = $part5.find('.mypage-sub-body');
      // 기존에 active 가진 녀석에게 active 빼앗기

      $클릭된_녀석.parent().find('.mypage-sub-active').removeClass('mypage-sub-active');
      $클릭된_녀석.addClass('mypage-sub-active');

      // 클릭된 녀석이 형제 중에서 몇 번째 인지 확인(참고로 0부터 셉니다.);
      var index = $클릭된_녀석.index();

      // part-5 라는 클래스를 가진 나의 조상중에 나랑 가장 가까운 1개를 포장해주세요.

      // 기존의 active 된 요소들에서 active 제거
      $body.find('.mypage-sub-active').removeClass('mypage-sub-active');

      $body.find('div:nth-child(' + (index + 1) + ')').addClass('mypage-sub-active');
    });

    $(".mypage-sub-head ul li").on("click", function () {
      $(".mypage-sub-head ul li").css('background-color', 'inherit');
      $(this).css('background-color', '#ffc730');
      $(".mypage-sub-head ul li").css('border', 'inherit');
      $(this).css('border', '#ffc730');
    });

  /*상품 개수*/
  $('._count :button').on({
    'click': function (e) {
      const countElement = document.getElementById('mypage-count-result');
      const priceElement = document.getElementById('mypage-price');
      const resultElement = document.getElementById('mypage-price-result');
      let number = countElement.innerText;
      let price = parseInt(priceElement.innerText);
      e.preventDefault();
      var $count = $(this).parent('._count').find('.inp');
      var now = parseInt($count.val());
      var min = 1;
      var max = 999;
      var num = now;
      if ($(this).hasClass('minus')) {
        var type = 'm';
      } else {
        var type = 'p';
      }
      if (type == 'm') {
        if (now > min) {
          num = now - 1;
          number = parseInt(number) - 1;
        }
      } else {
        if (now < max) {
          num = now + 1;
          number = parseInt(number) + 1;
        }
      }
      if (num != now) {
        $count.val(num);
        number = parseInt(number);
      }
      countElement.innerText = number;
      resultElement.innerText = number*price;
    }
  });


  /*전체선택*/
  
  function selectAll(selectAll)  {
const checkboxes 
     = document.getElementsByName('cart-product');

checkboxes.forEach((checkbox) => {
  checkbox.checked = selectAll.checked;
})
}