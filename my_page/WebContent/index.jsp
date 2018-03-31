<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/
font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	body {
		width: 1520px;
		height: 6180px;
		font-size: 13px;
		font-family: 'Nanum Gothic', serif;
	}
	body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, textarea, p, blockquote, th, td, input, select, textarea, button {
		padding : 0;
		margin: 0;
	}
	dl, ul, ol, menu, li {
		list-style-type: none;
	}
	li {
		display: list-item;
	}
	a {
		color: #333;
		text-decoration: none !important;
	}
	a:hover {
		color: #000;
		text-decoration: underline;
	}
	button, input, select, textarea, a {
		vertical-align: middle;
	}
	a:-webkit-any-link {
		color: webkit-link;
		cursor :pointer;
	}
	h1 {
    font-weight: 800;
    font-size: 36px;
    margin-bottom: 10px;
    line-height: 46px;
	}
	h2 {
		font-size: 20px;
		line-height: 45px;
		font-weight: normal;
	}
	p {
		font-size: 13px;
		line-height: 22px;
	}
	#header, #layerWrap, #contentWrap, #ftLink .link, #footer {
		margin:0 auto;
	}
	#wrap {
		position: relative;
	}
	#top_main_wrap {
		width: 1020px;
		height: 542px;
		margin: 0 auto;
		border: 1px solid black;
	}
	.slide_wrap_01 {
		position: relative;
		max-width: 800px;
		height: 542px;
		margin:0 auto;
		float: left;
	}
	.bx-wrapper {
		max-width: 100%;
	}
	.bx-viewport {
		width:100%;
		overflow: hidden;
		position: relative;
		height: 500px;
	}
	.bxslider {
		width: 4215%;
		position: relative;
	}
	.bx-clone {
		cursor: pointer; 
		float: left; 
		list-style-type: none; 
		position: relative;
		width: 800px;
	}
	.slide_txt {
		position: absolute;
		left: 6%;
		top: 23%;
	}
	.slide_txt span {
		font-size: 13px;
		border: 1px solid #333;
		padding: 4px 6px;
		text-transform: uppercase;
	}
	.slide_txt h2 {
		font-size: 50px;
		line-height: 60px;
		color: #000;
		padding-top: 10px;
		font-weight: 600;
	}
	.slide_txt p {
		font-size: 15px;
		margin-top: 10px;
	}
	.right_banner_main {
		width: 220px;
		height: 500px;
		float: right;
	}
	.right_banner_main ul li {
		width: 220px;
		height: 181px;
		text-align: center;
	}
	.right_banner_main ul li div {
		width: 218px;
		position: relative;
		top:15%;
		margin: 0 auto;
	}
	.right_banner_main ul i {
    font-size: 42px;
    padding-bottom: 10px;
	}
	.fa-thumbs-o-up:before {
    content: "\f087";
    font-family:FontAwesome;
	}
	.fa-check-circle-o:before {
    content: "\f05d";
	}
	.fa-comments-o:before {
    content: "\f0e6";
	}
	.fa {
    display: inline-block;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
	}
	.right_banner_main ul li p {
		font-size: 13px;
		color: #88b04b;
	}
	.right_banner_main ul li h2 {
		font-size: 18px;
		color: #333;
		font-weight: bold;
		line-height: 20px;
	}
	#maincontent {
		width: 100%;
	}
	#top_time {
		width: 100%;
		background-color: #f8f8f8;
		height: 80px;
		border-top: 1px solid #eee;
		border-bottom: 1px solid #eee;
		text-align: center;
		margin: 0 auto 30px;
	}
	#top_time span {
		font-size: 32px;
		line-height: 80px;
		color: #666;
	}
	#title_tag2 {
    margin-left: 10px;
    padding: 4px 6px;
    border: 1px solid #ff6b37;
    color: #ff6b37!important;
    font-size: 13px!important;
    vertical-align: 5px;
	}
	.main_part {
		width: 1020px;
		height: auto;
		text-align: center;
		margin: 60px auto 0;
	}
	.main_part_p {
		font-size: 22px;
		line-height: 22px;
		color: #666;
	}
	.prd-list1 {
		margin-top: 40px;
		/* 제목, 혹은 리스트에 번호(순서)를 붙일때 사용할수 있는 알아두면 정말 도움되는 속성 */
		counter-reset: rankup 0;
	}
	.prd-list2 {
		margin-top: 40px;
		/* 제목, 혹은 리스트에 번호(순서)를 붙일때 사용할수 있는 알아두면 정말 도움되는 속성 */
		counter-reset: rankup 0;
	}
	table {
		width: 100%;
		border-collapse: collapse;
		border-spacing: 0;
		table-layout: fixed;
		border-color: gray;
	}
	tbody {
		display: table-row-group;
		vertical-align: middle;
		border-color: inherit;
	}
	.tb-center {
		padding: 0 10px;
	}
	tr {
		display: table-row;
		vertical-align: inherit;
		border-color: inherit;
	}
	.prd-list1 table td {
		border: 0;
	}
	.prd-list1 table .info {
		padding: 5px 0;
		margin-bottom: 20px;
	}
	.tb-center {
		display: inline-block;
	}
	.MS_prod {
		/* 개별로 부여해야 적용됨
		background-position: center;
		background-size: cover; 
		*/
		border-radius: 50%;
		height: 290px;
		width: 290px;
	}
	.prd-list2 {
		display: inline-block;
	}
	.MS_prod2 {
		width: 210px;
		height: 210px;
		border-radius: 50%;
		display: inline-block;
	}
	#MS_img_1 {
		background: url("image/sp_soybeanSoup.jpg") no-repeat center center;
		background-size: cover;
	}
	#MS_img_2 {
		background: url("image/tofu_wcSauce.jpg")no-repeat center center;
		background-size: cover;
		
	}
	#MS_img_3 {
		background: url("image/yogurtFS.jpg") no-repeat center center;
		background-size: cover;
			
	}
	#MS_img_4 {
		background: url("image/vitamin_ls.jpg") no-repeat center center;
		background-size: cover;

	}
	#MS_img_5 {
		background: url("image/aconjelly.jpg") no-repeat center center;
		background-size: cover;

	}
	#MS_img_6 {
		background: url("image/charFishball.jpg") no-repeat center center;
		background-size: cover;

	}
	.MS_prod a{
		display: block;
		width: 100%;
		height: 100%;
		border-radius: 50%;
	}
	.dsc {
		margin: 15px 0 6px;
		color: #333333!important;
		font-size: 15px;
	}
	.dsc b {
    color: #333333!important;
    font-weight: normal;
	}
	.price {
		color: #88b04b;
		font-size: 21px;
		margin-top: 2px;
		font-family: 'Roboto';
	}
	#delivery_container {
		width: 100%;
		height: 120px;
		background-color: #88b04b;
		margin: 10px auto 80px;
	}
	#deli_s {
		background: url("image/171031_banner_guide.jpg") no-repeat;
		cursor: pointer;
		width: 1020px;
		height: 120px;
		margin: 0 auto;
		text-align: left;
	}
	#title_tag3 {
		color: #fff;
		border: 1px solid #fff;
		padding: 4px 6px;
		font-size: 12px;
		vertical-align: -27px;
	}
	#banner_txt_1 {
		font-size: 32px;
		line-height: 58px;
		color: #fff;
	}
	.rank {
		width:36px;
		height: 36px;
		line-height: 36px;
		text-align: center;
		color: #333;
		padding: 0 14px;
		margin:4px auto;
		border-top: 4px solid #88b04b;
		font-weight: bold;
		font-size: 20px;
		padding-top: 10px;
	}
	.rank:before {
		width: 1650px;
		counter-increment: rankup 1;
		content: counter(rankup) '';
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div id="wrap">

	<div id="top_main_wrap">
		<!-- 캐러셀 보류 -->
		<div class="slide_wrap_01">
			<div class="bx-wrapper">
				<div class="bx-viewport" aria-live="polite" >
					<ul class="bxslider">
						<li class="bx-clone" aria-hidden="true" style="background-image: url(image/kim.jpg); ">
							<div class="slide_txt">
								<span>Special</span>
								<h2>흔하지 않고<br>딱 적당한 선물,<br>여기 있어요</h2>
								<p>부담 없고, 부담 주지 않는<br>김 선물세트</p>
							</div>
						</li>
						
					</ul>
					
				</div>
			</div>
		</div>
		<!-- 캐러셀 우측광고 -->
		<div class="right_banner_main">
		<!-- http://astronautweb.co/snippet/font-awesome/ -->
			<ul>
				<li style="background: #f8f8f8; cursor: pointer;" >
					<div>
						<i class="fa fa-thumbs-o-up" aria-hidden="true" style="color:#88b04b!important"></i>
						<p>어떤 반찬이 제일 맛있나요?</p>
						<h2>실시간 구매순위</h2>
					</div>
				</li>
				<li style="background: #eee; cursor: pointer;" >
					<div>
						<i class="fa fa-check-circle-o" aria-hidden="true" style="color:#b04b4b!important"></i>
						<p style="color:#b04b4b!important">특가 꼼꼼히 챙기세요!</p>						
						<h2>세일 상품 한눈에 보기</h2>
					</div>
				</li>
				<li style="background: #f8f8f8; cursor: pointer;" >
					<div>
						<i class="fa fa-comments-o" aria-hidden="true" style="color:#ffba00!important"></i>
						<p style="color:#ffba00!important">실시간 1:1 상담</p>
						<h2>카카오톡 상담하기</h2>
					</div>
				</li>
				
			</ul>
		</div>
	</div>
	<!-- 메인 화면  -->
	<div id="contentWrapper">
		<div id="contentWrap">
			<div id="maincontent" style="width:100%;">
				<div id="main" style="position:relative;">
					<div id="top_time">
						<span>매일 조리되는 반찬 마감시간 <b>AM 09:00</b></span>
						<span id="title_tag2">마감시간 지난 뒤 추가,취소 불가</span>
					</div>
				</div>
				<div class="main_part">
					<p class="main_part_p">지금 가장 맛있는</p>
					<h1>새로나온 반찬</h1>
					<div class="prd-list1">
						<table summary="상품이미지, 상품  설명, 가격">
							<tbody>
								<tr>
									<td>
												<!-- 상품 이미지 백그라운드로 하면 안나옴 -->
										<div class="tb-center" style="padding:0 25px;">
											<ul class="info">
												<li>
													<div class="MS_prod" id="MS_img_1">
														<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>냉이된장찌개</b>
													<p class="price">7,400원</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('003002000033', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
									</td>
									<td>
										<div class="tb-center" >
											<ul class="info">
												<li>
													<div class="MS_prod" id="MS_img_2" >
														<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>두부구이&달래장</b>
													<p class="price">3,800원</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('002006000060', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
									</td>
									<td>
										<div class="tb-center" >
											<ul class="info">
												<li>
													<div class="MS_prod" id="MS_img_3" >
														<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>요거트과일샐러드</b>
													<p class="price">6,200원</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('024001000064', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="tb-center" style="padding:0 25px;">
											<ul class="info">
												<li>
													<div class="MS_prod" id="MS_img_4">
														<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>비타민겉절이</b>
													<p class="price">4,800원</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('002004000103', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
									</td>
									<td>
										<div class="tb-center" >
											<ul class="info">
												<li>
													<div class="MS_prod" id="MS_img_5">
														<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>도토리묵무침</b>
													<p class="price">7,500원</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('002004000101', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
									</td>
									<td>
										<div class="tb-center" >
											<ul class="info">
												<li>
													<div class="MS_prod" id="MS_img_6">
														<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>캐릭터피쉬볼볶음</b>
													<p class="price">4,900원</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('002002000108', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div id="delivery_container" >
					<div id="deli_s">
						<span id="title_tag3">PURCHASE GUIDE</span>
						<p id="banner_txt_1">고객님! 온라인 반찬구매 <b>처음 이신가요?</b></p>
					</div>
				</div>
				<div class="main_part">
					<p class="main_part_p">장바구니에 가장 많이 담긴</p>
					<h1>베스트 반찬</h1>
					<!-- 사이간격 벌리기 -->
					<div style ="height:30px"></div>
					<div class="prd-list2">
								<c:forEach items="${bestProductList}" var="pDto">
										<div class="tb-center">
											<span class= "rank"></span>
											<ul class="info">
												<li><div class="MS_prod2" style="background: url('image/${pDto.p_img}') no-repeat center center;">
													<a href="/shop/shopdetail.html?branduid=92043&amp;xcode=003&amp;mcode=002&amp;scode=001&amp;special=2&amp;GfDT=ZmZ3UQ%3D%3D"></a>
													</div>
												</li>
												<li class="dsc">
													<b>${pDto.p_name}</b>
													<p class="price">${pDto.p_price2}</p>
												</li>
												<li class="closeup">
													<a class="btn-overlay-show" href="javascript:viewdetail('003002000033', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
												</li>
											</ul>
										</div>
								</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>