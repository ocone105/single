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
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
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

					<div class="styled-select">
						<select>
							<option value="" selected>지역선택</option>
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
					</div>

					<!-- 지역 선택 select box 끝 -->
					<br />
					<ul>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="달빛기행"></a> 창덕궁 달빛기행<br />2018.04.05(목)~2018.10.28(일)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=2496910"><img
								src="http://tong.visitkorea.or.kr/cms/resource/60/2546960_image2_1.jpg"
								alt="남산골 야시장"></a>1890 남산골야시장 2018<br />
							2018.05.05(토)~2018.10.27(토)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="달빛기행"></a> 창덕궁 달빛기행<br />2018.04.05(목)~2018.10.28(일)</li>
						<br />
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="달빛기행"></a> 창덕궁 달빛기행<br />2018.04.05(목)~2018.10.28(일)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=2496910"><img
								src="http://tong.visitkorea.or.kr/cms/resource/60/2546960_image2_1.jpg"
								alt="남산골 야시장"></a>1890 남산골야시장 2018<br />
							2018.05.05(토)~2018.10.27(토)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="달빛기행"></a> 창덕궁 달빛기행<br />2018.04.05(목)~2018.10.28(일)</li>
						<br />
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="달빛기행"></a> 창덕궁 달빛기행<br />2018.04.05(목)~2018.10.28(일)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=2496910"><img
								src="http://tong.visitkorea.or.kr/cms/resource/60/2546960_image2_1.jpg"
								alt="남산골 야시장"></a>1890 남산골야시장 2018<br />
							2018.05.05(토)~2018.10.27(토)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="달빛기행"></a> 창덕궁 달빛기행<br />2018.04.05(목)~2018.10.28(일)</li>
						<br />
					</ul>
				</figure>
			</section>
			<!-- ####################################################################################################### -->
			<!-- ####################################################################################################### -->
			<div class="pagination">
				<ul>
					<li class="prev"><a href="#">&laquo; Previous</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li class="splitter"><strong>&hellip;</strong></li>
					<li><a href="#">6</a></li>
					<li class="current"><strong>7</strong></li>
					<li><a href="#">8</a></li>
					<li class="splitter"><strong>&hellip;</strong></li>
					<li><a href="#">14</a></li>
					<li><a href="#">15</a></li>
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