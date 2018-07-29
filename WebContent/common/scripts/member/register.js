//달력, 생년월일
$(function() {
	$.datepicker.setDefaults({
		closeText : "닫기",
		prevText : "이전달",
		nextText : "다음달",
		currentText : "오늘",
		monthNames : [ '1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)', '5월(MAY)',
				'6월(JUN)', '7월(JUL)', '8월(AUG)', '9월(SEP)', '10월(OCT)',
				'11월(NOV)', '12월(DEC)' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShot : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],

		changeMonth : true, // 월 변경가능
		changeYear : true, // 년 변경가능
		showMonthAfterYear : true, // 년 뒤에 월 표시
		dateFormat : "yy/mm/dd", // 년월일 표시방법
		firstDay : 1, // 0: 일요일 부터 시작, 1:월요일 부터 시작
		autoSize : true, // default: false, input 사이즈를 자동으로 리사이즈.
		showAnim : "fold", // default: show , fold
		showWeek : false, // 주차 = true : 보이기 / false : 숨기기
		weekHeader : "주차", // default: Wk, 주차 헤드 부분의 명칭 설정
		showButtonPanel : true, // 하단에 Today, Done 버튼 Display
		gotoCurrent : false, // default: false, true일 경우에는 Today버튼 클릭 시 현재
								// 일자로 이동하지 못함
	});
	$("#datepicker").datepicker();
});

//비밀번호 일치확인
$(document).ready(function(){
	$("#pwdChk").on("keyup",function(){
		if((myform.me_pwd.value)==(myform.pwdChk.value)){
			document.getElementById("pwMsg").innerHTML = "비밀번호가 일치합니다";
		}else{
			document.getElementById("pwMsg").innerHTML = "비밀번호가 일치하지 않습니다. 다시 확인해 주세요.";
		}
	});
});

//전화번호 자동하이픈
$(document).ready(function () {
	   $(function () {
	            $("#me_phone").keydown(function (event) {
	             var key = event.charCode || event.keyCode || 0;
	             $text = $(this); 
	             if (key !== 8 && key !== 9) {
	                 if ($text.val().length === 3) {
	                     $text.val($text.val() + '-');
	                 }
	                 if ($text.val().length === 8) {
	                     $text.val($text.val() + '-');
	                 }
	             }
	             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
	         })
	         $("#me_telnum").keydown(function (event) {
	             var key = event.charCode || event.keyCode || 0;
	             $text = $(this); 
	             if (key !== 8 && key !== 9) {
	                 if ($text.val().length === 3) {
	                     $text.val($text.val() + '-');
	                 }
	                 if ($text.val().length === 8) {
	                     $text.val($text.val() + '-');
	                 }
	             }
	             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
	         })
	   });
});

//아이디 중복확인
var xhr
function IdCheck() {
	//alert("test");
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = idCheckMsg;
	
	xhr.open("POST","/single/idcheck.do",true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send("id="+myform.me_id.value);
}
function idCheckMsg() {
	if(xhr.readyState==4&&xhr.status==200){
		document.getElementById("idChk").innerHTML = xhr.responseText;
	}
}