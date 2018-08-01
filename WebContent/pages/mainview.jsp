<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>singlesingle</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="EUC-KR">
<link rel="stylesheet" href="/single/common/styles/main/main.css" media="screen">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<!-- top -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
		<section id="shout" class="clear">
			<figure>
				<figcaption>
					<h1>Single...</h1>
					<p>메이트....어쩌구저쩌구</p>
				</figcaption>
				<div>
					<img src="/single/images/demo/410x440.gif" alt="">
				</div>
			</figure>
		</section>
	</div>

	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<!-- 플로팅배너 -->
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Wrapper for slides -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="/single/images/demo/410x440.gif" alt="New York"
							width="1200" height="700">
						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>
					<div class="item">
						<img src="/single/images/demo/410x440.gif" alt="Chicago"
							width="1200" height="700">
						<div class="carousel-caption">
							<h3>Chicago</h3>
							<p>Thank you, Chicago - A night we won't forget.</p>
						</div>
					</div>
					<div class="item">
						<img src="/single/images/demo/410x440.gif" alt="Los Angeles"
							width="1200" height="700">
						<div class="carousel-caption">
							<h3>LA</h3>
							<p>Even though the traffic was a mess, we had the best time
								playing at Venice Beach!</p>
						</div>
					</div>
				</div>
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

			<!-- main content -->
			<hr />
			<div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">메이트</div>
						<div style="padding-top: 20px; padding-left: 10px">
							<table>
								<thead>
									<tr>
										<th>게시글</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">게시글A</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글B</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글C</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글D</a></td>
										<td>2000.01.01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">지역행사</div>
						<div style="padding-top: 20px; padding-left: 10px">
							<table>
								<thead>
									<tr>
										<th>게시글</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">게시글A</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글B</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글C</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글D</a></td>
										<td>2000.01.01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">자유게시판</div>
						<div style="padding-top: 20px; padding-left: 10px">
							<table>
								<thead>
									<tr>
										<th>게시글</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">게시글A</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글B</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글C</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글D</a></td>
										<td>2000.01.01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">vs게시판</div>
						<div style="padding-top: 20px; padding-left: 10px">
							<table>
								<thead>
									<tr>
										<th>게시글</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">게시글A</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글B</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글C</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">게시글D</a></td>
										<td>2000.01.01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<hr />

			<div id="homepage">
				<section id="latest_work" class="clear">
					<article class="one_third first">
						<a href="#"><img src="../images/demo/300x180.gif" alt=""></a>
						<h2>Latest Project 1</h2>
						<p>Nullamlacus dui ipsum conseque loborttis non euisque morbi
							penas dapibulum orna.</p>
						<footer class="more">
							<a href="#">Read More &raquo;</a>
						</footer>
					</article>
					<article class="one_third">
						<a href="#"><img src="../images/demo/300x180.gif" alt=""></a>
						<h2>Latest Project 2</h2>
						<p>Nullamlacus dui ipsum conseque loborttis non euisque morbi
							penas dapibulum orna.</p>
						<footer class="more">
							<a href="#">Read More &raquo;</a>
						</footer>
					</article>
					<article class="one_third last">
						<a href="#"><img src="../images/demo/300x180.gif" alt=""></a>
						<h2>Latest Project 3</h2>
						<p>Nullamlacus dui ipsum conseque loborttis non euisque morbi
							penas dapibulum orna.</p>
						<footer class="more">
							<a href="#">Read More &raquo;</a>
						</footer>
					</article>
				</section>
				<!-- Introduction -->
				<section id="intro" class="clear">
					<article class="one_half">
						<h2>Meet The Team</h2>
						<ul>
							<li>
								<figure class="clear">
									<div class="imgl">
										<img src="../images/demo/150x150.gif" alt="">
									</div>
									<figcaption>
										<p class="name">
											<strong>Persons Name Here</strong>
										</p>
										<p>Sednulla nam nibh a nibh eu urna facinia mauris tibulus
											sit urna. Vitaerisus lobortis proin elit et curabituris elit
											estibulum.</p>
										<footer class="more">
											<a href="#">Read More &raquo;</a>
										</footer>
									</figcaption>
								</figure>
							</li>
							<li class="last">
								<figure class="clear">
									<div class="imgl">
										<img src="../images/demo/150x150.gif" alt="">
									</div>
									<figcaption>
										<p class="name">
											<strong>Persons Name Here</strong>
										</p>
										<p>Sednulla nam nibh a nibh eu urna facinia mauris tibulus
											sit urna. Vitaerisus lobortis proin elit et curabituris elit
											estibulum.</p>
										<footer class="more">
											<a href="#">Read More &raquo;</a>
										</footer>
									</figcaption>
								</figure>
							</li>
						</ul>
					</article>
					<article class="one_half last">
						<h2>What People Say About Us</h2>
						<ul class="testimonials">
							<li>
								<p class="name">
									<strong>Client Name</strong> - CEO
								</p>
								<blockquote>Justoid nonummy laoreet phasellent
									penatoque in antesque pellus elis eget tincidunt. Nequatdui
									laorem justo a non tellus laoreet tincidunt ut vel velit.
									Idenim semper pellente velis felit ac nullam pretium morbi
									lacus cursus iacus orci. Dignis simmorbi rhoncus sed netus
									ligula conseque netus nulla.</blockquote>
							</li>
							<li class="last">
								<p class="name">
									<strong>Client Name</strong> - CEO
								</p>
								<blockquote>Justoid nonummy laoreet phasellent
									penatoque in antesque pellus elis eget tincidunt. Nequatdui
									laorem justo a non tellus laoreet tincidunt ut vel velit.
									Idenim semper pellente velis felit ac nullam pretium morbi
									lacus cursus iacus orci. Dignis simmorbi rhoncus sed netus
									ligula conseque netus nulla.</blockquote>
							</li>
						</ul>
					</article>
				</section>
				<!-- / Intro -->
			</div>
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