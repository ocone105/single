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
				var vs_no = $(this).attr("id");
				alert(vs_no);
				document.getElementById("A").value = vs_no;
				count = 1;
				document.myform.submit();
			});
			$(".btnB").on("click", function(){
				var vs_no = $(this).attr("id");
				alert(vs_no);
			});
			
			
		});
	
	</script>
</head>
<body>

	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>

	<div class="wrapper row2">

		<div id="container">
			<jsp:include page="/pages/template/floatingmenu.jsp" />

			<a href="/single/pages/vs/vspost.jsp">글쓰기</a> 
			<%
				ArrayList<VsDTO> posts = (ArrayList<VsDTO>) request.getAttribute("posts");
				System.out.println("게시글" + posts);

				int size = posts.size();
				for (int i = 0; i < size; i++) {
					VsDTO post = posts.get(i);
			%>
			<div id="post">
				<form action="/single/vs/vote.do" method="get" id="myform">
					<div class="row">
						<h2 style="text-align: center"><%=post.getVs_title()%></h2>
						<h4 style="text-align: center"><%=post.getVs_txt()%></h4>
						<div class="vl">
							<span class="vl-innertext">VS</span>
						</div>
						<div class="col" style="text-align: center">
							<button class="btnA" id="A<%=post.getVs_no()%>"><%=post.getVs_optionA()%></button>
							<input type="hidden" name="A" id="A">
						</div>
						<div class="col" style="text-align: center">
							<button class="btnB" id="B<%=post.getVs_no()%>"><%=post.getVs_optionB()%></button>
						</div>
					</div>
				</form>
				<br> <br>
				<div id="bar">
					<jsp:include page="/pages/vs/bar.jsp" />
				</div>

				<div class="bottom-container">
					<a href="/single/pages/vs/vscmt.jsp">댓글보기</a>
				</div>
			</div>

			<%
				}
			%>
		</div>
	</div>

	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>

</body>
</html>
