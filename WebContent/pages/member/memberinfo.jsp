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
<link href="/single/common/styles/registration/bootstrap.min.css"
	rel="stylesheet">
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
.info {
	font-size: 15pt;
	color: #666666;
}
</style>
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
						<img src="/single/images/irene.png" class="avatar img-circle img-thumbnail">
					</div>
					<hr/>
					<br>

					<ul class="list-group">
						<li class="list-group-item text-muted">소모임<i
							class="fa fa-dashboard fa-1x"></i></li>
						<li class="list-group-item text-right"><span
							class="pull-left"><strong><a href="">구로1동</a></strong></span>5</li>
						<li class="list-group-item text-right"><span
							class="pull-left"><strong><a href="">양파나눔</a></strong></span>3</li>
						<li class="list-group-item text-right"><span
							class="pull-left"><strong><a href="">축제</a></strong></span>7</li>
					</ul>

					<div class="panel panel-default">
						<div class="panel-heading">Social Media</div>
						<div class="panel-body">
							<i class="fa fa-facebook fa-2x"></i> <i
								class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i>
							<i class="fa fa-pinterest fa-2x"></i> <i
								class="fa fa-google-plus fa-2x"></i>
						</div>
					</div>

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
										<hr />
										<div>
											<label class="info">전화번호</label>
										</div>
										<p>010-0000-0000</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">비상연락처</label>
										</div>
										<p> 010-1111-1111 </p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">Email</label>
										</div>
										<p>info@support.com</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">비상연락설정</label>
										</div>
										<p> 켬or끔 </p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">포인트</label>
										</div>
										<p>1000</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">누적포인트</label>
										</div>
										<p>2000</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">회원등급</label>
										</div>
										<p>등급이름</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">성향</label>
										</div>
										<p> 성향나열하고 </p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr />
										<div>
											<label class="info">블랙리스트신고횟수</label>
										</div>
										<p>10블랙리스트되면블랙리스트인지아닌지</p>
									</div>
								</div>
							<hr>
						
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<a href="/single/pages/member/infoupdate.jsp" class="btn btn-danger pull-right"><i class="glyphicon glyphicon-remove">회원탈퇴</i></a>
									<a href="/single/pages/member/infoupdate.jsp" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-edit">회원정보수정</i></a>
								</div>
							</div>
						</form>

					</div>
					<!--/tab-pane-->
				</div>
				<!--/tab-content-->

			</div>
			<!--/col-9-->
		</div>
		<!--/row-->
	</div>

	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>