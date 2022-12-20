function kakaopost() {
      new daum.Postcode({
          oncomplete: function(data) {
             document.querySelector("#zipcode").value = data.zonecode;
             document.querySelector("#address").value =  data.address;
          }
      }).open();
  }
  //메모 박스 연동 스크립트
  $(document).ready(function() {
  $("#myDropdown").change(function() {
    var selectedValue = $(this).val();
    $("#txtBox").val(selectedValue);
  });
  // $('#orderForm-deliveryfield').hide();
  // $('#orderForm-reservation').hide();
});

//radio 버튼에 따라 배송/예약폼 띄우기


function setDisplay(){
    if($('input:radio[id=select-pickup]').is(':checked')){
      $('#orderForm-reservation').show();
        $('#orderForm-deliveryfield').hide();
    }else{
      $('#orderForm-reservation').hide();
        $('#orderForm-deliveryfield').show();
    }
}
 /**
 * 
 */