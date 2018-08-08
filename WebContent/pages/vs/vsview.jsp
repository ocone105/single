<%@page import="org.w3c.dom.Document"%>
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
	</script>
</head>
<body>
	<%
		MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
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
				
				int cntA;
				int cntB;
				float ratingA;
				
				if(posts!=null){
					for (int i = 0; i < size; i++) {
						VsDTO post = posts.get(i);
						if(post.getVs_hitsA()==0 & post.getVs_hitsB()==0){
							cntA=50;
							cntB=50;
						}else{
							cntA = post.getVs_hitsA();
							cntB = post.getVs_hitsB();
						}
						ratingA = cntA * 100 / (cntA+cntB);
						request.setAttribute("ratingA", ratingA);
						request.setAttribute("cntA", cntA);
						request.setAttribute("cntB", cntB);
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
			
				<br><br>
				
				<div id="bar">
					<jsp:include page="/pages/vs/bar.jsp" />
				</div>

			
				<div class="bottom-container">
 	 <!-- <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Simple collapsible</button> -->  			
	 	 			<div id="demo" class="collapse">
						<jsp:include page="/pages/vs/vscmt.jsp" />
						<a href="/single/pages/vs/vscmt.jsp">댓글보기</a>
					</div>
				</div>
			</div>	
			<%}}%>
		</div>
	</div>
	
	
	<%-- 댓글 ajax --%>
	<a href="#" data-toggle="modal" data-target="#BckLstDetailModal">댓글쓰기</a>  
	<div class="modal fade" id="BckLstDetailModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times; </span><span class="sr-only">
							Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">회원 상세 정보</h4>
				</div>
				
				<div class="modal-body">
					<div class="input-group">
						<span class="input-group-addon">ID</span> 
						<input type="text" class="form-control" placeholder="Joo" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">이름</span>
						<input type="text" class="form-control" placeholder="배주현" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">신고횟수</span> 
						<input type="text" class="form-control" placeholder="2회" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">생년월일</span> 
						<input type="text" class="form-control" placeholder="950112" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">전화번호</span>
						<input type="text" class="form-control" placeholder="010-5654-3212" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">선호MATE</span>
						<input type="text" class="form-control" placeholder="문화" />
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default">수정</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
				
			</div>
		</div>
	</div>
	
	
	
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
	
	<script type="text/javascript">
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
