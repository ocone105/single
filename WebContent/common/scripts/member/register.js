//�޷�, �������
$(function() {
	$.datepicker.setDefaults({
		closeText : "�ݱ�",
		prevText : "������",
		nextText : "������",
		currentText : "����",
		monthNames : [ '1��(JAN)', '2��(FEB)', '3��(MAR)', '4��(APR)', '5��(MAY)',
				'6��(JUN)', '7��(JUL)', '8��(AUG)', '9��(SEP)', '10��(OCT)',
				'11��(NOV)', '12��(DEC)' ],
		monthNamesShort : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��',
				'9��', '10��', '11��', '12��' ],
		monthNames : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��',
				'10��', '11��', '12��' ],
		dayNamesMin : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
		dayNamesShot : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
		dayNames : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],

		changeMonth : true, // �� ���氡��
		changeYear : true, // �� ���氡��
		showMonthAfterYear : true, // �� �ڿ� �� ǥ��
		dateFormat : "yy/mm/dd", // ����� ǥ�ù��
		firstDay : 1, // 0: �Ͽ��� ���� ����, 1:������ ���� ����
		autoSize : true, // default: false, input ����� �ڵ����� ��������.
		showAnim : "fold", // default: show , fold
		showWeek : false, // ���� = true : ���̱� / false : �����
		weekHeader : "����", // default: Wk, ���� ��� �κ��� ��Ī ����
		showButtonPanel : true, // �ϴܿ� Today, Done ��ư Display
		gotoCurrent : false, // default: false, true�� ��쿡�� Today��ư Ŭ�� �� ����
								// ���ڷ� �̵����� ����
	});
	$("#datepicker").datepicker();
});

//��й�ȣ ��ġȮ��
$(document).ready(function(){
	$("#pwdChk").on("keyup",function(){
		if((myform.me_pwd.value)==(myform.pwdChk.value)){
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ�մϴ�";
		}else{
			document.getElementById("pwMsg").innerHTML = "��й�ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���.";
		}
	});
	$("#me_pwd").on("keyup",function(){
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
//���̵� �ߺ�Ȯ��
var xhr
var idInfo
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
		if(xhr.responseText==1){
			document.getElementById("idChk").innerHTML = "��밡���� ���̵��Դϴ�.";
		}else{
			document.getElementById("idChk").innerHTML = xhr.responseText;
		}
		idInfo = xhr.responseText;
	}
}

//�̸��� ��ȿ���˻� �� â ����
function emailcheck(me_email) {
	// ��ȿ�� �˻�
	if (!myform.me_email.value) {
		alert("�̸����� Ȯ�����ּ���");
		myform.me_email.focus();
		return;
	}
	// ������ ���� ��â���� �̵�
	var url = "/single/pages/member/emailCheck.jsp?me_email=" + me_email;
	open(url, "emailwindow", "statusbar=no, scrollbar=no, menubar=no, width=400, height=200");
}

//�̸�������
function confirmemail(emailconfirm_value, authNum){
    // �Է��� ���� ���ų�, �����ڵ尡 ��ġ���� ���� ���
	if(!emailconfirm_value || emailconfirm_value != authNum){
		alert("������ȣ�� ��ġ�����ʽ��ϴ�.");
		emailconfirm_value="";
		self.close();
    // �����ڵ尡 ��ġ�ϴ� ���
	}else if(emailconfirm_value==authNum){
		alert("�����Ǿ����ϴ�.");
		emailconfirm_value="";
		opener.setOk(1);
		self.close();
	}
}
myok=0;
function setOk(ok){
 myok = ok;
}
//ȸ������ ��ġ�����ޱ� + ��й�ȣ��ġ���� ������ ȸ������ �ȵ� + �ߺ��� ���̵� ȸ�����Ծȵ� + �̸��������ؾ���.
function join(){
	if(idInfo==1){
		if(document.myform.me_pwd.value==document.myform.pwdChk.value){
			if(myok==1){
				// HTML5�� geolocation���� ����� �� �ִ��� Ȯ���մϴ� 
				if (navigator.geolocation) {
				    // GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
				    navigator.geolocation.getCurrentPosition(function(position) {
				        lat = position.coords.latitude; // ����
				        lon = position.coords.longitude; // �浵
				       	document.getElementById("lat").value = lat;
				       	document.getElementById("lon").value = lon;
				       	alert("ȸ������ �Ϸ�");
				    	document.myform.submit();
				      });
				} else { // HTML5�� GeoLocation�� ����� �� ������ ��Ŀ ǥ�� ��ġ�� ���������� ������ �����մϴ�
					   	lat = 33.450701; // ����
				       	lon = 126.570667; // �浵
				    	document.getElementById("lat").value = lat;
				       	document.getElementById("lon").value = lon;
				     	alert("ȸ������ �Ϸ�");
				    	document.myform.submit();
				}
				return false;
			}else{
				alert("�̸��������� �Ϸ����ּ���");
				return false;
			}
		}else{
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			return false;
		}
	}else{
		alert("�̹� �����ϴ� ���̵��Դϴ�.");
		return false;
	}
}



