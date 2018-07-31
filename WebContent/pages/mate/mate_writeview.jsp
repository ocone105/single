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
<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<!-- ################################################################################################ -->
			<h1>소모임만들기</h1>
			<hr/>
			<form action="" method="post">
				<table border="1">
					<tr>
						<td>소모임이름</td>
						<td><input type="text" name="mt_title" size="40" value="">
						</td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td><select name="mt_ctg">
								<option>동네친구</option>
								<option>밥친구</option>
						</select></td>
					</tr>
					<tr>
						<td>지역</td>
						<td><select name="mt_map">
								<option>서울</option>
								<option>경기</option>
						</select> <select>
								<option>구로구</option>
								<option>관악구</option>
								<option>영등포구</option>
						</select></td>
					</tr>
					<tr>
						<td>인원</td>
						<td><select name="mt_cnt">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
						</select></td>
					</tr>
					<tr>
						<td>이미지</td>
						<td><input type="file" name="mt_img"></td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td><input type="file" name="mt_file"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="mt_txt" cols="100" rows="8"></textarea></td>
					</tr>
				</table>
				<footer class="more">
					<a href="#">취소</a>
				</footer>
					<input type="submit" value="등록" />
			</form>
			<!-- content body -->


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