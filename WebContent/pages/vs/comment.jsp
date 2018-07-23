<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>vs게시판</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
		<!--댓글목록-->
		body {
			padding-top: 30px;
		}
		
		.widget .panel-body {
			padding: 0px;
		}
		
		.widget .list-group {
			margin-bottom: 0;
		}
		
		.widget .panel-title {
			display: inline
		}
		
		.widget .label-info {
			float: right;
		}
		
		.widget li.list-group-item {
			border-radius: 0;
			border: 0;
			border-top: 1px solid #ddd;
		}
		
		.widget li.list-group-item:hover {
			background-color: rgba(86, 61, 124, .1);
		}
		
		.widget .mic-info {
			color: #666666;
			font-size: 11px;
		}
		
		.widget .action {
			margin-top: 5px;
		}
		
		.widget .comment-text {
			font-size: 12px;
		}
		
		.widget .btn-block {
			border-top-left-radius: 0px;
			border-top-right-radius: 0px;
		}
	</style>
</head>
<body>

	<!-- 댓글 목록 -->
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="panel panel-default widget">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span>
					<h3 class="panel-title">Comments</h3>
					<span class="label label-info"> 78</span>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-2 col-md-1">
									<img src="../../images/irene.png" class="img-circle img-responsive" alt="" />
								</div>
								<div class="col-xs-10 col-md-11">
									<div class="comment-text">뭐가 힘든지 말해야죠</div>
									<div>
										<a href="#"></a>
										<div class="mic-info">
											By: <a href="#">배주현</a> on 2 Jul 2018
										</div>
									</div>
									<div class="action">
										<button type="button" class="btn btn-primary btn-xs" title="Edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button type="button" class="btn btn-success btn-xs" title="Approved">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
										<button type="button" class="btn btn-danger btn-xs" title="Delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</div>
								</div>
							</div>
						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-2 col-md-1">
									<img src="../../images/jun.png" class="img-circle img-responsive" alt="" />
								</div>
								<div class="col-xs-10 col-md-11">
									<div class="comment-text">그냥 퇴사하세요</div>
									<div>
										<a href="#"></a>
										<div class="mic-info">
											By: <a href="#">박서준</a> on 11 Jul 2018
										</div>
									</div>
									<div class="action">
										<button type="button" class="btn btn-primary btn-xs" title="Edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button type="button" class="btn btn-success btn-xs" title="Approved">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
										<button type="button" class="btn btn-danger btn-xs" title="Delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</div>
								</div>
							</div>
						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-2 col-md-1">
									<img src="../../images/park.png" class="img-circle img-responsive" alt="" />
								</div>
								<div class="col-xs-10 col-md-11">
									<div class="comment-text">직무가 뭔가요</div>
									<div>
										<a href="#"></a>
										<div class="mic-info">
											By: <a href="#">박형식</a> on 22 Jul 2018
										</div>
									</div>
									<div class="action">
										<button type="button" class="btn btn-primary btn-xs" title="Edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button type="button" class="btn btn-success btn-xs" title="Approved">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
										<button type="button" class="btn btn-danger btn-xs" title="Delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</div>
								</div>
							</div>
						</li>
						
					</ul>
					<a href="#" class="btn btn-default btn-sm btn-block" role="button"> 
						<span class="glyphicon glyphicon-refresh"></span> More
					</a>
			</div>
		</div>
	</div>
	<!-- 댓글 목록 -->

</body>
</html>