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
			<section id="portfolio" class="clear">
				<ul>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridice quisasdasd</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li class="last">
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li class="last">
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
					<li class="last">
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>Metridiculis conseque quis</figcaption>
							</figure>
						</article>
					</li>
				</ul>
			</section>
			<!-- ####################################################################################################### -->
			<div>
				<footer class="more" style="float: right">
					<a href="pointmarketInputview.jsp">글쓰기 &raquo;</a>
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