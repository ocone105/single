<%@page import="member.dto.MemberDTO"%>
<%@page import="vs.dto.VsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
	<script src="/single/common/scripts/jquery.min.js"></script>
	<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<link rel="stylesheet" href="/single/common/styles/vs/vsview.css">
	<script type="text/javascript">
		$(document).ready(function(){
			$(".btnA").on("click", function(){
				vs_no = $(this).attr("id");
				document.getElementById("A"+vs_no).value = "A"+vs_no;
				document.myformA.submit();
			});
			$(".btnB").on("click", function(){
				vs_no = $(this).attr("id");
				document.getElementById("B"+vs_no).value = "B"+vs_no;
				document.myformB.submit();
			});
		});
		function test(){
			alert("test");
		}
	</script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
String test = "test";
request.setAttribute("test", test);
%>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>

	<div class="wrapper row2">

		<div id="container">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>

			<a href="/single/pages/vs/vspost.jsp">글쓰기</a> 
			<%
				ArrayList<VsDTO> posts = (ArrayList<VsDTO>) request.getAttribute("posts");
				//System.out.println("게시글" + posts);
				int size = posts.size();
				
				if(posts!=null){
					for (int i = 0; i < size; i++) {
						VsDTO post = posts.get(i);
			%>
			<div id="post">
					<div class="row">
						<h2 style="text-align: center"><%=post.getVs_title()%></h2>
						<h4 style="text-align: center"><%=post.getVs_txt()%></h4>
						<div class="vl">
							<span class="vl-innertext">VS</span>
						</div>
						<form action="/single/vs/select.do" id="myformA">
						<div class="col" style="text-align: center">
							<button class="btnA" id="<%=post.getVs_no()%>"><%=post.getVs_optionA()%></button>
							<input type="hidden" name="A" id="A<%=post.getVs_no()%>">
						</div>
						</form>
						<form action="/single/vs/select.do" id="myformB">
						<div class="col" style="text-align: center">
							<button class="btnB" id="<%=post.getVs_no()%>"><%=post.getVs_optionB()%></button>
							<input type="hidden" name="B" id="B<%=post.getVs_no()%>">
						</div>
						</form>
					</div>
					
				<br> <br>
				<div id="bar">
					<jsp:include page="/pages/vs/bar.jsp" />
				</div>

				<div class="bottom-container">
					<a href="/single/pages/vs/vscmt.jsp">댓글보기</a>
				</div>
			</div>
			<%}}%>
			<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		</div>
	</div>

	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>
