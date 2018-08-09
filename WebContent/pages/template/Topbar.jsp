<%@page import="javafx.scene.control.Alert"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<title>singlesingle</title>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/single/common/styles/template/topbar.css">
<script src="/single/common/scripts/template/topbar.js"></script>
</head>
<body id="topbody">
	<%
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
		String msg = (String)request.getAttribute("msg");
	%>
	<div id="logoheader">
		<img src="/single/images/logo.png" id="logo" />
	</div>
	<form name="loginform">
		<div id="loginheader">
			<%
				if (loginUser == null) {
			%>
			<span class="idpw">ID</span>
			<span><input class="idpwtext" name="id" id="id" type="text"></span> 
			<span class="idpw">PW</span> 
			<span><input class="idpwtext" name="pass" id="pass" type="password" /></span>
			<button class="btn" type="button" id="loginbtn" onclick="loginCheck()">|login|</button>
			<button class="btn" type="button" id="joinbtn" onclick="location.href='/single/pages/registration/registration.jsp'">|Join|</button>
			<%
				} else {
			%>
			<button class="btn" type="button" id="logoutbtn" onclick="logout()">|Logout|</button>
			<%
				}
			%>
		</div>
	</form>
	<br/>
	<header id="header">
		<div id="hgroup">
			<a href="/single/pages/mainview.jsp" id="singleHeader">Singlesingle</a>
		</div>
		<nav id="topnav">
			<ul class="topnav clear">
				<li class="active"><a href="/single/pages/mainview.jsp">Home</a></li>
				<li><a href="/single/mt/list.do">����Ʈ</a></li>
				<li><a href="/single/local/list.do">�������</a></li>
				<li><a href="/single/fr/list.do?category=all">�����Խ���</a>
	          <ul>
	            <li><a href="/single/fr/list.do?category=free">����</a></li>
	            <li><a href="/single/fr/list.do?category=tip">����</a></li>
	            <li><a href="/single/fr/list.do?category=review">�ı�</a></li>
	            <li><a href="/single/fr/list.do?category=recom">��õ</a></li>
	          </ul>
	        	</li>
				<li><a href="/single/vs/vs_read.do">vs�Խ���</a></li>
				<li><a href="/single/po/list.do">����Ʈ����</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>