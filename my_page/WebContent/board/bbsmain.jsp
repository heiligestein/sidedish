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
	#bbs_table_list thead th{
	    height: 32px;
	    color: #333;
	    font-size: 12px;
	    font-weight: normal;
	    padding: 0;
	    border-bottom: 1px solid #dddddd;
	    border-top: 1px solid #333;
	    line-height: 32px;
	}
	#bbs_table_list tbody td{
	    height: 17px;
	    color: #555;
	    padding-top: 6px;
	    padding-bottom: 6px;
	    border-top: 1px solid #eeeeee;
	}
	#bbs_table_list tbody td.title_pdg {
		padding: 16px 20px;
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
	#write {
		display: block;
		border: 1px solid #666;
	    color: #666;
	    padding: 20px 0px;
	    width: 100%;
	    text-align: center;
	    margin-bottom: 20px;
	}
	#write:hover {
	    background: #88b04b;
	    border: 1px solid #88b04b;
	    color: #fff;
	    transition: all 0.3s;
	}
	.fa {
	    display: inline-block;
	    font: normal normal normal 14px/1 FontAwesome;
	    font-size: inherit;
	    text-rendering: auto;
	}
	.fa-pencil {
	    content: "\f040";
	}
	#search_wrap * {
		display: inline-block;
	}
	#search_wrap {
		margin: 0 auto;
		width: 400px;
	}
	#searchText {
		height: 29px;
	    line-height: 29px;
	    vertical-align: middle;
	    padding: 0 2px;
	    border: 0px;
	    border-bottom: 1.5px solid #999;
	    width: 370px;
	    outline: none;
	}
	#search_btn {
		color:#666; 
		font-size:20px; 
		line-height:30px;
	}
	.fa-search {
		content: "\f002";
	}
	#paging_box {
		padding: 30px 0;
	}
	#paging {
		text-align: center;
   	 	vertical-align: top;
	}
	#paging > li{
		display: inline;
		line-height: 0;
		text-align: center;
	}
	#paging > li a:hover {
		background-color: #f9f9f9;
		transition: 0.3s;
	}
	.active  a {
		background-color: #dadada;
		color: #fff;
	}
	#paging > li a{
	    font-size: 12px;
	    padding: 8px 12px 8px 12px;
	    border: 1px solid #ddd;
	}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
		
		$(document).ready(function (){
			
			
		$("#a_write").on("click", function (){
				var loginyn = $("#sessionLogin").val();
			if (loginyn != "") {
				/* 로그인 상태 */
				location.href = "boardinsertview.sidedish" ;
			}else {
				/* 비로그인 상태 */
				$(".modal").css("display","block");
			}
		});
			
	});
		$(document).on("click","#search_btn",function (){
			$("#frm_search").submit();
		
		});
		
</script>
</head>
<body>
<!-- 				$("#content_layout").css("display","block"); -->
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
					<div id="select_view">
						<a href="#"><div id="recent_view" class="_view">최신순</div></a>
						<a href="#"><div id="title_view" class="_view">제목순</div></a>
						<a href="#"><div id="click_view" class="_view">조회순</div></a>
					</div>
					<div id="bbs_table_list">
						<table style="border-bottom: 1px solid #dddddd;">
							<colgroup>
								<col width="70">
								<col width="30">
								<col width="*">
								<col width="110">
								<col width="90">										
								<col width="50">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col" colspan="2">제목</th>
									<th scope="col">이름</th>
									<th scope="col">날짜</th>
									<th scope="col">조회수</th>
								</tr>
							</thead>
							<tbody>
								<!-- 공지사항 -->
								<tr>
									<td><div class="tb-center"><img src="image/icon_box_arrow.gif"></div></td>
									<td><div class="txt_1"><img src="image/neo_notice.gif"></div></td>
									<td colspan="3"><div class="txt_1">몽촌 이용후기를 적어주세요. 5줄이상 작성하시면 적립금을 드립니다.(사진은 포토후기에 남겨주세요.^^)</div></td>
								</tr>
								<!-- 게시글 -->
								<c:forEach items="${boardlist}" var="blist">
								<tr>
									<td><div class="txt_c">${blist.bno}</div></td>
									<td><div class="txt_c"><img src="image/neo_lock.gif"></div></td>
									<!-- 게시글 제목 -->
									<td class="title_pdg"><div class="txt_1"><a href="boarddetail.sidedish?bno=${blist.bno}">${blist.title}</a></div></td>
									<td><div class="txt_c user_info"><img src="image/gd_family.gif"> ${blist.writer}</div></td>
									<td><div class="txt_c"><fmt:formatDate pattern="yyyy/MM/dd" value="${blist.regdate}"/></div></td>
									<td><div class="txt_c">${blist.viewcnt}</div></td>
								</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>	
					<div id="page_bottom">
						<a id="a_write" href="#"><div id="write">게시글 작성 <i class="fa fa-pencil" ></i></div></a>
						<form action="bbssearch.sidedish" name="frm_search" id="frm_search" method="get">
							<div id="search_wrap">
								<input type="text" name="searchText" id="searchText">
								<a href="#" id="search_btn"><i class="fa fa-search"></i></a>
							</div>
						</form>
						<div id="paging_box">
							<ul id="paging">
								<c:if test="${pageMaker.prev}">
									<li><a href="boardlist.sidedish?page=${pageMaker.startPage-1}">&laquo;</a></li>
								</c:if>
								
								<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
									<li <c:out value = "${pageMaker.criDto.page == idx? 'class=active':''}" />>
										<a href="boardlist.sidedish?page=${idx}">${idx}</a>
									</li>
								</c:forEach>
								
								<c:if test="${pageMaker.next}">
									<li><a href="boardlist.sidedish?page=${pageMaker.endPage+1}">&raquo;</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>
<%@ include file="/footer.jsp" %>