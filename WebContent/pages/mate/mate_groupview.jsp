<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css"
	type="text/css" media="all">
<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- �÷��ù�� -->
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<!-- content body -->
			<h1>�Ҹ����̸�</h1>
			<footer class="more">
				<a href="#">�����ϱ� &raquo;</a>
			</footer>
			<hr />
			<section id="portfolio" class="clear">
				<ul>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>������ 1</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>������ 2</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>������ 3</figcaption>
							</figure>
						</article>
					</li>
					<li class="last">
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>������ 4</figcaption>
							</figure>
						</article>
					</li>

				</ul>
			</section>

			<!-- ���######################################################################### -->
			<section id="comments">
				<h2>���</h2>
				<ul>
					<li class="comment_odd">
						<article>
							<header>
								<figure>
									<img src="/single/images/demo/avatar.gif" width="32" height="32"
										alt="">
								</figure>
								<address>
									By <a href="#">A Name</a>
								</address>
								<time datetime="2000-04-06T08:15+00:00">
									Friday, 6<sup>th</sup> April 2000 @08:15:00
								</time>
							</header>
							<section>
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</section>
						</article>
					</li>
					<li class="comment_even">
						<article>
							<header>
								<figure>
									<img src="/single/images/demo/avatar.gif" width="32" height="32"
										alt="">
								</figure>
								<address>
									By <a href="#">A Name</a>
								</address>
								<time datetime="2000-04-06T08:15+00:00">
									Friday, 6<sup>th</sup> April 2000 @08:15:00
								</time>
							</header>
							<section>
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</section>
						</article>
					</li>
					<li class="comment_odd">
						<article>
							<header>
								<figure>
									<img src="/single/images/demo/avatar.gif" width="32" height="32"
										alt="">
								</figure>
								<address>
									By <a href="#">A Name</a>
								</address>
								<time datetime="2000-04-06T08:15+00:00">
									Friday, 6<sup>th</sup> April 2000 @08:15:00
								</time>
							</header>
							<section>
								<p>This is an example of a comment made on a post. You can
									either edit the comment, delete the comment or reply to the
									comment. Use this as a place to respond to the post or to share
									what you are thinking.</p>
							</section>
						</article>
					</li>
				</ul>


				<form action="#" method="post">
					<input type="hidden" name="id" id="id" value="" size="22">
					<p>
						<textarea name="comment" id="comment" cols="25" rows="5"></textarea>
					</p>
					<input name="submit" type="submit" id="submit" value="���"
						style="float: right">
				</form>
			</section>

			<!-- ####################################################################################################### -->
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