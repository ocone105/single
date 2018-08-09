<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registration</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="/single/common/styles/registration/registration.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/single/common/scripts/member/register.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebf7b2f2c5987b5f48041fd7c1490397"></script>
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<div class="page-header">
				<h1>
					ȸ������ 
				</h1>
			</div>
			<form class="form-horizontal" action="/single/memberinsert.do" method="POST" name="myform" onsubmit="return join()"
			enctype="multipart/form-data">
				<!-- ȸ������ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�����ʻ���</label>
					<div class="col-sm-9">
						<img class="img-circle" src="/single/images/basicUser.png" id="me_img"> <input
							type="file" name="me_img"
							onchange="document.getElementById('me_img').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
					</div>
				</div>
				<!-- ���̵� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">���̵�*</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_id" id="me_id" type="text" maxlength="12"
							placeholder="ID" onkeyup="IdCheck()" required>
						<p class="help-block" id="idChk">12���̳�</p>
					</div>
					
				</div>
				<!-- ��й�ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��й�ȣ*</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_pwd" id="me_pwd" type="password" maxlength="15"
							placeholder="Password" required>
						<p class="help-block">15���̳�</p>
					</div>
				</div>
				<!-- ��й�ȣȮ�� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��й�ȣ Ȯ��*</label>
					<div class="col-sm-6">
						<input class="form-control" name="pwdChk" id="pwdChk" maxlength="15"
							type="password" placeholder="Password Check" required>
						<p class="help-block" id="pwMsg">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
					</div>
				</div>

				<!-- �̸� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">����*</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_name" id="me_name" type="text"
							placeholder="Name" required>
					</div>
				</div>

				<!-- ������� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�������*</label>
					<div class="col-sm-6">
						<p><input class="form-control" type="text" id="datepicker" name="me_birth" required ></p>
					</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����*</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="me_gender" value="male" checked/>����</label> 
							<label> <input type="radio" name="me_gender" value="female" />����
							</label>
						</div>
					</div>
				</div>

				<!-- ��ȭ��ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��ȭ��ȣ*</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_phone" maxlength="13" id="me_phone" type="text"
							placeholder="010-0000-0000" required>
						<p class="help-block">-�����Է����ּ���.</p>
					</div>
				</div>

				<!-- ��󿬶�ó -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��󿬶�ó*</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_telnum" maxlength="13" id="me_telnum" type="text"
							placeholder="010-0000-0000" required>
						<p class="help-block">-�����Է����ּ���.</p>
					</div>
				</div>

				<!-- ��󿬶� ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">��󿬶�����*</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="me_telchk" value="��" checked/>��
							</label> <label> <input type="radio" name="me_telchk" value="��" />��
							</label>
						</div>
					</div>
				</div>

				<!-- �̸��� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�̸���*</label>
					<div class="col-sm-4">
						<input class="form-control" name="me_email" id="me_email" type="email"
							placeholder="single@single.com" required/>
					</div>
					<div class="col-sm-2">
						<input class="btn" type="button" name="emailconfirm_btn" value="����"
							onclick="emailcheck(myform.me_email.value)"/>
					</div>
				</div>
					
				<!-- �ּ� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�ּ�</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_addr" id="me_addr" type="text"
							placeholder="�ּ�">
						<input type="hidden" name="lat" id="lat"/>
						<input type="hidden" name="lon" id="lon"/>
					</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<label class="col-md-1 control-label">���ɻ�</label>
					<div class="col-md-4">
						<div class="checkbox">
							<label> <input type="checkbox" name="me_character" value="����"/>����</label> 
							<label> <input type="checkbox" name="me_character" value="����"/>����</label> 
							<label> <input type="checkbox" name="me_character" value="��������"/>��������</label>
							<label> <input type="checkbox" name="me_character" value="����"/>����</label>
							<label> <input type="checkbox" name="me_character" value="��ȭ"/>��ȭ</label>
							<label> <input type="checkbox" name="me_character" value="������"/>������</label>
							<label> <input type="checkbox" name="me_character" value="����ȸ"/>����ȸ</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="submit" id="BtnJoin">ȸ������</button>
						<button class="btn btn-danger" type="reset">�������</button>
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