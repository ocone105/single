<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<% String addr=""; %>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e389da52ac8c672d4985eead6dce0c46&libraries=services"></script>
    <meta charset="utf-8">
    <title>��ǥ�� �ּҸ� ����</title>
    <style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    #info{width: 100%; text-align: center; margin-top: 15px; }
</style>
<script src="/single/common/scripts/mate/map.js"></script>


<% MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	String me_id = loginUser.getMe_id();
	String me_loc = loginUser.getMe_loc();
%>
<script type="text/javascript">
	function mapselect(){
		opener.document.getElementById("result").value = document.getElementById("centerAddr").innerHTML;
		window.close();
	}
	

	var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
	mapOption = {
		center : new daum.maps.LatLng(<%=me_loc%>), level : 3	
	};
	// ������ �߽���ǥ // ������ Ȯ�� ����
	
</script>

</head>
<body>

<form>
<div id="content">
	<div class="map_wrap">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	
	</div>
	<div id="info">
        <span class="title">�ּ�����</span>
        <span id="centerAddr"></span>
        <div style="height: 30px;">
        </div>
        <button type="button" onclick="mapselect()" class="btn btn-danger">����</button>
	</div>	
</div>
</form>
</body>


<script type="text/javascript">
	function mapselect(){
		opener.document.getElementById("result").value = document.getElementById("centerAddr").innerHTML;
		window.close();
	}
	var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new daum.maps.LatLng(<%=me_loc%>), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new daum.maps.Map(mapContainer, mapOption); 

// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new daum.maps.services.Geocoder();

var marker = new daum.maps.Marker(), // Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
    infowindow = new daum.maps.InfoWindow({zindex:1}); // Ŭ���� ��ġ�� ���� �ּҸ� ǥ���� �����������Դϴ�

var zoomControl = new daum.maps.ZoomControl(); // ���� Ȯ�� ��Ҹ� ������ �� �ִ�  �� ��Ʈ���� �����մϴ�
map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);    

// ���� ���� �߽���ǥ�� �ּҸ� �˻��ؼ� ���� ���� ��ܿ� ǥ���մϴ�
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// ������ Ŭ������ �� Ŭ�� ��ġ ��ǥ�� ���� �ּ������� ǥ���ϵ��� �̺�Ʈ�� ����մϴ�
daum.maps.event.addListener(map, 'click', function(mouseEvent) {
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === daum.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>���θ��ּ� : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>���� �ּ� : ' + result[0].address.address_name + '</div>';
            
            var content = '<div class="bAddr">' +
                            '<span class="title">������ �ּ�����</span>' + 
                            detailAddr + 
                        '</div>';

            // ��Ŀ�� Ŭ���� ��ġ�� ǥ���մϴ� 
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);

            // ���������쿡 Ŭ���� ��ġ�� ���� ������ �� �ּ������� ǥ���մϴ�
            infowindow.setContent(content);
            infowindow.open(map, marker);
        }   
    });
});

// �߽� ��ǥ�� Ȯ�� ������ ������� �� ���� �߽� ��ǥ�� ���� �ּ� ������ ǥ���ϵ��� �̺�Ʈ�� ����մϴ�
daum.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // ��ǥ�� ������ �ּ� ������ ��û�մϴ�
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // ��ǥ�� ������ �� �ּ� ������ ��û�մϴ�
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// ���� ������ܿ� ���� �߽���ǥ�� ���� �ּ������� ǥ���ϴ� �Լ��Դϴ�
function displayCenterInfo(result, status) {
    if (status === daum.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');
		var resultDiv = document.getElementById('result');
        for(var i = 0; i < result.length; i++) {
            // �������� region_type ���� 'H' �̹Ƿ�
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
}
	
</script>

</html>

