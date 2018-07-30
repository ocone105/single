<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR" >
 	<title>Bar Chart</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Khula:300,600" rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="/single/common/styles/vs/bar.css">
</head>
<body>
	
	<figure>
		<div class="graphic">

			<div class="row">
				<div class="chart">
					<span class="block" title="Option A"> <span class="value">50%</span></span>
					<span class="block" title="Option B"> <span class="value">50%</span></span>
				</div>
			</div>

		</div>

		<!-- <div class="x-axis" style="transform: translate(-7%)">
			<ul class="legend">
				<li>A 선택</li>
				<li>B 선택</li>
			</ul>
		</div> -->
	</figure>
	
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js'></script>
	<script src="/single/common/scripts/bar.js"></script>
</body>
</html>