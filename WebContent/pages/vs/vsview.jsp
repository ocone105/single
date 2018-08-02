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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
					
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Simple collapsible</button>
  <div id="demo" class="collapse">
					<jsp:include page="/pages/vs/vscmt.jsp" />
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
	<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}
</script>
	
</body>
</html>
