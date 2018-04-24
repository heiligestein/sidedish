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
	#select_view {
		padding-bottom: 10px;
	}
	._view {
		border: 1px solid #dddddd;
		color: #999;
		display: inline-block;
		padding: 2px;
	}
	._view:hover {
		background-color: #80b04b;
		border: 1px solid #80b04b;
		color: #fff;
		transition: all 0.3s;
	}
	#bbs_table_write tbody td div {
	    padding: 0 10px;
	}
	#bbs_table_write tbody th{
	    height: 32px;
	    color: #333;
	    font-weight: normal;
	    border-top: 1px solid #dadada;
	    border-left: 1px solid #dadada;
	    border-right: 1px solid #dadada;
	    box-shadow: inset 1px 1px rgba(255,255,255,0.1), inset -1px -1px rgba(255,255,255,0.1);
	    -webkit-box-shadow: inset 1px 1px rgba(255,255,255,0.1), inset -1px -1px rgba(255,255,255,0.1);
	    background: #f6f6f6;
	}
	#bbs_table_write tbody td{
		height: 17px;
	    background: none;
		padding: 6px 0;
	    border-top: 1px solid #e5e5e5;
	    border-bottom: 1px solid #e5e5e5;
	    border-right: 1px solid #dadada;
	    color: #9d9d9d;
	    font-weight: normal;
	    font-size: 13px;
	}
	
	#bbs_table_write .input_style {
	    width: 180px;
	}
	#bbs_table_write tbody td input[type=text], #bbs_table_write tbody td input[type=password] {
	    height: 20px;
	    line-height: 20px;
	    padding: 6px 8px;
	    border: 1px solid #bbb;
	    background: #fcfcfc;
    }
    #bbs_table_write .input_style2 {
   		width: 460px;
   		height: 24px;
   		line-height: 24px;
    }
    #bbs_table_write tbody .text_edit textarea, #bbs_table_write textarea {
	    width: 100%;
	    resize: none;
	}
    .MS_input_txt {
	    margin-right: 5px;
	    padding: 6px 2px 6px 6px;
	    line-height: 17px;
	    border: 1px solid #dcdcdc;
	}
	#input_file {
		display: none;
	}
	 #bbs_table_write textarea {
	 	height: 200px;
	 	width: 99%;
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
	#page_bottom {
		margin: 20px 0;
	}
	.bbs_link {
		font-size: 0;
		line-height: 0;
	}
	
	.bbs_link_btm {
	    margin-top: 10px;
	    text-align: right;
	}
	#bbsData .bbs_link_btm {
	    margin: 20px 0 !important;
	}
	.bbs_link a {
		display: inline-block;
	    font-size: 13px;
	    line-height: 14px;
	    color: #9b9b9b;
	}
	#bbs_table_write p {
	    text-align: center;
	    margin: 10px 0px;
	}
	.bbs_link #cls_write {
		padding: 0;
		margin: 0 3px;
	}
	
	
	
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function (){
	});
		$(document).on("click","#cls_write",function (){
			$("#frm_insert").submit();	
			
			$("#input_title").val("");		
			$("#input_content").val("");		
			$("#input_writer").val("");		
			$("#input_password").val("");		
		});
	$(document).on("change","#input_file",function (){
		var value = $('input[name=file_name]').val();
		$("#filevalue").html(value);

	});	
	
</script>
</head>
<body>
	<div id= "contentWrap" >
		<!-- 상단 이미지 및 제목 -->
		<div id = "border_top">
			<h1>텍스트 후기</h1>
			<p>5줄 이상 작성시 적립금 +500원!</p>
		</div>	
		<div id = "content">
			<div id="bbsData_container">
				<div id = "page_body">
					<div id="bbs_table_write">
						<form role="form" action="boardinsertsave.sidedish" id="frm_insert" name="frm_insert" method="post" enctype="multipart/form-data" style="position: relative;">
							<table style="border-bottom: 1px solid #dddddd;">
								<colgroup>
									<col width="120">
									<col width="*">
								</colgroup>
								<tbody>
									<!-- 게시글 -->
									<tr>
									<th><div>이름</div></td>
									<td><div><input id="input_writer" type="text" name="writer" class="MS_input_txt input_style"  value="${sessionScope.loginUser.mname}" readonly="readonly">
									</div></td>
									</tr>
									<tr>
									
									<tr>
									<th><div>비밀번호</div></td>
										<td>
										<div>
											<input id="input_password" type="password" name="password" class="MS_input_txt input_style" value="${sessionScope.loginUser.mpw}" readonly="readonly">
											<input type="checkbox" name="lock" value="y">잠금사용
										</div>
										</td>
									</tr>
									
									<tr>
									<th><div>제목</div></td>
										<td>
										<div id="write_title">
											<input id="input_title" type="text" name="title" class="MS_input_txt input_style2" value="">
											<input type="checkbox" name="tag" value="ok">HTML 태그 사용
										</div>
										</td>
									</tr>
									
									<tr>
									<th><div>내용</div></td>
										<td>
										<div id="text_edit">
											<textarea id="input_content" name="content" wrap="off" class="MS_input_txt" style="font-family:굴림체;"></textarea>
										</div>
										</td>
									</tr>
									
									<tr>
									<th><div>첨부파일</div></td>
										<td>
										<div id="fileload">
											<span id="filevalue" style="display: block; width:830px;" class="MS_input_txt input_style2"></span>
											<input id="input_file" type="file" class="MS_input_txt input_style2" name="file_name">
												<div style="width:80px; height:30px; font-size: 13px; background-color: #88b04b; text-align: center; ">	
													<label for="input_file"><p style="color: #fff; line-height: 30px; cursor: pointer;">찾아보기</p></label>
												</div>		
										</div>
										</td>
									</tr>
									
								</tbody>
							</table>
						<div class="bbs_link bbs_link_btm">
							<div style="text-align: right; float: right;">
								<a id="cls_write" href="#"><div style="width: 100px; height: 50px; font-size: 15px; background-color: #88b04b; text-align: center;">
									<p style="color: #fff; line-height: 50px;">글쓰기</p>
								</div></a>
								<a href="boardlist.sidedish"><div style="width: 100px; height: 50px; font-size: 15px; background-color: #f0f0f0; text-align: center;">
									<p style="color: #999; line-height: 50px;">목록보기</p>
								</div></a>
							</div>
						</div>
					</div>
						</form>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>
<%@ include file="/footer.jsp" %>