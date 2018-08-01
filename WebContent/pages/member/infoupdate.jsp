<%@page import="member.dto.MemberDTO"%>
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
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/single/common/styles/member/update.css" rel="stylesheet">
<script src="/single/common/scripts/member/member.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
<% MemberDTO user = (MemberDTO)request.getAttribute("user"); %>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container" class="container bootstrap snippet">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<div class="page-header">
				<h1>회원정보</h1>
			</div>
			<div class="row">
				<div class="col-sm-10">
					<h1><%=user.getMe_id() %></h1>
				</div>
			</div>
			<form class="form" action="/single/memberupdate.do" method="post"
								id="registrationForm" enctype="multipart/form-data">
			<div class="row">
				<div class="col-sm-3">
					<!--left col-->
					<div class="text-center">
						<img src="/single/upload/<%=user.getMe_img() %>"
							class="avatar img-circle img-thumbnail" id="userImg">
						<input type="file" name="img" id="fileinput"
						onchange="document.getElementById('userImg').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
					</div>
					<hr/>
					<br>
				</div>
				<!--/col-3-->
				<div class="col-sm-9">
					<div class="tab-content">
						<div class="tab-pane active" id="home">
							<hr>
								<div class="form-group">
									<div class="col-xs-6">
										<div>
											<label class="info">성명</label>
										</div>
										<p><%=user.getMe_name() %></p>
										<input type="hidden" name="id" value="<%=user.getMe_id() %>"/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<div>
											<label class="info">생년월일</label>
										</div>
										<p><%=user.getMe_birth() %></p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">Password</label> <input
											type="password" class="form-control" name="pass"
											id="pass" placeholder="password"  maxlength="15"
											title="enter your password.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">Password확인</label> <input
											type="password" class="form-control" name="pwdChk"
											id="pwdChk" placeholder="password"  maxlength="15"
											title="enter your password.">
										<p class="help-block" id="pwMsg">비밀번호를 한번 더 입력해주세요.</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">전화번호</label> 
										<input type="text"
											class="form-control" name="phone" id="phone"  maxlength="13"
											placeholder="<%=user.getMe_phone() %>"
											title="enter your phone number if any.">
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">비상연락처</label> 
										<input type="text"
											class="form-control" name="telnum" id="telnum"  maxlength="13"
											placeholder="<%=user.getMe_telnum() %>"
											title="enter your mobile number if any.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">Email</label> <input type="email"
											class="form-control" name="email" id="email"
											placeholder="<%=user.getMe_email() %>" title="enter your email.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">비상연락설정</label> 
										<div class="radio">
										<label> <input type="radio" name="telchk" value="켬" <%if(user.getMe_telchk().equals("켬")){%> checked<%} %>/>켬</label> 
										<label> <input type="radio" name="telchk" value="끔" <%if(user.getMe_telchk().equals("끔")){%> checked<%} %>/>끔</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<hr/>
										<label class="info">주소</label> <input type="text"
											class="form-control" name="addr" id="addr"
											placeholder="<%=user.getMe_addr() %>" title="enter your addr">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<hr/>
										<label class="info">성향</label> 
										<div><label class="col-md-3 control-label">관심사</label></div>
										<div class="col-md-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="character" value="neighborhood"/>동네</label> 
											<label> <input type="checkbox" name="character" value="food"/>음식</label> 
											<label> <input type="checkbox" name="character" value="buy"/>공동구매</label>
											<label> <input type="checkbox" name="character" value="event"/>축제</label>
											<label> <input type="checkbox" name="character" value="movie"/>영화</label>
											<label> <input type="checkbox" name="character" value="musical"/>뮤지컬</label>
											<label> <input type="checkbox" name="character" value="exhibition "/>전시회</label>
										</div>
										</div>
									</div>
								</div>
								<div class="form-group">
										<button class="btn btn-primary pull-right" type="submit" id="updatebtn"><i class="glyphicon glyphicon-edit">회원정보수정</i></button>
									</div>
								</div>
							
						</div>
				</div>
				<!--/tab-content-->
			</div>
			<!--/col-9-->
		</div>
		</form>
		<!--/row-->
		</div>
	</div>

	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>