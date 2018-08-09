<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

<!-- hs �߰� -->
<link rel="shortcut icon" href="/single/images/favicon.ico">

<link rel='stylesheet' id='kboard-skin-thumbnail-css'
	href='/single/common/styles/free/thumbnail.css?ver=5.3.9'
	type='text/css' media='all' />
<link rel='stylesheet' id='kboard-editor-media-css'
	href='/single/common/styles/free/editor.css?ver=5.3.9' type='text/css'
	media='all' />

<script type="text/javascript">
	function writeCheck() {
		var form = document.writeform;

		if (!form.title.value) {
			alert("������ �Է��ϼ���.");
			form.title.focus();
			return;
		}
		if (!form.txt.value) {
			alert("������ �Է��ϼ���.");
			form.txt.focus();
			return;
		}
		form.submit();
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
			<!-- �÷��ù�� -->
			<%
				MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
			%>
			<%
				if (loginUser != null) {
			%>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%
				}
			%>

			<div id="kboard-thumbnail-editor">
				<form class="kboard-form" method="post"
					action="/single/fr/insert.do" enctype="multipart/form-data" name=writeform>
					<div class="kboard-attr-row kboard-attr-title required">
						<label class="attr-name" for="title"> <span
							class="field-name">����</span> <span class="attr-required-text">*</span></label>
						<div class="attr-value">
							<input type="text" id="title" name="title" class="required"
								value="">
						</div>
					</div>

					<div class="kboard-attr-row kboard-attr-category1 ">
						<label class="attr-name" for="category1"> <span
							class="field-name">ī�װ�</span></label>
						<div class="attr-value">
							<select id="ctg" name="ctg" class="">
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="�ı�">�ı�</option>
								<option value="��õ">��õ</option>
							</select>
						</div>
					</div>

					<div class="kboard-attr-row kboard-attr-content ">
						<label class="attr-name" for="content"> <span
							class="field-name">����</span></label>
						<div class="kboard-content">
							<div id="wp-kboard_content-wrap"
								class="wp-core-ui wp-editor-wrap html-active">

								<div id="wp-kboard_content-editor-container"
									class="wp-editor-container">

									<textarea class="wp-editor-area" style="height: 400px"
										cols="40" name="txt" id="txt"></textarea>
								</div>
							</div>

						</div>
					</div>
					<input type="hidden" name="id" id="id"
						value="<%=loginUser.getMe_id()%>">
					<!-- ÷������ ���� -->
					<div class="kboard-attr-row kboard-attr-attach attach-1">
						<label class="attr-name" for="kboard-input-file1"> <span
							class="field-name">÷������</span></label>
						<div class="attr-value">
							<input type="file" id="attach" name="attach">
						</div>
					</div>
					<!-- ÷������ �� -->

					<div class="kboard-control">
						<div class="left">
							<a href="/single/fr/list.do?category=all"
								class="kboard-thumbnail-button-small">���ư���</a>
						</div>
						<div class="right">
							<button type="button" OnClick="writeCheck()"
								class="kboard-thumbnail-button-small">�����ϱ�</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Copyright -->
		<div class="wrapper row3">
			<jsp:include page="/pages/template/Footer.jsp" />
		</div>
</body>
</html>