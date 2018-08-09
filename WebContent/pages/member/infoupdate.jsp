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
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/single/common/styles/member/update.css" rel="stylesheet">
<script src="/single/common/scripts/member/member.js"></script>
</head>
<body>
<%
	MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	String str = loginUser.getMe_character();
	String[] character = null;
	int size = 0;
	if(str!=null){
		character = str.split(",");
		size = character.length;
	}
%>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container" class="container bootstrap snippet">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<div class="page-header">
				<h1>ȸ������</h1>
			</div>
			<div class="row">
				<div class="col-sm-10">
					<h1><%=loginUser.getMe_id() %></h1>
				</div>
			</div>
			<form class="form" name="myform" action="/single/memberupdate.do" method="post"
								onsubmit="return update()" enctype="multipart/form-data">
			<div class="row">
				<div class="col-sm-3">
					<!--left col-->
					<div class="text-center">
						<img src="/single/upload/<%=loginUser.getMe_img() %>"
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
											<label class="info">����</label>
										</div>
										<p><%=loginUser.getMe_name() %></p>
										<input type="hidden" name="id" value="<%=loginUser.getMe_id() %>"/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<div>
											<label class="info">�������</label>
										</div>
										<p><%=loginUser.getMe_birth() %></p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">Password</label> <input
											type="password" class="form-control" name="me_pwd"
											id="pass" placeholder="password"  maxlength="15"
											title="enter your password.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">PasswordȮ��</label> <input
											type="password" class="form-control" name="pwdChk"
											id="pwdChk" placeholder="password"  maxlength="15"
											title="enter your password.">
										<p class="help-block" name="pwMsg" id="pwMsg">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">��ȭ��ȣ</label> 
										<input type="text"
											class="form-control" name="phone" id="phone"  maxlength="13"
											placeholder="<%=loginUser.getMe_phone() %>"
											title="enter your phone number if any.">
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-6">
									<hr/>
										<label class="info">��󿬶�ó</label> 
										<input type="text"
											class="form-control" name="telnum" id="telnum"  maxlength="13"
											placeholder="<%=loginUser.getMe_telnum() %>"
											title="enter your mobile number if any.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">Email</label> <input type="email"
											class="form-control" name="email" id="email"
											placeholder="<%=loginUser.getMe_email() %>" title="enter your email.">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-6">
										<hr/>
										<label class="info">��󿬶�����</label> 
										<div class="radio">
										<label> <input type="radio" name="telchk" value="��" <%if(loginUser.getMe_telchk().equals("��")){%> checked<%} %>/>��</label> 
										<label> <input type="radio" name="telchk" value="��" <%if(loginUser.getMe_telchk().equals("��")){%> checked<%} %>/>��</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<hr/>
										<label class="info">�ּ�</label> <input type="text"
											class="form-control" name="addr" id="addr"
											placeholder="<%=loginUser.getMe_addr() %>" title="enter your addr">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-12">
										<hr/>
										<label class="info">����</label> 
										<div><label class="col-md-3 control-label">���ɻ�</label></div>
										<div class="col-md-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="character" value="����"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("����")){%>checked<% }} %>/>����</label> 
											<label> <input type="checkbox" name="character" value="����"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("����")){%>checked<% }} %>/>����</label> 
											<label> <input type="checkbox" name="character" value="��������"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("��������")){%>checked<% }} %>/>��������</label>
											<label> <input type="checkbox" name="character" value="����"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("����")){%>checked<% }} %>/>����</label>
											<label> <input type="checkbox" name="character" value="��ȭ"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("��ȭ")){%>checked<% }} %>/>��ȭ</label>
											<label> <input type="checkbox" name="character" value="������"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("������")){%>checked<% }} %>/>������</label>
											<label> <input type="checkbox" name="character" value="����ȸ"
											<%if(character!=null) for(int i=0; i<size; i++){if(character[i].equals("����ȸ")){%>checked<% }} %>/>����ȸ</label>
										</div>
										</div>
									</div>
								</div>
								<div class="form-group">
										<button class="btn btn-primary pull-right" type="submit" id="updatebtn"><i class="glyphicon glyphicon-edit">ȸ����������</i></button>
									</div>
								</div>
							
						</div>
				</div>
				<!--/tab-content-->
			</div>
			<!--/col-9-->
		</form>
		</div>
		<!--/row-->
		</div>

	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>