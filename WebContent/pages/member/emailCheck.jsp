<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="member.controller.EmailConfirm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="/single/common/scripts/member/register.js"></script>
</head>
<body>
<%
	String me_email=request.getParameter("me_email");
	// ������ �ۼ��� java���� ��ü ����
	EmailConfirm emailconfirm = new EmailConfirm();
	String authNum=emailconfirm.connectEmail(me_email);
%>
<form method="post" action="register.jsp" name="emailcheck">
	<table>
		<tr>
			<th colspan="2">������ȣ�� �Է��ϼ���.</th>
		</tr>
		<tr>
			<td>
				<input type="text" name="emailconfirm">
			</td>
			<td>
				<input type="button" value="Ȯ��" 
                 onclick="confirmemail(emailcheck.emailconfirm.value, <%=authNum%>)">
			</td>
		</tr>
	</table>
</form>
</body>
</html>