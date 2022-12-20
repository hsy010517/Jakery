
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