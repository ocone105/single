<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR" >
 	<title>Bar Chart</title>
    <link rel="stylesheet" href="/single/common/styles/vs/bar.css">
    
    <script type="text/javascript">
    	
    </script>
</head>
<body>
	<%
		float ratingA = (float) request.getAttribute("ratingA");
		float ratingB = 100 - ratingA;
		
	%>
	<figure>
		<div class="graphic">
			<div class="row">
				<div class="chart">
					<span class="block" title="추천수 : <%=request.getAttribute("cntA")%>"> <span class="value"><%=(int) ratingA %></span></span>
					<span class="block" title="추천수 : <%=request.getAttribute("cntB")%>"> <span class="value"><%=(int) ratingB %></span></span>
				</div>
			</div>

		</div>
	</figure>
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js'></script>
	<script src="/single/common/scripts/bar.js"></script>
</body>
</html>