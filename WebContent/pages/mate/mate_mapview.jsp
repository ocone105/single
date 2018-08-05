<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<% String addr=""; %>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <title>좌표로 주소를 얻어내기</title>
    <style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
<script src="/single/common/scripts/mate/map.js"></script>
<script type="text/javascript">
	function mapselect(){
		opener.document.getElementById("result").value = document.getElementById("centerAddr").innerHTML;
		window.close();
	}
</script>

</head>
<body>
<% MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	String me_id = loginUser.getMe_id();
	String me_loc = loginUser.getMe_loc();
%>
<form>
<div id="content">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
		<input type="button" value="선택" onclick="mapselect()">
</div>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

</div>
</form>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e389da52ac8c672d4985eead6dce0c46&libraries=services"></script>
</body>
</html>

