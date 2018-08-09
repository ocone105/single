<%@page import="member.dto.MemberDTO"%>
<%@page import="friends.dto.MsgDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR" >
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
			
			<p align="center">Message List</p>

			<div class="panel panel-default widget">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span>
					<h3 class="panel-title">Comments</h3>
					<span class="label label-default" id="cmtNum">0</span>
				</div>
				<%
				ArrayList<MsgDTO> msgs = (ArrayList<MsgDTO>) request.getAttribute("msgs");
				if(msgs!=null){
					int size = msgs.size();	
					for(int i=0;i<size;i++){
				%>
				<div class="panel-body">
					<ul>
						<li class="list-group-item">
							<a href>
							<div class="col-md-2">
								<%=msgs.get(i).getSender() %>
							</div>
							</a>
							<div class="col-md-5">
								<a href><%=msgs.get(i).getMsg_title() %></a>
								<a ref="/single/msg/msg_read.do?msg_no=<%= msgs.get(i).getMsg_no()%>&option=A">
							</div>
							<div>
								<%=msgs.get(i).getMsg_txt() %>
							</div>
						</li>
					</ul>
				</div>
					<%}} %>
			</div>
			
			

			<%-- 댓글 --%>
			<!-- <div class="row" id="messagesList" style="width: 100%">
				<div class="panel panel-default widget">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-envelope"></span>
						<h3 class="panel-title">Message</h3>
						<span class="label label-default" id="cmtNum">0</span>
					</div>
					<div class="panel-body">
						<ul class="list-group">
								
							<span id="cmt"></span>
	 						<li class="list-group-item">
								<div class="row">
									<div class="col-xs-2 col-md-1">
										<img src="/single/images/irene.png" class="img-circle img-responsive" alt="" />
									</div>
									<div class="col-xs-10 col-md-11">
										<div class="comment-text">뭐가 힘든지 말해야죠</div>
											<div class="mic-info">
												By: <a href="#">배주현</a> on 2 Jul 2018
											</div>
									</div>
								</div>
							</li> 
							
						</ul>
						<a href="#" class="btn btn-default btn-sm btn-block" role="button"> 
							<span class="glyphicon glyphicon-refresh"></span> More
						</a>
					</div>
				</div>
			</div>			 -->
		
		</div>
	</div>
	
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>

</body>
</html>