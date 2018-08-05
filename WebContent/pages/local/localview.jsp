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
<!-- hs 추가 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
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
</head>
<body>
<%
	MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	ArrayList<EventDTO> eventlist = (ArrayList<EventDTO>)request.getAttribute("eventlist");
	int crtpage = Integer.parseInt(request.getParameter("page"));	//현재 페이지
	int size = eventlist.size();
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
					<!-- 지역 선택 select box 시작 -->

					<span class="styled-select">
						<select>
							<option value="" selected>지역선택</option>
							<option value="전체">전체</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="부산">부산</option>
							<option value="강원">강원</option>
							<option value="제주">제주</option>
							<option value="대전·세종·충남">대전·세종·충남</option>
							<option value="충북">충북</option>
							<option value="광주·전남">광주·전남</option>
							<option value="전북">전북</option>
							<option value="울산·경남">울산·경남</option>
							<option value="대구·경북">대구·경북</option>
						</select> <span class="fa fa-sort-desc"></span>
					</span>
					<span class="styled-select">
						<select>
							<option value="" selected>지역선택</option>
							<option value="전체">전체</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="부산">부산</option>
							<option value="강원">강원</option>
							<option value="제주">제주</option>
							<option value="대전·세종·충남">대전·세종·충남</option>
							<option value="충북">충북</option>
							<option value="광주·전남">광주·전남</option>
							<option value="전북">전북</option>
							<option value="울산·경남">울산·경남</option>
							<option value="대구·경북">대구·경북</option>
						</select> <span class="fa fa-sort-desc"></span>
					</span>
					<!-- 지역 선택 select box 끝 -->
					<br/>
						<%for(int i=9*(crtpage-1); i<crtpage*9; i++){ 
							if(i<size){
								EventDTO event = eventlist.get(i);%>
								<span class="eventBox col-sm-4">
									<a href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=<%=event.getContentid() %>">
									<img src="<%=event.getFirstimage()%>"></a>
									<h4><%=event.getTitle() %></h4>
									<p>행사기간: <%=event.getEventstartdate() %>~<%=event.getEventenddate() %></p>
									<p>행사장소: <%=event.getAddr1() %></p>
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
					<li class="prev"><a href="#">&laquo; Previous</a></li>
					<% for(int i=1; i<=countPage; i++){%>
					<li><a href="/single/local/list.do?page=<%=i%>"><%=i %></a></li>
					<%} %>
				<!-- 	<li class="current"><strong>7</strong></li>
					<li class="splitter"><strong>&hellip;</strong></li> -->
					<li class="next"><a href="#">Next &raquo;</a></li>
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