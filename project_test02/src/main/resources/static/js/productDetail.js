
    //수량 옵션
    $('._count :button').on({
      'click': function (e) {
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
          }
        } else {
          if (now < max) {
            num = now + 1;
          }
        }
        if (num != now) {
          $count.val(num);
        }
      }
    });

  $('.product-sub-div .product-sub-head > ul > li').click(function() {
  // 클릭된 당사자 => this
  // 이 함수를 실행한 주어 => this
  // $(this) => 이거 포장해주세요.
  // 굳이 포장을 하는 이유
  var $클릭된_녀석 = $(this);
  
  var $part5 = $클릭된_녀석.closest('.product-sub-div');
  //var $part5 = $클릭된_녀석.parent().parent().parent(); // $part5를 얻는 또 다른 방법
  // 오직 $part5 안에서만 .body 로 검색해서 나온 것들 포장해주세요.
  var $body = $part5.find('.product-sub-body');
  
  // 기존에 active 가진 녀석에게 active 빼앗기
  $클릭된_녀석.parent().find('.product-sub-active').removeClass('product-sub-active');
  $클릭된_녀석.addClass('product-sub-active');
  
  // 클릭된 녀석이 형제 중에서 몇 번째 인지 확인(참고로 0부터 셉니다.);
  var index = $클릭된_녀석.index();
  
  // part-5 라는 클래스를 가진 나의 조상중에 나랑 가장 가까운 1개를 포장해주세요.
  
  // 기존의 active 된 요소들에서 active 제거
  $body.find('.product-sub-active').removeClass('product-sub-active');
  
  $body.find('div:nth-child(' + (index + 1) + ')').addClass('product-sub-active');
});

$(".product-sub-head ul li").on("click", function () {
  $(".product-sub-head ul li").css('background-color', 'inherit');
  $(this).css('background-color', '#ffc730');
  $(".product-sub-head ul li").css('border', 'inherit');
  $(this).css('border', '#ffc730');
});