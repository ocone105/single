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
			
			<jsp:include page="/pages/friends/friendsmenu.jsp"/>
			
			<p align="center">Message List</p>
			
			<%
				String option = (String) request.getParameter("option");
				if(option.equals("send")){
					
				}
			%>
			<div class="panel panel-default widget">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span> &nbsp;&nbsp;
					Message
					<span class="label label-default" id="cmtNum" style="float: right;">0</span>
				</div>
				<%
				ArrayList<MsgDTO> msgs = (ArrayList<MsgDTO>) request.getAttribute("msgs");
				if(msgs!=null){
					int size = msgs.size();	
					for(int i=0;i<size;i++){
				%>
								<div class="panel-body">
					<ul class="list-group">
						<li class="w3-bar"><span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
					<img src="/single/upload/<%=loginUser.getMe_img() %>" class="col-sm-4 img-circle" style="width: 70px;height: 55px">
					<div class="w3-bar-item">
						<span class="w3-large"><%=loginUser.getMe_name()%></span> <%=loginUser.getMe_id() %><br>
						<span><%=loginUser.getMe_addr()%></span> <br> 
						<a href="#" data-toggle="modal" data-target="#MessageModal<%=loginUser.getMe_id() %>">쪽지	보내기</a>
					</div>
				</li>
					</ul>

				</div>
				
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
				

				<%
					}}
				%>
			</div>
			
		<%} %>
		</div>
	</div>
	
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>

</body>
</html>