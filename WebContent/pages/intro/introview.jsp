<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="../common/styles/mediaqueries.css"
	type="text/css" media="all">
<script src="../common/scripts/jquery.min.js"></script>
<script src="../common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>

	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<!-- 플로팅배너 -->
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<h1>Headline 1 Colour and Size</h1>
			<h2>Headline 2 Colour and Size</h2>
			<h3>Headline 3 Colour and Size</h3>
			<h4>Headline 4 Colour and Size</h4>
			<h5>Headline 5 Colour and Size</h5>
			<h6>Headline 6 Colour and Size</h6>
			<p>
				This is a W3C standards compliant free responsive HTML5 website
				template from <a href="https://www.os-templates.com/"
					title="Free Website Templates">OS Templates</a>. For full terms of
				use of this template please read our <a
					href="https://www.os-templates.com/template-terms">Website
					Template Licence</a>.
			</p>
			<p>
				You can use and modify the template for both personal and commercial
				use. You must keep all copyright information and credit links in the
				template and associated files. For more responsive HTML5 templates
				visit <a href="https://www.os-templates.com/">Free Website
					Templates</a>.
			</p>
			<ul>
				<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
				<li>Etiam vel sapien et est adipiscing commodo.</li>
				<li>Duis pharetra eleifend sapien, id faucibus dolor rutrum et.</li>
				<li>Donec et dui dolor, in lacinia leo.</li>
				<li>Mauris posuere tellus ac purus adipiscing dapibus.</li>
			</ul>
			<p>Vestibulumaccumsan egestibulum eu justo convallis augue estas
				aenean elit intesque sed. Facilispede estibulum nulla orna nisl
				velit elit ac aliquat non tincidunt. Namjusto cras urna urnaretra
				lor urna neque sed quis orci nulla. Laoremut vitae doloreet
				condimentumst phasellentes dolor ut a ipsum id consectetus. Inpede
				cumst vitae ris tellentesque fring intesquet nibh fames nulla
				curabitudin.</p>
			<ol>
				<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
				<li>Etiam vel sapien et est adipiscing commodo.</li>
				<li>Duis pharetra eleifend sapien, id faucibus dolor rutrum et.</li>
				<li>Donec et dui dolor, in lacinia leo.</li>
				<li>Mauris posuere tellus ac purus adipiscing dapibus.</li>
			</ol>
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