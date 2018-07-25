<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="/single/common/styles/registration/registration.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/single/common/scripts/member/register.js"></script>
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<div class="page-header">
				<h1>
					회원가입 <small>horizontal form</small>
				</h1>
			</div>
			<form class="form-horizontal" action="/single/memberinsert.do" method="POST" name="myform">
				<!-- 회원사진 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">프로필사진</label>
					<div class="col-sm-9">
						<img class="img-circle" src="/single/images/basicUser.png" id="me_img"> <input
							type="file" name="me_img"
							onchange="document.getElementById('me_img').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
					</div>
				</div>

				<!-- 아이디 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">아이디</label>
					<span class="col-sm-4">
						<input class="form-control" name="me_id" id="me_id" type="text"
							placeholder="ID">
					</span>
					<span class="col-sm-2">
						<button class="btn" type="button">중복확인</button>
					</span>
				</div>

				<!-- 비밀번호 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_pwd" id="me_pwd" type="password"
							placeholder="Password">
						<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
					</div>
				</div>
				<!-- 비밀번호확인 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">비밀번호 확인</label>
					<div class="col-sm-6">
						<input class="form-control" name="pwdChk" id="pwdChk"
							type="password" placeholder="Password Check">
						<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
					</div>
				</div>

				<!-- 이름 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">성명</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_name" id="me_name" type="text"
							placeholder="Name">
					</div>
				</div>

				<!-- 생년월일 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">생년월일</label>
					<div class="col-sm-6">
						<p><input class="form-control" type="text" id="datepicker" name="me_birth" ></p>
					</div>
				</div>

				<!-- 성별 -->
				<div class="form-group">
					<label class="col-md-3 control-label">성별</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="me_gender" value="male" checked/>남자</label> 
							<label> <input type="radio" name="me_gender" value="female" />여자
							</label>
						</div>
					</div>
				</div>

				<!-- 전화번호 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">전화번호</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_phone" id="me_phone" type="text"
							placeholder="010-0000-0000">
					</div>
				</div>

				<!-- 비상연락처 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">비상연락처</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_telnum" id="me_telnum" type="text"
							placeholder="010-0000-0000">
					</div>
				</div>

				<!-- 비상연락 선택 -->
				<div class="form-group">
					<label class="col-md-3 control-label">비상연락설정</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="me_telchk" value="T" checked/>켬
							</label> <label> <input type="radio" name="me_telchk" value="F" />끔
							</label>
						</div>
					</div>
				</div>

				<!-- 이메일 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">이메일</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_email" id="me_email" type="email"
							placeholder="이메일">
					</div>
				</div>

				<!-- 주소 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">주소</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_addr" id="me_addr" type="text"
							placeholder="주소">
					</div>
				</div>

				<!-- 성향 -->
				<div class="form-group">
					<label class="col-md-3 control-label">성향</label>
					<label class="col-md-1 control-label">관심사</label>
					<div class="col-md-4">
						<div class="checkbox">
							<label> <input type="checkbox" name="me_character" value="neighborhood"/>동네</label> 
							<label> <input type="checkbox" name="me_character" value="food"/>음식</label> 
							<label> <input type="checkbox" name="me_character" value="buy"/>공동구매</label>
							<label> <input type="checkbox" name="me_character" value="event"/>축제</label>
							<label> <input type="checkbox" name="me_character" value="movie"/>영화</label>
							<label> <input type="checkbox" name="me_character" value="musical"/>뮤지컬</label>
							<label> <input type="checkbox" name="me_character" value="exhibition"/>전시회</label>
						</div>
					</div>
				</div>
				
				<!-- <div class="form-group">
					<label class="col-sm-3 control-label">휴대폰번호</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="tel" class="form-control" id="inputNumber"
								placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
								<button class="btn btn-success">
									인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">인증번호 확인</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input class="form-control" id="inputNumberCheck" type="text"
								placeholder="인증번호"> <span class="input-group-btn">
								<button class="btn btn-success" type="button">
									인증번호 확인<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
						<p class="help-block">전송된 인증번호를 입력해주세요.</p>
					</div>
				</div> -->

				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="submit">회원가입</button>
						<button class="btn btn-danger" type="reset">가입취소</button>
					</div>
				</div>
			</form>
		</div>
		</div>
		<div class="wrapper row3">
			<jsp:include page="/pages/template/Footer.jsp" />
		</div>
</body>
</html>