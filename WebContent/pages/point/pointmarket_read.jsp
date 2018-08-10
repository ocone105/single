<%@page import="point.dto.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="free.dto.FreeDTO"%>
<%@page import="free.dto.FreeCmtDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.dto.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Single Single</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css"
	type="text/css" media="all">

<!-- hs 추가 -->
<link rel="shortcut icon" href="/single/images/favicon.ico">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel='stylesheet' id='kboard-skin-thumbnail-css' href='/single/common/styles/free/thumbnail.css?ver=5.3.9' type='text/css' media='all' />
<link rel='stylesheet' id='kboard-comments-skin-default-css' href='/single/common/styles/free/comments.css?ver=4.4.4' type='text/css' media='all' />
<style type="text/css">
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}
.modal-dialog {
	display: inline-block;
	vertical-align: middle;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#buyBtn").on("click", function(){
			var userid = $("#userid").val();
			var po_no = $("#po_no").val();
		 	if(userid==""){
				alert("로그인해주세요");
			}else{
				location.href="/single/po/buy.do?userid="+userid+"&po_no="+po_no;
			} 
	});
});
window.onload = function(){
	if($("#state").val()==0){
		alert("포인트가 부족합니다.");
		document.getElementById("#state").value = "";
	}else if($("#state").val()==1){
		alert("구매가 완료되었습니다.");
		document.getElementById("#state").value = "";
	}
}
</script>
<!-- -------------------------------- -->
<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
<% 
	PointDTO prd = (PointDTO)request.getAttribute("prd"); 
	String state = (String)request.getAttribute("state");
	if(state!=null){
		System.out.println(state);
	}
%>
	<!-- content -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- 플로팅배너 -->
			<%
				MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
				if (loginUser != null) {
			%>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%
				}
			%> 
			<!-- ============================== -->
			<div id="kboard-document">
				<div id="kboard-thumbnail-document">
					<div class="kboard-document-wrap" itemscope itemtype="http://schema.org/Article">
						<div class="kboard-title" itemprop="name"><%=prd.getPo_title() %></div>
						<div class="kboard-detail">
							<div class="detail-attr detail-writer">
								<div class="detail-name">작성자</div>
								<input type="hidden" id="userid" <%if(loginUser!=null){ %>value="<%=loginUser.getMe_id()%>"<%} %>/> 
								<input type="hidden" id="po_no" value="<%=prd.getPo_no()%>"/>
								<div class="detail-value">
									매니저
								</div>
							</div>
							<div class="detail-attr detail-date">
								<div class="detail-name">필요포인트</div>
								<div class="detail-value"><%=prd.getPo_pt() %></div>
							</div>
							<div class="detail-attr detail-date">
								<div class="detail-name">수량</div>
								<div class="detail-value"><%=prd.getPo_count() %></div>
							</div>
							<div class="detail-attr detail-view">
								<div class="detail-name">작성일</div>
								<div class="detail-value"><%=prd.getPo_date() %></div>
							</div>
						</div>
						<div class="kboard-content" itemprop="description">
							<div class="content-view">
								<p style="text-align: center;">
									<img src="/single/upload/<%=prd.getPo_img() %>" style="width: 500px;"/><br/>
									<%=prd.getPo_txt() %>
								</p>
							</div>
						</div>

					</div>

					<div class="kboard-control">
						<div class="left">
						<input type="button" id="buyBtn" value="구매하기"/> 
						<input type="hidden" id="state" value="<%=state%>"/>
						</div>
						<%if(loginUser!=null && loginUser.getMe_id().equals("single")){ %>
						<div class="right">
							<a href="/single/po/updateread.do?po_no=<%=prd.getPo_no() %>">글수정</a>
							<a href="/single/po/delete.do?po_no=<%=prd.getPo_no() %>"
							onclick="return confirm('삭제 하시겠습니까?');">글삭제</a>
						</div>
						<%} %>
					</div>
				</div>
			</div>
			<br />

		</div>
		<!-- ################################################################################################ -->
		<div class="clear"></div>
	</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>