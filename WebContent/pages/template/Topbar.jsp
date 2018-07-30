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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/template/topbar.css">
</head>
<body id="topbody">
	<%
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
	%>
	<div id="logoheader">
		<img src="/single/images/logo.png" id="logo" />
	</div>
	<form name="login" action="/single/login.do" method="post">
		<div id="loginheader">
			<%
				if (loginUser == null) {
			%>
			<span class="idpw">ID</span>
			<span><input class="idpwtext" name="id" type="text"></span> 
			<span class="idpw">PW</span> 
			<span><input class="idpwtext"name="pass" type="password" /></span>
			<button class="btn" type="submit" id="loginbtn">|login|</button>
			<button class="btn" type="button" id="joinbtn" onclick="location.href='/single/pages/registration/registration.jsp'">|Join|</button>
			<%
				} else {
			%>
			<button class="btn" type="button" id="logoutbtn" onclick="location.href='/single/logout.do'">|Logout|</button>
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
				<li><a href="/single/pages/mate/mate_mainview.jsp">메이트</a></li>
				<li><a href="/single/pages/local/localview.jsp">지역행사</a></li>
				<li><a href="/single/pages/free/freeview.jsp">자유게시판</a>
					<ul>
						<li><a href="/single/pages/free/freeview_free.jsp">자유</a></li>
						<li><a href="/single/pages/free/freeview_tip.jsp">정보</a></li>
						<li><a href="/single/pages/free/freeview_review.jsp">후기</a></li>
						<li><a href="/single/pages/free/freeview_recom.jsp">추천</a></li>
					</ul></li>
				<li><a href="/single/pages/vs/vsview.jsp">vs게시판</a></li>
				<li><a href="/single/pages/point/pointmarketview.jsp">포인트마켓</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>