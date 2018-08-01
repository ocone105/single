<%@page import="member.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="point.dto.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
			<% ArrayList<PointDTO> dtolist = (ArrayList<PointDTO>)request.getAttribute("dtolist"); 
				int size = dtolist.size();
			%>
			
			<section id="portfolio" class="clear">
				<ul>
					<% for(int i=0; i<size; i++){
						%>
					<li>
						<article>
							<figure>
								<a href="/single/po/read.do?po_no=<%= dtolist.get(i).getPo_no() %>"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption><%= dtolist.get(i).getPo_title() %></figcaption>
							</figure>
						</article>
					</li>
		
					<% }%>
				
				</ul>
			</section>
			<!-- ####################################################################################################### -->
			<div>
				<footer class="more" style="float: right">
					<a href="/single/pages/point/pointmarketwriteview.jsp">글쓰기 &raquo;</a>
				</footer>
			</div>

			<!-- ####################################################################################################### -->
			<div class="pagination">
				<ul>
					<li class="prev"><a href="#">&laquo; Previous</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li class="splitter"><strong>&hellip;</strong></li>
					<li><a href="#">6</a></li>
					<li class="current"><strong>7</strong></li>
					<li><a href="#">8</a></li>
					<li class="splitter"><strong>&hellip;</strong></li>
					<li><a href="#">14</a></li>
					<li><a href="#">15</a></li>
					<li class="next"><a href="#">Next &raquo;</a></li>
				</ul>
			</div>
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