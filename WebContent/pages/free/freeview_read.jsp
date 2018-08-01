<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="free.dto.FreeDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Single Single</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css"
	type="text/css" media="all">

<!-- hs 추가 -->
<link rel="shortcut icon" href="/single/images/favicon.ico">

<link rel='stylesheet' id='kboard-skin-thumbnail-css'
	href='/single/common/styles/free/thumbnail.css?ver=5.3.9' type='text/css'
	media='all' />
<link rel='stylesheet' id='kboard-comments-skin-default-css'
	href='/single/common/styles/free/comments.css?ver=4.4.4' type='text/css'
	media='all' />
<% FreeDTO post =(FreeDTO) request.getAttribute("post"); %>

<script type="text/javascript">
// 댓글 등록
function writeCmt()
{
    var form = document.getElementById("write_cmt");
    
    var postno = form.postno.value;
    //var id = form.comment_id.value
    var content = form.cmt.value;
    
    if(!content)
    {
        alert("내용을 입력하세요.");
        return false;
    }
    else
    {    
        var param="no="+postno+"&cmt="+content;
            
        httpRequest = getXMLHttpRequest();
        httpRequest.onreadystatechange = checkFunc;
        httpRequest.open("POST", "CommentWriteAction.co", true);    
        httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=EUC-KR'); 
        httpRequest.send(param);
    }
}

</script>
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

			<div id="kboard-document">
				<div id="kboard-thumbnail-document">
					<div class="kboard-document-wrap" itemscope
						itemtype="http://schema.org/Article">
						<div class="kboard-title" itemprop="name">
							<h1><%=post.getFr_title() %></h1>
						</div>

						<div class="kboard-detail">
							<div class="detail-attr detail-writer">
								<div class="detail-name">작성자</div>
								<div class="detail-value"><%=post.getMe_id()%></div>
							</div>
							<div class="detail-attr detail-date">
								<div class="detail-name">작성일</div>
								<div class="detail-value"><%=post.getFr_date()%></div>
							</div>
							<div class="detail-attr detail-view">
								<div class="detail-name">조회</div>
								<div class="detail-value"><%=post.getFr_hits()%></div>
							</div>
						</div>

						<div class="kboard-content" itemprop="description">
							<div class="content-view">
								<p style="text-align: center;">
								<% if(post.getFr_img() != null){ %>
								<img src="/single/pages/free/upload/<%= post.getFr_img() %>"/><br/>
								<%} %>
								<%=post.getFr_txt()%></p>
							</div>
						</div>

						<div class="kboard-document-action">

							<div class="right">
								<a href="#" class="kboard-button-action kboard-button-print"
									onclick="return confirm('신고 하시겠습니까?');">신고</a>
							</div>
						</div>

					</div>

					<div class="kboard-comments-area">
						<div id="kboard-comments-1851" class="kboard-comments-default">
							<div class="kboard-comments-wrap">

								<div class="comments-header">
									<div class="comments-count"> 전체 <span class="comments-total-count">1</span>
									</div>

									<hr>
								</div>
								
								<!-- 댓글 리스트 시작 -->
								<div class="comments-list">
									<ul>
										<li itemscope itemtype="http://schema.org/Comment"
											class="kboard-comments-item" data-username="sdasd"
											data-created="20170207223240">
											<div class="comments-list-username" itemprop="author">
												<img src="https://secure.gravatar.com/avatar/?s=24&amp;d=mm&amp;r=g" width="24" height="24"
													class="avatar avatar-24 wp-user-avatar wp-user-avatar-24 photo avatar-default" />
												sdasd
											</div>
											<div class="comments-list-create" itemprop="dateCreated">2017-07-21 22:32</div>
											<div class="comments-list-content" itemprop="description"> 네</div>

											<div class="comments-list-controller">
												<div class="left">
													<button type="button"
														class="comments-button-action comments-button-delete"
														onclick="kboard_comments_open_confirm('indexa0cc.html?action=kboard_comment_confirm&amp;uid=2578');"
														title="삭제">삭제</button>
													<button type="button"
														class="comments-button-action comments-button-edit"
														onclick="kboard_comments_open_edit('index464e.html?action=kboard_comment_edit&amp;uid=2578');"
														title="편집">편집</button>
												</div>
												</div>
										</li>
									</ul>

								</div>
								
								<!-- 댓글 입력 폼 시작 -->
								<form id="write_cmt" method="post" action="/single/fr/cmtinsert.do?no=<%=post.getFr_no()%>"
									onsubmit="writeCmt()">
									<input name="postno" type="hidden" value="<%=post.getFr_no()%>">
									<div class="kboard-comments-form">
										<div class="comments-field">
											<textarea name="cmt" placeholder="댓글을 입력하세요."
												onfocus="kboard_comments_field_show()" required></textarea>
										</div>

										<div class="comments-submit-button">
											<input type="submit" value="입력">
										</div>
									</div>
								</form>
								<!-- 댓글 입력 폼 끝 -->

							</div>
						</div>
					</div>

					<div class="kboard-control">

						<div class="left">
							<a href="/single/fr/list.do?category=all"
								class="kboard-thumbnail-button-small">돌아가기</a>
						</div>
						<div class="right">
							<a
								href="/single/fr/read.do?no=<%=post.getFr_no()%>&action=modify"
								class="kboard-thumbnail-button-small">글수정</a> <a
								href="/single/fr/delete.do?no=<%=post.getFr_no()%>"
								class="kboard-thumbnail-button-small"
								onclick="return confirm('삭제 하시겠습니까?');">글삭제</a>
						</div>
					</div>

				</div>
			</div>
			<br />

			</div>
			<!-- ################################################################################################ -->
			<div class="clear"></div>
		</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>