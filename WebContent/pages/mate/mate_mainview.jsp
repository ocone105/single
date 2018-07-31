<%@page import="member.dto.MemberDTO"%>
<%@page import="mate.dto.MateDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- 플로팅배너 -->
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<!-- map body -->
			<div>
				<button>
					<a>내 위치로</a>
				</button>
				<button>
					<a>위치바꾸기</a>
				</button>
				<footer class="more">
					<a href="/single/pages/mate/mate_writeview.jsp">소모임 만들기 &raquo;</a>
				</footer>
			</div>
			<div id="map" style="width: 100%; height: 400px;"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e389da52ac8c672d4985eead6dce0c46">
				
			</script>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new daum.maps.LatLng(33.450701, 126.570667),
					level : 3
				};
				var map = new daum.maps.Map(container, options);
			</script>


			<hr />
			<!-- content body -->
			<% ArrayList<MateDTO> dtolist = (ArrayList<MateDTO>)request.getAttribute("dtolist");
				int size = dtolist.size();
			%>
			<section id="portfolio" class="clear">
				<ul>
				<% for(int i = 0; i<size; i++){
					%>
					<li>
						<article>
							<figure>
								<a href="/single/mt_read.do?mt_no=<%=dtolist.get(i).getMt_no() %>"><img src="<%=dtolist.get(i).getMt_img() %>" 
								alt="<%=dtolist.get(i).getMt_img() %>"></a>
								<figcaption><%=dtolist.get(i).getMt_title() %></figcaption>
							</figure>
						</article>
					</li>
						<% }%>
<!-- 					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>2번 소모임</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>3번 소모임</figcaption>
							</figure>
						</article>
					</li>
					<li class="last">
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>4번 소모임</figcaption>
							</figure>
						</article>
					</li> -->

				</ul>
			</section>
			<!-- ####################################################################################################### -->
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