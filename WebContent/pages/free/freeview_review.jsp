<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css"
	type="text/css" media="all">

<!-- hs 추가 -->

<link rel='stylesheet' id='kboard-skin-thumbnail-css'
	href='/single/common/styles/free/thumbnail.css?ver=5.3.9' type='text/css'
	media='all' />

<!-- -------------------------------- -->



<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
	<!-- content -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- 플로팅배너 -->
			<jsp:include page="/pages/template/floatingmenu.jsp" />

			<div id="kboard-thumbnail-list">

				<!-- 카테고리 시작 -->
				<div class="kboard-category category-pc">
					<ul class="kboard-category-list">
						<li><a href="/single/fr/list.do?action=all">전체</a></li>
						<li><a href="/single/fr/list.do?action=free">자유</a></li>
						<li><a href="/single/fr/list.do?action=tip">정보</a></li>
						<li class="kboard-category-selected"><a
							href="/single/fr/list.do?action=review">후기</a></li>
						<li><a href="/single/fr/list.do?action=recom">추천</a></li>
					</ul>
				</div>
				<!-- 카테고리 끝 -->
				<!-- 리스트 시작 -->
				<div class="kboard-list">
					<table>
						<thead>
							<tr>
								<td class="kboard-list-uid">번호</td>
								<td class="kboard-list-title">제목</td>
								<td class="kboard-list-user">작성자</td>
								<td class="kboard-list-date">작성일</td>
								<td class="kboard-list-view">조회</td>
							</tr>
						</thead>
						<tbody>
							<tr class="kboard-list-notice">
								<td class="kboard-list-uid">공지사항</td>

								<td class="kboard-list-title"><a href="freeview_view.jsp">
										<div class="kboard-thumbnail-cut-strings">
											공지사항을 읽어주세요. <span class="kboard-comments-count">(1)</span>
										</div>
								</a>
									<div class="kboard-mobile-contents">
										<span class="contents-item kboard-user">admin</span> <span
											class="contents-separator kboard-date">|</span> <span
											class="contents-item kboard-date">2018.07.21</span> <span
											class="contents-separator kboard-view">|</span> <span
											class="contents-item kboard-view">조회 26</span>
									</div></td>
								<td class="kboard-list-user">admin</td>
								<td class="kboard-list-date">2018.07.21</td>
								<td class="kboard-list-view">26</td>
							</tr>

							<tr class="">
								<td class="kboard-list-uid">1</td>

								<td class="kboard-list-title"><a href="#">
										<div class="kboard-thumbnail-cut-strings">
											안녕하세요. <span class="kboard-comments-count"></span>
										</div>
								</a>
									<div class="kboard-mobile-contents">
										<span class="contents-item kboard-user">blur</span> <span
											class="contents-separator kboard-date">|</span> <span
											class="contents-item kboard-date">2018.07.21</span> <span
											class="contents-separator kboard-view">|</span> <span
											class="contents-item kboard-view">조회 7</span>
									</div></td>
								<td class="kboard-list-user">blur</td>
								<td class="kboard-list-date">2018.07.21</td>
								<td class="kboard-list-view">7</td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- 리스트 끝 -->

				<!-- 페이징 시작 -->
				<div class="kboard-pagination">
					<ul class="kboard-pagination-pages">
						<li class="active"><a href="#" onclick="return false">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li class="next-page"><a href="#">→</a></li>
						<li class="last-page"><a href="#">마지막</a></li>
					</ul>
				</div>
				<!-- 페이징 끝 -->

				<!-- 검색폼 시작 -->
				<div class="kboard-search">
					<form id="kboard-search-form-1" method="get" action="freeview.jsp">
						<input type="hidden" name="mod" value="list"><input
							type="hidden" name="pageid" value="1"> <select
							name="target">
							<option value="">전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="member_display">작성자</option>
						</select> <input type="text" name="keyword" value="">
						<button type="submit" class="kboard-thumbnail-button-small">검색</button>
					</form>
				</div>
				<!-- 검색폼 끝 -->

				<!-- 버튼 시작 -->
				<div class="kboard-control">
					<a href="freeview_write.jsp" class="kboard-thumbnail-button-small">글쓰기</a>
				</div>
				<!-- 버튼 끝 -->
				<!-- ########################################################################################## -->
			</div>
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