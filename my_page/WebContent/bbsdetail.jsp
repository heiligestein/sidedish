<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
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
	#comment_box2 {
		border: none;
		border-bottom: 1px solid #fff;
	}
	.wrt {
		margin: 6px 0;
	}
	#com_wrt_box label{
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
	#com_wrt_box .input_style {
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
					<div id="bbs_table_view">
						<!-- 본문  -->
						<table style="border-bottom: 1px solid #dddddd;">
							<thead>
								<tr><th><div class="txt_cc">사골떡국 맛있네요 or 아쉬운점</div></th></tr>
							</thead>
							<tbody>
								<tr>
									<td class="line">
										<div class="cont_sub_des">
											<div><span><em>Date :</em> 2018-02-26</span></div>
											<div><span><em>Name :</em> 정경호</span></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="data_bd_cont">
											맛있고 간편하니 제맛이네요~<br>
											낙지볶음도 자주 시키는 메뉴중에 하나인데 낙지볶음 전문점보다 훨씬 맛있고 중독될정도예요~<br>
											콩나물 김치국 남편이 좋아하는 국이 됬어요<br>
											<br>
											소불고기는 고기질도 괜찬고 한데 약간 좀 달아서 조금만 덜 달면 좋겠다는 개인적은 제 의견이네요~<br>
											제육복음도 양념이 맛있고 맛도 괜찬긴 한데 고기가 질이 좀 별로라는 생각이 들어요<br>
											비게도 좀 있고 고기만 좀더 좋은거 사용하면 자주 시킬것 같아요~<br>
											닭갈비는 매운맛이 좀 강해서 매운맛만 주문할때 조절되면 좋을것 같아요<br>
											<br>
											2.19일하고 20일주문한게 같은날 배송이 왓는데 서비스 반찬이 안왓어요~<br>
											담번에 시킬때 이것도 넣어 주실수 있는지요?
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div id ="comment_list">
							<table>
								<colgroup>
									<col width="120">								
									<col width="*">								
									<col width="150">								
								</colgroup>
								<tbody>
									<tr>
										<td style="float: right; width: 120px;">
												<div class="com-name">한현민</div>
										</td>
										
										<td>
											<div>변거로우시겠지만 현금영수증 신청이 안된거같은데 다시 한번 확인해주시겠어요</div>
										</td>
										
										<td style="float: right; width: 150px;">
											<div >
												<span>
													2016-03-31
													<a href="#" class="delete none">X</a>
												</span>
											</div>
										</td>
									</tr>
								</tbody>					
							</table>
						</div>
						<!-- 리플  -->
						<form action="comment.sidedish" name="comment" id="comment" method="post">
							<input type="hidden" name="page_type" value="board_view">
							<fieldset>
								<table id="comment_box2">
									<colgroup>
										<col width="120">
										<col>
										<col width="150">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="3" id="com_wrt_box">
												<div>
													<div class="wrt">
														<label>이름</label>
														<span><input name="cname" type="hidden" value="">rainofpurple</span>
														<label>비밀번호</label>
														<span><input name="cpass" type="password" class="input_style input_style2" palceholder="비밀번호"></span>
													</div>
													<div class="wrt">
														<textarea name="comment_txt" placeholder="내용"></textarea>
														<a href="#"><div id="board_re_btn"><p>댓글등록</p></div></a>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</fieldset>
						</form>
						
						<div id="view_link">
							<dl class="bbs_link con_link">
								<dd>
									<a href="#"><p>수정</p></a>
									<a href="#"><p>삭제</p></a>
									<a href="#"><p>답변</p></a>
								</dd>
							</dl>
							<dl class="bbs_link">
								<dd>
									<a id="write" href="#"><p id="write_p">수정</p></a>
									<a href="#"><p>삭제</p></a>
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
<%@ include file="footer.jsp" %>