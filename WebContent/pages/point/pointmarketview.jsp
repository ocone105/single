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
								<p><%=dtolist.get(i).getPo_no() %></p>
								<a href="/single/po/read.do?po_no=<%= dtolist.get(i).getPo_no() %>"><img src="/single/upload/<%=dtolist.get(i).getPo_img() %>" alt=""></a>
								<figcaption><h4><%= dtolist.get(i).getPo_title() %></h4>
								필요 포인트: <%=dtolist.get(i).getPo_pt() %>
								<p>작성일: <%=dtolist.get(i).getPo_date() %></p></figcaption>
							</figure>
						</article>
					</li>
		
					<% }%>
				
				</ul>
			</section>
			<!-- ####################################################################################################### -->
			<div>
				<%if(loginUser!=null)if(loginUser.getMe_id().equals("single")){ %>
				<footer class="more" style="float: right">
					<a href="/single/pages/point/pointmarketwriteview.jsp">글쓰기 &raquo;</a>
				</footer>
				<%} %>
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