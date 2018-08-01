<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR" >
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<!-- top -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>

	<div class="wrapper row2">
		<div id="container">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<jsp:include page="/pages/friends/friendsmenu.jsp"/>
			
			<p align="center">Friends List</p>
			<ul class="w3-ul w3-card-4">

				<li class="w3-bar"><span onclick="this.parentElement.style.display='none'"
					class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
					<img src="/single/images/irene.png"
					class="w3-bar-item w3-circle w3-hide-small" style="width: 85px">
					<div class="w3-bar-item">
						<span class="w3-large">배주현</span> <br> <span>서울특별시
							구로2동</span> <br> <a href="#" data-toggle="modal"
							data-target="#PostCommentsModal">쪽지 보내기</a>
					</div></li>

				<li class="w3-bar"><span
					onclick="this.parentElement.style.display='none'"
					class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
					<img src="/single/images/jun.png"
					class="w3-bar-item w3-circle w3-hide-small" style="width: 85px">
					<div class="w3-bar-item">
						<span class="w3-large">박서준</span><br> <span>서울특별시 구로1동</span>
						<br> <a href="#" data-toggle="modal"
							data-target="#PostCommentsModal">쪽지 보내기</a>
					</div></li>

				<li class="w3-bar"><span
					onclick="this.parentElement.style.display='none'"
					class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
					<img src="/single/images/park.png"
					class="w3-bar-item w3-circle w3-hide-small" style="width: 85px">
					<div class="w3-bar-item">
						<span class="w3-large">박형식</span><br> <span>서울특별시 구로3동</span>
						<br> <a href="#" data-toggle="modal"
							data-target="#PostCommentsModal">쪽지 보내기</a>
					</div></li>
			</ul>

			<div class="modal fade" id="PostCommentsModal" tabindex="-1"
				role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times; </span><span class="sr-only">
									Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Message</h4>
						</div>

						<div class="modal-body">
							<div class="input-group">
								<span class="input-group-addon">@</span> <input type="text"
									class="form-control" placeholder="받는 사람" />
							</div>
							<p></p>
							<div class="input-group">
								<span class="input-group-addon">@</span> <input type="text"
									class="form-control" placeholder="제목" />
							</div>
							<p></p>
							<div class="input-group">
								<span class="input-group-addon">@</span>
								<textarea rows="4" cols="50" class="form-control"
									placeholder="Message"></textarea>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default">Send</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>

</body>
</html>