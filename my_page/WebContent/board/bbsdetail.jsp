<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body {
   	 	font-size: 13px;
    	line-height: 18px;
	}
	h1 {
		font-weight: 800;
	    font-size: 36px;
	    margin-bottom: 10px;
	    line-height: 46px;
	}
	p {
	    font-size: 13px;
	    line-height: 22px;
	}
	table {
	    width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    table-layout: fixed;
	    word-wrap: break-word;
   		word-break: keep-all;
   		display: table;
    }
    thead {
	    display: table-header-group;
	    vertical-align: middle;
	    border-color: inherit;
    	overflow: hidden;
   		width: 100%;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	td, th {
	    display: table-cell;
	    vertical-align: inherit;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	table img {
	    vertical-align: middle;
	}
	colgroup {
	    display: table-column-group;
	}
	dd, dl {
	    font-size: 13px;
	    line-height: 22px;
	}
	a:active {
	    background-color: transparent;
	}
	#contentWrap {
		background-color: #f5f5f5;
	}
	#border_top {
		background: url("image/bbsbg.jpg") no-repeat;
		width: 100%;
		padding: 61px 0px 81px 0px;
    	text-align: center;
    	height: 100%;
	}
	#border_top h1 {
	    font-size: 40px;
	    color: #fff;
	}
	#border_top p {
		color: #fff;
		font-size: 16px;
	}
	#content {
		width: 1020px;
		margin: 0 auto;
		zoom: 1;
	}
	#bbsData_container {
		width: 980px;
		margin: 30px 0;
		background: #fff;
		padding : 20px;
	}
	#bbs_table_view thead {
	    overflow: hidden;
	    width: 100%;
	}
	#bbs_table_view thead th{
	    height: 44px;
	    color: #333;
	    font-weight: normal;
	    border-top: 1px solid #bbb;
	    border-bottom: 1px solid #bbb;
	    background: #fff;
    }
    .txt_cc {
    	text-align: left;
    	font-size: 28px;
    	font-weight: bold;
    }
	#bbs_table_view tbody td {
	    height: 17px;
	    color: #555;
	    padding: 8px 0;
	    border-top: 1px solid #dadada;
	    background: none;
	}
	.cont_sub_des {
		padding: 0 10px;
	}
	#bbs_table_view tbody td div {
		padding:0;
	}
	.cont_sub_des span {
		margin-right: 15px;
		color: #555;
	}
	.cont_sub_des span em {
		font-size: 13px;
		color: #9c9c9c;
	}
	.data_bd_cont {
	    min-height: 300px;
	    padding: 20px 10px!important;
	    line-height: 26px;
	}
	 #login_comment, #nonlogin_comment {
		display: none;
	} 
	.comment_box2 {
		border: none;
		border-bottom: 1px solid #fff;
	}
	.com_name {
		line-height: 45px;
		text-align: center;
		color: #555;
		font-weight: bold;
	}
	.wrt {
		margin: 6px 0;
	}
	.com_wrt_box label{
		padding-left: 7px;
		color: #9d9d9d;
	}
	.wrt span {
		margin: 0 10px;
	}
	.input_style {
		padding: 2px;
	    height: 14px;
	    line-height: 14px;
	    border: 1px solid #ededed;
	}
	.input_style2 {
		width: 120px;
   		margin: 0px 5px;
	}
	.com_wrt_box .input_style {
		margin: 0 10px 0 7px;
	    padding: 6px 10px;
		height: 22px;
	    line-height: 24px;
	    border: 1px solid #ddd;
	    background: #fcfcfc;
	}
	.wrt textarea {
	    width: 98.5%;
	    height: 100px;
	    resize: none;
	    padding: 5px;
	    margin: 0 5px 0 0;
	    border: 1px solid #ddd;
    }
    #board_re_btn {
    	width: 100%;
	    height: 54px;
	    text-align: center;
	    margin: 40px auto;
	    color: #666;
	    line-height: 54px;
	    border: 1px solid #ddd;
    }
    #board_re_btn p:hover {
    	background-color: #88b04b;
    	color: #fff;
    	transition: 0.3s;
    }
    #board_re_btn p {
    	font-size: 17px;
    	line-height: 54px;
    }
    #view_link {
    	position: relative;
    	text-align: right;
    	padding: 12px 0;
    }
    .bbs_link {
    	font-size: 0;
    	line-height: 0;
    }
    .con_link {
    	position: absolute;
    	left: 0;
    }
    .bbs_link a {
	    display: inline-block;
	    font-size: 13px;
	    padding: 0 3px;
	    line-height: 14px;
	    color: #9b9b9b;
	}
	.bbs_link p {
		padding: 10px 14px;
	    border: 1px solid #ddd;
	    color: #666;
	}
	.bbs_link span {
		font-size: 12px;
		color: #ccc;
		line-height: 14px;
	}
	#write {
		padding: 0;
		margin: 0 3px;
	}
	#write_p {
		padding: 10px 14px;
	    border: 1px solid #88b04b;
	    background: #88b04b;
	    color: #fff;
	}
	.tb-right {
		float: right;
	}
	.comment-box td {
	    padding-bottom: 20px;
	    border-top: 1px solid #e5e5e5;
	    vertical-align: middle;
    }
    .reply_del {
    	border: 0;
    	cursor: pointer;
    	padding: 1px;
    	background-color: #fff;
    	color: #9b9b9b;
    	font-weight: bold;
    }
    .reply_del:hover{
    	color: red;
    }
	.tb-center {
	    text-align: center;
	}
	.txt_1 {
		text-align: left;
	}
	.txt_c {
	    text-align: center;
	    font-size: 12px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function (){
		comment_list();
		
		var loginyn = $("#sessionLogin").val();
		if (loginyn != "") {
			/* 로그인 상태시 댓글 작성가능*/
			$("#login_comment").css("display","block");
			$("#a_like").css("display","inline-block");
		}else {
			/* 비로그인 상태시 로그인 유도 */
			$("#nonlogin_comment").css("display","block");
			$("#a_like").css("display","none");
		}
	});
	
	function comment_list() {
		var bno = ${boardview.bno};
		$.ajax({
			type: "POST",
			url: "commentlist.sidedish",
			data:"bno=" +bno,
			success:function(result){
				$("#commentList").html(result);
			},
			error: function () {
				alert("System Error!!!");
			}
		});
	}
	
	$(document).on("click","#a_nonloagin",function (){
		$(".modal").css("display","block");
	});
	

	/* A-jax으로 댓글 삭제 */
	$(document).on("click",".reply_del",function (){
			var rno = $(this).attr("data_num");
			$.ajax({
				url: "replydelete.sidedish",
				type: "POST",
				dataType: "json",
				data: "rno="+ rno,
				success: function(data){
					comment_list();
				},
				error: function () {
					alert("System Error!!!");
				}
			});
	});
	

	//댓글이 있으면 삭제 불가
	$(document).on("click","#a_delete",function (){
		var bno = $("#bno").val();
		var replycnt = $("#hidden_replycnt").val();
		if (replycnt > 0) {
			alert("댓글이 있는 글은 삭제하실 수 없습니다.");
			return false;
		}else {
			location.href="boarddelete.sidedish?bno="+bno;
		}
		
	});
	// a-jax으로 댓글 생성
	$(document).on("click","#a_board_re_btn",function (){
		var comment_bno = $("#comment_bno").val();
		var comment_writer = $("#comment_writer").val();
		var comment_content = $("#comment_content").val();
		$.ajax({
			url: "comment.sidedish",
			type: "POST",
			dataType: "json",
			data: "comment_bno="+ comment_bno +"&comment_writer="+comment_writer+"&comment_content="+comment_content,
			success: function(data){
				comment_list();
				$("#comment_content").val("");
			},
			error: function () {
				alert("System Error!!!");
			}
		});
			
});
	$(document).on("click","#a_like",function (){
		var bno = ${boardview.bno};
		$.ajax({
			url: "goodupdate.sidedish",
			type: "POST",
			dataType: "json",
			data: "bno="+ bno,
			success: function(data){
				location.reload();
			},
			error: function () {
				alert("System Error!!!");
			}
		});
	});
