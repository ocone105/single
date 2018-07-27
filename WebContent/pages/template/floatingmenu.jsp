<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/single/common/styles/template/floatingmenu.css" type="text/css"
	media="all">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div id="floatdiv">
		<div>
			<ul>
				<li><img id="profile" class="img-circle"
					src="/single/images/demo/150x150.gif" /></li>
			</ul>
			<ul>
				<li><input id="floatingbtn1" type="button" value="회원정보"
					class="btn"
					onclick="location.href='/single/pages/member/memberinfo.jsp'">
					<input id="floatingbtn2" type="button" value="친구관리" class="btn"
					onclick="location.href='/single/pages/friends/friendsViewTest.jsp'">
				</li>
			</ul>
			<ul>
				<li>포인트:100</li>
				<li>등급: ***</li>
			</ul>

			<!-- 소모임 -->
			<ul class="nav" id="sgroup">
				<li><a href="#"><i class="glyphicon glyphicon-ok"></i>구로1동</a></li>
				<li><a href="#"><i class="glyphicon glyphicon-ok"></i>양파나눔</a></li>
				<li><a href="#"><i class="glyphicon glyphicon-ok"></i>양파나눔</a></li>
			</ul>

			<ul>
				<li><img src="/single/images/demo/imgr.gif" />
			</ul>
		</div>
	</div>
</body>
</html>