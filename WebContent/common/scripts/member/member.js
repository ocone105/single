//��й�ȣ ��ġȮ��
$(document).ready(function(){
	$("#pwdChk").on("keyup",function(){
		if((myform.me_pwd.value)==(myform.pwdChk.value)){
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ�մϴ�";
		}else{
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���.";
		}
	});
	$("#pass").on("keyup",function(){
		if((myform.me_pwd.value)==(myform.pwdChk.value)){
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ�մϴ�";
		}else{
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���.";
		}
	});
});

//��ȭ��ȣ �ڵ�������
$(document).ready(function () {
	   $(function () {
	            $("#phone").keydown(function (event) {
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
	         $("#telnum").keydown(function (event) {
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


//��й�ȣ��ġ���� Ȯ��
function update(){
	if(document.myform.me_pwd.value==document.myform.pwdChk.value){
		return true;
	}else{
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		return false;
	}
}
