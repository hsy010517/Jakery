<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- layer popup content -->
<div class="layerPopup" id="layer_popup" style="visibility: visible;">
    <div class="layerBox">
        <h4 class="title">&nbsp&nbsp</h4>
        <div class="cont">
            <p>
<img src="/image/popup.png" width=500 height=600 usemap="#popup" alt="event page" onclick="location.href='/auth/event'">
            </p>
        </div>
          <form name="pop_form">
        <div id="pop_check" ><input type="checkbox" name="pop_check" value="pop_check" id='pop_check' >
        <label for="chkbox">&nbsp&nbsp오늘 하루동안 보지 않기</label></div>
		<div id="close_pop" ><a href="javascript:closePop();">닫기</a></div>    
		</form>
	</div>
</div>