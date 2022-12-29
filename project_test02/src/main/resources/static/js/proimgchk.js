$("input[type='file']").on("change", function(e) {

	let mainfileInput = $('input[name="productimgfile-main"]');
	let mainfileList = mainfileInput[0].files;
	let mainfileObj = mainfileList[0];

	if (!fileCheck(mainfileObj.name)) {
		return false;
	}
});

/* var, method related with attachFile */
let regex = new RegExp("(.*?)\.(jpg|png)$");

function fileCheck(fileName) {

	if (!regex.test(fileName)) {
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}

	return true;

}