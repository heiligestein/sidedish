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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/
font-awesome/4.7.0/css/font-awesome.min.css">
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
	    width: 155px;/*370px  */
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
	.radio_box {
		width: 30px;
		height: 20px;
		display: inline-block;
		position: relative;
		margin: 0 5px;
	}
	.radiolabel {
		width: 30px;
		height: 20px;
		border: 1px solid #dcdcdc;
		text-align: center;
		background-color: #fff;
		position: absolute;
		z-index: 1px;
		left: -10px;
		top: -2px;
		margin: 0 5px;
	}
	#count,#discount {
		float: right;
	}
	#select_view b{
		color: #80b04b; 
		font-weight: bold; 
	}
	#new_time {
		background-color: #88b04b;
		font-size: 12px;
		color: #fff;
		border-radius: 5px;
		padding: 1px 3px;
	}
	.fa {
	 color: #999;
	}
	.view {
		display: none;
	}
	._view {
		cursor: pointer;
	}
	._view:hover {
		background-color: #88b04b;
		color: #fff;
		transition : 0.5s;
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
			
		$(document).on("click","#search_btn",function (){
			$("#frm_search").submit();
			
		});
		
		
});
		$(document).on("change","input[name=sortSearch]",function (){
			$("#frm_sort").submit();
		});
		
		//아래 검색엔진 색 변화
		$(document).on("click","#all_label",function(){
			$("#all_label").css("color","#fff");
			$("#all_label").css("background-color","#88b04b");
			
			$("#title_label").css("color","#dcdcdc");
			$("#title_label").css("background-color","#fff");
			$("#contents_label").css("color","#dcdcdc");
			$("#contents_label").css("background-color","#fff");
			$("#name_label").css("color","#dcdcdc");
			$("#name_label").css("background-color","#fff");
		});
		$(document).on("click","#title_label",function(){
			$("#title_label").css("color","#fff");
			$("#title_label").css("background-color","#88b04b");
			
			$("#all_label").css("color","#dcdcdc");
			$("#all_label").css("background-color","#fff");
			$("#contents_label").css("color","#dcdcdc");
			$("#contents_label").css("background-color","#fff");
			$("#name_label").css("color","#dcdcdc");
			$("#name_label").css("background-color","#fff");
		});
		$(document).on("click","#contents_label",function(){
			$("#contents_label").css("color","#fff");
			$("#contents_label").css("background-color","#88b04b");
			
			$("#all_label").css("color","#dcdcdc");
			$("#all_label").css("background-color","#fff");
			$("#title_label").css("color","#dcdcdc");
			$("#title_label").css("background-color","#fff");
			$("#name_label").css("color","#dcdcdc");
			$("#name_label").css("background-color","#fff");
		});
		$(document).on("click","#name_label",function(){
			$("#name_label").css("color","#fff");
			$("#name_label").css("background-color","#88b04b");
			
			$("#all_label").css("color","#dcdcdc");
			$("#all_label").css("background-color","#fff");
			$("#title_label").css("color","#dcdcdc");
			$("#title_label").css("background-color","#fff");
			$("#contents_label").css("color","#dcdcdc");
			$("#contents_label").css("background-color","#fff");
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
					<form action="boardcategory.sidedish" id="frm_sort" name="frm_sort" method="get">
						<input type ="radio" id="sortnew" value="sortnew" name="sortSearch" class="view">
						<label id="recent_view" class="_view" for="sortnew">최신순</label>
						<input type ="radio" id="sorttitle" value="sorttitle" name="sortSearch" class="view">
						<label id="title_view" class="_view" for="sorttitle">제목순</label>
						<input type ="radio" id="sortviewcnt" value="sortviewcnt" name="sortSearch" class="view">
						<label id="click_view" class="_view" for="sortviewcnt">조회순</label>
						<input type ="radio" id="sortgoodcnt" value="sortgoodcnt" name="sortSearch" class="view">
						<label id="like_view" class="_view" for="sortgoodcnt">좋아요순</label>
					</form>
						
						<c:if test ="${!empty keyword}">
						<span id="count"><b>${keyword}</b> 으로 검색된 검색건수는 총  <b>${totalCount}</b>건 입니다.</span>
						</c:if>
						
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
								<col width="50">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col" colspan="2">제목</th>
									<th scope="col">이름</th>
									<th scope="col">날짜</th>
									<th scope="col">조회수</th>
									<th scope="col">좋아요</th>
								</tr>
							</thead>
							<tbody>
								<!-- 공지사항 -->
								<tr>
									<td><div class="tb-center"><img src="image/icon_box_arrow.gif"></div></td>
									<td><div class="txt_1"><img src="image/neo_notice.gif"></div></td>
									<td colspan="5"><div class="txt_1">성민반찬 이용후기를 적어주세요. 5줄이상 작성하시면 적립금을 드립니다.(사진은 포토후기에 남겨주세요.^^)</div></td>
								</tr>
								<!-- 게시글 -->
								<c:forEach items="${boardlist}" var="blist">
									<fmt:formatDate value="${today}" pattern="yyyy/MM/dd" var="today2"/>
									<fmt:formatDate value="${blist.regdate}" pattern="yyyy/MM/dd" var="regdate2"/>
								<tr>
									<td><div class="txt_c">${blist.bno}</div></td>
									<td><div class="txt_c">
											<c:if test="${blist.filesize > 0}">
				 							  <i class="fa fa-floppy-o"></i>
				 							</c:if>
				 							<c:if test="${blist.filesize == 0 }">
											<i class="fa fa-edit""></i>
											</c:if>
										</div>
									</td>
									<!-- 게시글 제목 -->
									<td class="title_pdg"><div class="txt_1">
									 <!-- 답글 들여쓰기 -->
									 <c:forEach var="i" begin="1" end="${blist.re_level}" >&nbsp;&nbsp;</c:forEach>
															<a href="boarddetail.sidedish?bno=${blist.bno}">${blist.title}
									 							<c:if test="${blist.replycnt != 0}">
									 							(${blist.replycnt})
									 							</c:if>
									 							<c:if test="${today2 == regdate2}">
									 							<span id="new_time">New  </span>
									 							</c:if>
									 							
									 						</a>
									 					</div>
									 </td>
									<td><div class="txt_c user_info"><img src="image/gd_family.gif"> ${blist.writer}</div></td>	
									<td><div class="txt_c">
									
									<c:choose>
										<c:when test="${today2 == regdate2}">
											<fmt:formatDate pattern="HH:mm" value="${blist.regdate}"/>
										</c:when>
										<c:otherwise>
											<fmt:formatDate pattern="yyyy/MM/dd" value="${blist.regdate}"/>
										</c:otherwise>
									</c:choose>
									</div></td>
									<td><div class="txt_c">${blist.viewcnt}</div></td>
									<td><div class="txt_c"><i class="fa fa-thumbs-o-up" style="color: #999;"></i>${blist.goodcnt}</div></td>
								</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>	
					<div id="page_bottom">
						<a id="a_write" href="#"><div id="write">게시글 작성 <i class="fa fa-pencil" ></i></div></a>
						<form action="bbssearch.sidedish" name="frm_search" id="frm_search" method="get">
							<div id="search_wrap">
								<span id="radio_all" class="radio_box">
									<input type="radio" id="all" value="all" name="howToSearch" checked="checked">
									<label class="radiolabel" id="all_label" for ="all">전체</label>
								</span>
								<span id="radio_title" class="radio_box">
									<input type="radio" id="title" value="title" name="howToSearch">
									<label class="radiolabel" id="title_label" for ="title">제목</label>
								</span>
								<span id="radio_content" class="radio_box">
									<input type="radio" id="contents" value="contents" name="howToSearch">
									<label class="radiolabel" id="contents_label" for ="contents">내용</label>
								</span>
								<span id="radio_name" class="radio_box">
									<input type="radio" id="name" value="name" name="howToSearch">
									<label class="radiolabel" id="name_label" for ="name">이름</label>
								</span>
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