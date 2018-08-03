function agreeCheck(){
    if(!document.myform.dropoutAgree.checked){
        alert("회원탈퇴 약관에 동의해주세요.");
       	return false;
    }
}