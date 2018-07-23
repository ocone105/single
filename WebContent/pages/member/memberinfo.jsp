<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registration</title>
<link href="/single/common/styles/registration/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- 플로팅배너 -->
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<div class="page-header">
				<h1>회원정보</h1>
			</div>
			<form class="form-horizontal" action="infoupdate.jsp">
				<!-- 회원사진 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">프로필사진</label>
					<div class="col-sm-6">
						<img src="" id="img" style="width: 100px">
					</div>
				</div>

				<!-- 아이디 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">아이디</label>
					<div class="col-sm-6">ID</div>
				</div>

				<!-- 이름 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">성명</label>
					<div class="col-sm-6">성명</div>
				</div>

				<!-- 생년월일 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">생년월일</label>
					<div class="col-sm-6">2000/01/01</div>
				</div>

				<!-- 성별 -->
				<div class="form-group">
					<label class="col-md-3 control-label">성별</label>
					<div class="col-md-6">성별</div>
				</div>

				<!-- 전화번호 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">전화번호</label>
					<div class="col-sm-6">010-0000-000</div>
				</div>

				<!-- 비상연락처 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">비상연락처</label>
					<div class="col-sm-6">010-0000-000</div>
				</div>

				<!-- 비상연락 선택 -->
				<div class="form-group">
					<label class="col-md-3 control-label">비상연락설정</label>
					<div class="col-md-6">비상연락설정</div>
				</div>

				<!-- 이메일 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">이메일</label>
					<div class="col-sm-6">이메일</div>
				</div>

				<!-- 주소 -->
				<div class="form-group">
					<label class="col-sm-3 control-label">주소</label>
					<div class="col-sm-6">주소</div>
				</div>

				<!-- 성향 -->
				<div class="form-group">
					<label class="col-md-3 control-label">성향</label>
					<div class="col-md-6"><label>관심사</label>선택한것들</div>
					<div class="col-md-6"><label>선호인원</label>선호인원</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-6 text-center">
						<button class="btn btn-primary" type="submit">수정</button>
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