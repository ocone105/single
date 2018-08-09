<%@page import="javafx.scene.control.Alert"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="member.dto.MemberDTO"%>
<%@page import="vs.dto.VsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
	<script src="/single/common/scripts/jquery.min.js"></script>
	<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="/single/common/styles/vs/vsview.css">
	<link rel="stylesheet" href="/single/common/styles/vs/vscmt.css">
	<script type="text/javascript">
		
		// �������� ��ǥ��  
		$(document).ready(function(){
			$(".btnA").on("click", function(){
				vs_no = $(this).attr("id");
				document.getElementById("A"+vs_no).value = "A"+vs_no;
				document.myformA.submit();
			});
			$(".btnB").on("click", function(){
				vs_no = $(this).attr("id");
				document.getElementById("B"+vs_no).value = "B"+vs_no;
				document.myformB.submit();
			});
		});
		
		
		// ���
		function showCmt(myvs_no){
			vs_no = myvs_no;
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange = readyCallback;
			xhr.open("GET", "/single/vs/vs_cmt_read.do?vs_no=" + myvs_no, true);
			xhr.send();
		}
		function readyCallback(){
			if(xhr.readyState==4&&xhr.status==200){
				var myjsonObj = JSON.parse(xhr.responseText);
				// alert(myjsonObj.cmtlist[0].vs_cmt_txt);
				var cmtList = document.getElementById("commentsList"+vs_no);
			    if(cmtList.style.display=="block"){
			    	cmtList.style.display = "none";
			    }else{
			    	cmtList.style.display = "block"; 
			    }
			    document.getElementById("cmtNum").innerHTML=myjsonObj.cmtlist.length;
				myjsonObj.cmtlist[0].vs_num;
			    mydata = "";
				for(i in myjsonObj.cmtlist){
					mydata = mydata + "<li class='list-group-item'><div class='row'>";
					mydata = mydata + "<div class='col-xs-2 col-md-1'>";
					mydata = mydata + "<img src='/single/images/irene.png' class='img-circle img-responsive' alt='' /></div>";
					mydata = mydata + "<div class='col-xs-10 col-md-11'><div class='comment-text'>";
					mydata = mydata + myjsonObj.cmtlist[i].vs_cmt_txt;
					mydata = mydata + "</div><div class='mic-info'>By: "
					mydata = mydata + "<a href='#'>"+myjsonObj.cmtlist[i].me_id+"</a> on 2 Jul 2018</div></div></div></li>";
				}
				// alert(mydata);
				// alert(myjsonObj.cmtlist.length);
				document.getElementById("cmt"+vs_no).innerHTML = mydata;
				for (j = 0; j < myjsonObj.cmtlist.length; j++) {
					
				}
				
			}
		}

	</script>
</head>
<body>
	<%
		MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	%>
	
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>

	<div class="wrapper row2">
		<div id="container">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			
			<a href="/single/pages/vs/vspost.jsp">�۾���</a>
			 
			<%
				ArrayList<VsDTO> posts = (ArrayList<VsDTO>) request.getAttribute("posts");
				//System.out.println("�Խñ�" + posts);
				int size = posts.size();
				
				int cntA;
				int cntB;
				float ratingA;
				
				if(posts!=null){
					for (int i = 0; i < size; i++) {
						VsDTO post = posts.get(i);
						if(post.getVs_hitsA()==0 & post.getVs_hitsB()==0){
							cntA=50;
							cntB=50;
						}else{
							cntA = post.getVs_hitsA();
							cntB = post.getVs_hitsB();
						}
						ratingA = cntA * 100 / (cntA+cntB);
						request.setAttribute("ratingA", ratingA);
						request.setAttribute("cntA", cntA);
						request.setAttribute("cntB", cntB);
			%>
			<div id="post">
				<div class="row">
					<h2 style="text-align: center"><%=post.getVs_title()%></h2>
					<h4 style="text-align: center"><%=post.getVs_txt()%></h4>
					<div class="vl">
						<span class="vl-innertext">VS</span>
					</div>
					<form action="/single/vs/select.do" id="myformA">
					<div class="col" style="text-align: center">
						<button class="btnA" id="<%=post.getVs_no()%>"><%=post.getVs_optionA()%></button>
						<input type="hidden" name="A" id="A<%=post.getVs_no()%>">
					</div>
					</form>
					<form action="/single/vs/select.do" id="myformB">
					<div class="col" style="text-align: center">
						<button class="btnB" id="<%=post.getVs_no()%>"><%=post.getVs_optionB()%></button>
						<input type="hidden" name="B" id="B<%=post.getVs_no()%>">
					</div>
					</form>
				</div>
			
				<br/><br/>
				
				<div id="bar">
					<jsp:include page="/pages/vs/bar.jsp" />
				</div>
				
				<input type="button" class="button" value="��� ����  &raquo;" onclick="showCmt('<%=post.getVs_no()%>')" id="show"/>
				<input type="button" class="button" value="��� ���� &raquo;" data-toggle="modal" data-target="#CommentModal" />
				<!-- <a href="/single/pages/vs/vscmt.jsp">��� ���� &raquo;</a>
				<a href="#" data-toggle="modal" data-target="#CommentModal">��� ���� &raquo;</a> -->
				<br/>
				<br/>
				<br/>
		<%-- ��� --%>
		<div class="row" id="commentsList<%=post.getVs_no() %>" style="display:none">
			<div class="panel panel-default widget">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-comment"></span>
					<h3 class="panel-title">Comments</h3>
					<span class="label label-default" id="cmtNum">0</span>
				</div>
				<div class="panel-body">
					<ul class="list-group">
							
						<span id="cmt<%=post.getVs_no() %>"></span>
						<%--��۸�� --%>
<!-- 						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-2 col-md-1">
									<img src="/single/images/irene.png" class="img-circle img-responsive" alt="" />
								</div>
								<div class="col-xs-10 col-md-11">
									<div class="comment-text">���� ������ ���ؾ���</div>
										<div class="mic-info">
											By: <a href="#">������</a> on 2 Jul 2018
										</div>
								</div>
							</div>
						</li> -->
						
					</ul>
					<!-- <a href="#" class="btn btn-default btn-sm btn-block" role="button"> 
						<span class="glyphicon glyphicon-refresh"></span> More
					</a> -->
				</div>
			</div>
		</div>
		
		
	
		
				<%-- #############################################��� �ۼ� modal######################################################### --%>
				<div class="modal fade" id="CommentModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times; </span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">��� ����</h4>
							</div>
							<form action="/single/vs/vs_cmt_insert.do" method="POST">
								<div class="modal-body">
									<div class="input-group">
										<span class="input-group-addon"> * �ۼ���</span> 
										<input type="text" class="form-control" placeholder="<%=post.getMe_id()%>" name="me_id" />
									</div>
									<p></p>
									<div class="input-group">
										<span class="input-group-addon">* ��&nbsp;&nbsp;&nbsp;��</span>
										<textarea class="form-control" rows="5" placeholder="��� ����"  name="vs_cmt_txt" required="required"></textarea>
										<input type="hidden" name="vs_no" value="<%=post.getVs_no()%>"/>
									</div>
								</div>

								<div class="modal-footer">
									<button type="submit" class="btn btn-default" style="float: right; width: 20%">���</button>
									<button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; width: 20%">���</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<%-- ################################################################################################################## --%>

			</div>	
			<%}}%>
			
		</div>
	</div>
	
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
	
</body>
</html>
