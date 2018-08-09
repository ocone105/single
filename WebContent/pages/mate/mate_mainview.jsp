<%@page import="member.dto.MemberDTO"%>
<%@page import="mate.dto.MateDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>



</head>
<body>
	<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	
	<div class="wrapper row2">
		<div id="container">
			<!-- �÷��ù�� -->
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			
			<div>
				<button class="btn btn-primary" onclick="panTo()">����ġ��</button>
				<a href="/single/pages/mate/mate_writeview.jsp"><button class="btn btn-danger">�Ҹ��� �����</button></a>
			</div>
			
			<!-- map body -->
			<div id="map" style="width: 100%; height: 400px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e389da52ac8c672d4985eead6dce0c46&libraries=services,clusterer,drawing"></script>
			<script type="text/javascript">
			
			var map = new daum.maps.Map(document.getElementById('map'), { // ������ ǥ���� div
						center : new daum.maps.LatLng(36.2683, 127.6358), // ������ �߽���ǥ 
						level : 12	// ������ Ȯ�� ���� 
						});
			
			function panTo() {
				// �̵��� ���� �浵 ��ġ�� �����մϴ� 
				var moveLatLon = new daum.maps.LatLng(<%=loginUser.getMe_loc()%>);
				// ���� �߽��� �ε巴�� �̵���ŵ�ϴ�
				// ���� �̵��� �Ÿ��� ���� ȭ�麸�� ũ�� �ε巯�� ȿ�� ���� �̵��մϴ�
				map.panTo(moveLatLon);
			}
			var zoomControl = new daum.maps.ZoomControl();
			map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
			
			// ��Ŀ Ŭ�����ͷ��� �����մϴ� 
			var clusterer = new daum.maps.MarkerClusterer({
				map : map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
				averageCenter : true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
				minLevel : 10
			// Ŭ������ �� �ּ� ���� ���� 
			});
			// �����͸� ������ ��Ŀ�� �����ϰ� Ŭ�����ͷ� ��ü�� �Ѱ��ݴϴ�
			$.get("/single/common/json/location.json", function(data) {
				// �����Ϳ��� ��ǥ ���� ������ ��Ŀ�� ǥ���մϴ�
				// ��Ŀ Ŭ�����ͷ��� ������ ��Ŀ ��ü�� ������ �� ���� ��ü�� �������� �ʽ��ϴ�
				var markers = $(data.positions).map(function(i, position) {
					return new daum.maps.Marker({
						position : new daum.maps.LatLng(position.lat, position.lng)
					});
				});
				// Ŭ�����ͷ��� ��Ŀ���� �߰��մϴ�
				clusterer.addMarkers(markers);
			});
		</script>
			<% ArrayList<MateDTO> dtolist = (ArrayList<MateDTO>)request.getAttribute("dtolist");
				int size = dtolist.size();%>

			<div id="map"></div>

			<hr />
			<!-- content body -->

			<section id="portfolio" class="clear">
				<ul>
				<% for(int i = 0; i<size; i++){
					%>
					<li>
						<a href="/single/mt/read.do?mt_no=<%=dtolist.get(i).getMt_no() %>">
						<article>
							<figure>
								<figcaption><%=dtolist.get(i).getMt_ctg() %></figcaption>
								<figcaption><%=dtolist.get(i).getMt_map() %></figcaption>
								<img src="<%=dtolist.get(i).getMt_img() %>"
									alt="<%=dtolist.get(i).getMt_img() %>">
								<figcaption><%=dtolist.get(i).getMt_title() %></figcaption>
							</figure>
						</article></a>
					</li>
						<% }%>
<!-- 					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>2�� �Ҹ���</figcaption>
							</figure>
						</article>
					</li>
					<li>
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>3�� �Ҹ���</figcaption>
							</figure>
						</article>
					</li>
					<li class="last">
						<article>
							<figure>
								<a href="#"><img src="/single/images/demo/225x160.gif" alt=""></a>
								<figcaption>4�� �Ҹ���</figcaption>
							</figure>
						</article>
					</li> -->

				</ul>
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