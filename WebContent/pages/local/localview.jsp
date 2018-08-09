<%@page import="local.dto.LocalDTO"%>
<%@page import="local.dto.EventDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- hs �߰� -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="/single/common/styles/local/select.css" type="text/css" media="all">
<!-- --------------- -->
<script src="/single/common/scripts/jquery.min.js"></script>
<style type="text/css">
a img{
	width: 210px;
	height: 150px;
}
.eventBox{
	height: 300px;
}
</style>
<script type="text/javascript">
		var href;
		function selectArea(myform) {
			index = myform.area.selectedIndex;
			location.href="/single/local/list.do?areaCode="+myform.area.options[index].value+"&page=1";
		}
</script>
</head>
<body>
<%
	MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	ArrayList<EventDTO> eventlist = (ArrayList<EventDTO>)request.getAttribute("eventlist");
	String pageNo = request.getParameter("page");
	int crtpage = 1;
	if(pageNo!=null){
		crtpage = Integer.parseInt(pageNo);	//���� ������
	}
	int size = eventlist.size();
	ArrayList<LocalDTO> locallist = (ArrayList<LocalDTO>)request.getAttribute("locallist");
	int localsize = locallist.size();
	String areaCode = request.getParameter("areaCode");
%>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<!-- content body -->

			<section id="gallery" class="clear">
				<figure>
					<!-- ���� ���� select box ���� -->
					<form name="selArea">
						<span class="styled-select">
							<select name="area" id="area" onchange="selectArea(this.form)">
								<option value="" selected>��������</option>
								<option value="">��ü</option>
								<%for(int i=0; i<localsize; i++){
								LocalDTO local = locallist.get(i); %>
								<option value="<%=local.getCode() %>"><%=local.getName() %></option>
								<%} %>
							</select> <span class="fa fa-sort-desc"></span>
						</span>
					</form>
					<!-- ���� ���� select box �� -->
					<br/>
						<%for(int i=9*(crtpage-1); i<crtpage*9; i++){ 
							if(i<size){
								EventDTO event = eventlist.get(i);%>
								<span class="eventBox col-sm-4">
									<a href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=<%=event.getContentid() %>">
									<img src="<%=event.getFirstimage()%>"></a>
									<h4><%=event.getTitle() %></h4>
									<p>���Ⱓ: <%=event.getEventstartdate() %>~<%=event.getEventenddate() %></p>
									<p>������: <%=event.getAddr1() %></p>
								</span>
						<%}} %>
				</figure>
			</section>
			
			<div class="pagination">
			<%int countPage = 0;
				if(size%9==0){
					countPage = size/9;
				}else{
					countPage = size/9+1;
				}%>
				<ul>
					<li class="prev">
					<%if(crtpage==1){ %>
						&laquo; Previous
					<%}else{ %>
					<a href="/single/local/list.do?areaCode=<%=areaCode %>&page=<%=crtpage-1%>">&laquo; Previous</a>
					<%} %>
					</li>
					<%int lastpage = 0;
					int firstpage = 0;
					if(crtpage-4>=1){
						firstpage = crtpage-4;
					}else{
						firstpage = crtpage;
					}
					if(countPage<=10){
						lastpage = countPage;
					}else if(crtpage+5<=10){
						lastpage = 10;
					}else if(crtpage+5<=countPage){
						lastpage = crtpage+5;
					}else{
						lastpage = countPage;
					}
					%>
					<% for(int i=firstpage; i<=lastpage; i++){
						if(i==crtpage){%>
						<li class="current"><strong><%=i %></strong></li>
						<%}else{%>
						<li><a href="/single/local/list.do?areaCode=<%=areaCode %>&page=<%=i%>"><%=i %></a></li>
					<%}} %>
					<!-- 	<li class="splitter"><strong>&hellip;</strong></li> -->
					<li class="next">
					<%if(crtpage==countPage){ %>
						Next &raquo;
					<%}else{ %>
					<a href="/single/local/list.do?areaCode=<%=areaCode %>&page=<%=crtpage+1%>">Next &raquo;</a>
					<%} %>
					</li>
				</ul>
			</div>

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