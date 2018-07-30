<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registration</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/single/common/styles/member/update.css" rel="stylesheet">
<script src="/single/common/scripts/member/member.js"></script>
</head>
<body>
<div class="wrapper row1">
	<jsp:include page="/pages/template/Topbar.jsp" />
</div>
<div class="wrapper row2">
	<div id="container" class="container bootstrap snippet">
		<%-- <jsp:include page="/pages/template/floatingmenu.jsp" /> --%>
		<div class="page-header">
				<h1>회원탈퇴</h1>
		</div>
		<div class="row">
				<div class="col-sm-10">
					<h1>User_Id</h1>
				</div>
		</div>
		<form class="form-horizontal" action="/single/memberinsert.do" method="POST" name="myform">
	</div>
</div>

<div class="wrapper row3">
	<jsp:include page="/pages/template/Footer.jsp" />
</div>
</body>
</body>
</html>