</script>
</head>
<body>
	<input type="hidden" id="sessionLogin" value="${sessionScope.loginUser.mid}">
	<div id= "contentWrap" >
		<!-- 상단 이미지 및 제목 -->
		<div id = "border_top">
			<h1>텍스트 후기</h1>
			<p>5줄 이상 작성시 적립금 +500원!</p>
		</div>	
		<div id = "content">
			<div id="bbsData_container">
				<div id = "page_body">
					<div id="bbs_table_view">
						<!-- 본문  -->
						<form method="post">
						<table >
							<thead>
								<tr>
									<th colspan="2"><div class="txt_cc"> ${boardview.title}</div></th>
									<th style="text-align: right; color: #dadada;"><span><em style="color:#999!important;">조회수 : </em><i class="fa fa-eye" style="color: #88b04b;"></i> ${boardview.viewcnt}<br><em style="color:#999!important;">좋아요 : </em><i class="fa fa-thumbs-o-up" style="color: #88b04b;"></i> ${boardview.goodcnt} </span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="line" colspan="3">
										<div class="cont_sub_des">
											<div><span><em>Date :</em>  <fmt:formatDate pattern="yyyy-MM-dd" value="${boardview.regdate}"/> </span></div>
											<div><span><em>Name :</em> ${boardview.writer} </span></div>
											<div><span><em>첨부파일 : </em> 1245.jpg</span></div>
										</div>
									</td>
								</tr>
								<tr>	
									<td>
										<div class="data_bd_cont" colspan="2" style="width: 960px;">
											${boardview.content}
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						</form>
						<!-- 리플 출력  -->
						<div id="commentList"></div>
						<!-- 리플  달기-->
						<div id="login_comment">
						<form action="comment.sidedish" name="comment" id="comment" method="post">
							<input id="comment_bno" name="comment_bno" type="hidden" value="${boardview.bno}">
							<input type="hidden" name="page_type" value="board_view">
							<fieldset>
								<table class="comment_box2">
									<colgroup>
										<col width="120">
										<col>
										<col width="150">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="3" class="com_wrt_box">
												<div>
													<div class="wrt">
														<label>아이디</label>
														<span><input id="comment_writer" name="comment_writer" type="text" class="input_style input_style2" value="${sessionScope.loginUser.mname}" readonly="readonly"></span>
													</div>
													<div class="wrt">
														<textarea id="comment_content" name="comment_content" placeholder="내용" ></textarea>
														<a href="#" id = "a_board_re_btn"><div id="board_re_btn"><p>댓글등록</p></div></a>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</fieldset>
						</form>
						</div>
						<div id="nonlogin_comment">
							<fieldset>
								<table class="comment_box2">
									<colgroup>
										<col width="*">
									</colgroup>
								<tbody>
									<tr>
										<td colspan="3" class="com_wrt_box">
											<div>
												<div class="wrt">
												<span><a href="#" style="color: #88b04b; font-weight: bold;" id="a_nonloagin">로그인</a> 후 댓글입력이 가능합니다.</span>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
								</table>
							</fieldset>
						</div>
						<div id="view_link">
						<c:if test="${sessionScope.loginUser.mname == boardview.writer}">
							<dl class="bbs_link con_link">
								<dd>
									<a id="a_modify" href="boardupdateview.sidedish?bno=${boardview.bno}"><p>수정</p></a>
									<a id="a_delete" href="boarddelete.sidedish?bno=${boardview.bno}"><p>삭제</p></a>
									<a href="#"><p>답변</p></a>
								</dd>
							</dl>
						</c:if>
							<dl class="bbs_link">
								<dd> 
									<a href ="#" id="a_like" style="display: none; cursor: pointer;"><p><i class="fa fa-thumbs-o-up" style="color: #999;"></i>  좋아요</p></a>	
									<a id="write" href="boardinsertview.sidedish"><p id="write_p">글쓰기</p></a>
									<a href="boardlist.sidedish"><p>목록</p></a>
								</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>
<%@ include file="/footer.jsp" %>