<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<!-- content body -->
			<form action="" method="post" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<td>����</td>
						<td><input type="text" name="title" size="40" value="">
						</td>
					</tr>
					<tr>
						<td>�Һ�����Ʈ</td>
						<td><input type="text" name="point" size="10" value="">
						</td>
					</tr>
					<tr>
						<td>�̹���</td>
						<td><input type="file" name="imageFile"></td>
					</tr>
					<tr>
						<td>����</td>
						<td><textarea name="content" cols="100" rows="8"></textarea></td>
					</tr>
				</table>
				<footer class="more">
					<a href="#">���</a>
				</footer>
				<footer class="more">
					<a href="#">���</a>
				</footer>
			</form>
			<!-- ####################################################################################################### -->
			<!-- ####################################################################################################### -->
			<!-- / content body -->
			<!-- ################################################################################################ -->
			<div class="clear"></div>
		</div>
	</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>