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
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="/single/common/styles/registration/bootstrap.min.css" rel="stylesheet">
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-info" id="panelinfo" >
						<div class="panel-heading" id="panelhead" >
							<h3 class="panel-title">회원아이디</h3>
						</div>
						<div class="panel-body" >
							<div class="row" >
								<div class="col-md-3" align="center">
									<img class="img-circle" id="userPic" alt="User Pic" src="/single/images/irene.png">
								</div>
								<div class=" col-md-9" >
									<table class="table table-user-information" >
										<tbody>
											<tr>
												<td>성명</td>
												<td>아이린</td>
											</tr>
											<tr>
												<td>생년월일</td>
												<td>2000/01/01</td>
											</tr>
											<tr>
												<td>전화번호</td>
												<td>010-0000-0000</td>
											</tr>
											<tr>
												<td>비상연락처</td>
												<td>010-1111-1111</td>
											</tr>
											<tr>
												<td>비상연락설정</td>
												<td>켬or끔</td>
											</tr>
											<tr>
												<td>Email</td>
												<td>info@support.com</td>
											</tr>
											<tr>
												<td>포인트</td>
												<td>1000</td>
											</tr>
											<tr>
												<td>누적포인트</td>
												<td>2000</td>
											</tr>
											<tr>
												<td>회원등급</td>
												<td>등급이름</td>
											</tr>
											<tr>
												<td>참여소모임</td>
												<td>소모임나열</td>
											</tr>
											<tr>
												<td>성향</td>
												<td>성향나열하고</td>
											</tr>
											<tr>
												<td>블랙리스트신고횟수</td>
												<td>10블랙리스트되면블랙리스트인지아닌지</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<a href="/single/pages/member/infoupdate.jsp" class="btn btn-primary"><i class="glyphicon glyphicon-edit">회원정보수정</i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>