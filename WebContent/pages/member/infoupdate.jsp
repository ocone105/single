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
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/single/common/styles/member/update.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container" class="container bootstrap snippet">
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<div class="page-header">
				<h1>회원정보</h1>
			</div>
			<div class="row">
				<div class="col-sm-10">
					<h1>User ID</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3">
					<!--left col-->
					<div class="text-center">
						<img src="/single/images/irene.png"
							class="avatar img-circle img-thumbnail" id="userImg">
						<input type="file" name="img" id="fileinput"
						onchange="document.getElementById('userImg').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
					</div>
					</hr>
					<br>
				</div>
				<!--/col-3-->
				<div class="col-sm-9">
					<div class="tab-content">
						<div class="tab-pane active" id="home">
							<hr>
							<form class="form" action="##" method="post"
								id="registrationForm">
								<div class="form-group">
									<div class="col-xs-6">
										<div>
											<label class="info">성명</label>
										</div>
										<p>아이린</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<div>
											<label class="info">생년월일</label>
										</div>
										<p>2000/01/01</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">Password</label> <input
											type="password" class="form-control" name="password"
											id="password" placeholder="password"
											title="enter your password.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">Password확인</label> <input
											type="password" class="form-control" name="password"
											id="password" placeholder="password"
											title="enter your password.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">전화번호</label> 
										<input type="text"
											class="form-control" name="phone" id="phone"
											placeholder="010-0000-0000"
											title="enter your phone number if any.">
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">비상연락처</label> 
										<input type="text"
											class="form-control" name="mobile" id="mobile"
											placeholder="010-1111-1111"
											title="enter your mobile number if any.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">Email</label> <input type="email"
											class="form-control" name="email" id="email"
											placeholder="you@email.com" title="enter your email.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">비상연락설정</label> 
										<div class="radio">
										<label> <input type="radio" name="telChk" value="T" />켬
										</label> <label> <input type="radio" name="telChk" value="F" />끔
										</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<hr/>
										<label class="info">성향</label> 
										<div><label class="col-md-3 control-label">관심사</label></div>
										<div class="col-md-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="interest" value="neighborhood"/>동네</label> 
											<label> <input type="checkbox" name="interest" value="food"/>음식</label> 
											<label> <input type="checkbox" name="interest" value="buy"/>공동구매</label>
											<label> <input type="checkbox" name="interest" value="event"/>축제</label>
											<label> <input type="checkbox" name="interest" value="movie"/>영화</label>
											<label> <input type="checkbox" name="interest" value="musical"/>뮤지컬</label>
											<label> <input type="checkbox" name="interest" value="exhibition "/>전시회</label>
										</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<a href="#" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-edit">회원정보수정</i></a>
									</div>
								</div>
							</form>
						</div>
				
				</div>
				<!--/tab-content-->

			</div>
			<!--/col-9-->
		</div>
		<!--/row-->
		</div>
	</div>

	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>