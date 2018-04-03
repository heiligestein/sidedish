<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<% 
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.util.Date"%>
<c:set var="date" value="<%=new Date()%>"/> 
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
		height: 100%;
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
	#header, #layerWrap, .contentWrap, #ftLink .link, #footer {
		margin:0 auto;
	}
	#wrap {
		position: relative;
		margin: 0 auto;
	}
	/* 캐러셀 */

	#top_main_wrap {
		width: 1020px;
		height: 542px;
		margin: 0 auto;
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
	#first_span {
		border: 1px solid #fff;
		color:#fff!important;
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
	.btn_pager {
		position: absolute;
		width: 100%;
		text-align: center;
		font-size: 0;
		z-index: 1;
	}
	.pager_info {
		display: inline-block;
		width: 25%;
		height: 40px;
		margin:0;
		background: rgba(255,255,255,1);
		font-size: 12px;
		line-height: 40px;
		color: #333;
	}
	.pager_info:active {
		color: #fff;
	    border-top: 2px solid #333;
	    background: rgba(136,176,75,1);
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

	.tb-center {
		padding: 0 10px;
		display: inline-block;
	}

	.info {
		padding: 5px 0;
		margin-bottom: 20px;
	}
	.MS_prod {
		/* 개별로 부여해야 적용됨
		background-position: center;
		background-size: cover; 
		*/
		border-radius: 50%;
		height: 290px;
		width: 290px;
		cursor: pointer;
	}
	.prd-list2 {
		display: inline-block;
	}
	.MS_prod2 {
		width: 210px;
		height: 210px;
		border-radius: 50%;
		display: inline-block;
		cursor: pointer;
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
	.delivery_container {
		width: 100%;
		height: 120px;
		background-color: #88b04b;
		margin: 10px auto 80px;
	}
	.deli_s {
		background: url("image/171031_banner_guide.jpg") no-repeat;
		cursor: pointer;
		width: 1020px;
		height: 120px;
		margin: 0 auto;
		text-align: left;
	}
	.title_tag3 {
		color: #fff;
		border: 1px solid #fff;
		padding: 4px 6px;
		font-size: 12px;
		vertical-align: -27px;
	}
	.banner_txt_1 {
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
	#content {
		width: 1020px;
		margin: 0 auto;
	}
	#main_center_container {
		margin: 60px auto;
		width: 1020px;
	}
	#cb_clear {
		zoom: 1;
	}
	#main_guide_container {
		width: 1020px;
		margin: 50px auto;
	}
	.main_top_01 {
		float: left;
		width: 360px;
		height: 440px;
		border: 2px solid #fff;
		margin-right: 10px;
		cursor: pointer;
	}
	.main_top_01:hover {
    border: 2px solid #88b04b;
	}
	#gallery01 {
		width: 748px;
		float: left;
		display: inline-block;
	}
	.topbannertxt {
		width: 80%;
		height: 96px;
		margin: 340px 0 0 10px;
	}
	.topbanner_m_s {
		font-size: 12px;
		font-weight: bold;
		color: #88b04b;
	}
	.topbanner_m_b {
		font-size: 25px;
		line-height: 32px;
		color: #333;
		font-weight: bold;
	}
	#gallery04 {
		width: 266px;
		float: right;
	}
	.notice_container {
		padding: 0;
		margin-bottom: 20px;
		height: 208px;
	}
	.title {
		padding: 4px 0;
		border-bottom: 2px solid #333;
	}
	.main_title_txt {
		font-size: 17px;
		padding-bottom: 4px;
		font-weight: 600;
	}
	.more {
		float: right;
		font-size: 12px;
		line-height: 24px;
		color: #666;
	}
	.con li {
    display: block;
    padding: 8px;
    color: #666;
    border-bottom: 1px solid #eee;
	}
	.event_container {
		padding: 0;
	}
	#container {
		overflow: hidden;
		clear: both;
	}
	#how_make_wrap {
		width: 100%;
		height: 470px;
		background-color: #f0f0f0;
	}
	.how_make {
		width: 225px;
		height: 450px;
		cursor: pointer;
		margin: 25px 12px;
		float: left;
	}
	.how_make_info {
		width: 100%;
		height: 200px;
		padding: 30px 0;
		text-align: center;
	}
	.how_make_info_title {
		color: #000;
		font-size: 24px;
	}
	.how_make_info_line {
		width: 30px;
		height: 2px;
		background-color: #333;
		margin: 22px auto;
	}
	.how_make_info_cotent {
		color: #666;
		font-size: 13px;
		line-height: 18px;
	}
	.more_btn {
		width: 80px;
		border: 1px solid #ccc;
		padding: 6px 8px;
		color: #666;
		margin: 20px auto;
	}

</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/carousel.js"></script>
<script type="text/javascript">
	$(function(){
	    Simplecarousel('bxslider', {
	        width: '800px',
	        height: '500px'
	    });
	});
	
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
						<li class="bx-clone" aria-hidden="true" data-value=0 data-next=1 data-image="image/carousel_tofu.jpg">
						
							<div class="slide_txt" style=" color:#fff!important;">
								<span id="first_span" >New</span>
								<h2 style="color:#fff!important;">구운두부에<br>달래장,<br>환상의 조합</h2>
								<p style="color:#fff!important;">직원들이 더 좋아하는<br>대박메뉴</p>
							</div>
						</li>
						<li class="bx-clone" aria-hidden="true" data-value=1 data-next=2 data-image="image/carousel_kids.jpg">
						
							<div class="slide_txt">
								<span >KIDS</span>
								<h2>아기도<br>어른도<br>만족하는 메뉴</h2>
								<p>아이들을 위한 맞춤 메뉴를<br>모아 모아 준비했어요</p>
							</div>
						</li>
						<li class="bx-clone" aria-hidden="true" data-value=2 data-next=3 data-image="image/carousel_salmon.jpg">
						
							<div class="slide_txt">
								<span>Best</span>
								<h2>연어가<br>이 정도로<br>맛있었던가?</h2>
								<p>오직 맛과<br>품질로 답하는 <br>쎌모네키친의 생연어</p>
							</div>
						</li>
						<li class="bx-clone" aria-hidden="true" data-value=3 data-next=0 data-image="image/carousel_kim.jpg">
						
							<div class="slide_txt">
								<span>Special</span>
								<h2>흔하지 않고<br>딱 적당한 선물,<br>여기 있어요</h2>
								<p>부담 없고, 부담 주지 않는<br>김 선물세트</p>
							</div>
						</li>
						
					</ul>
					
				</div>
			</div>
			<div class="btn_pager">
				<a href="#" data-value=0 data-next=1 class="pager_info">두부구이 ＆ 달래장</a>
				<a href="#" data-value=1 data-next=2 class="pager_info">어른도 맛있는 키즈 메뉴</a>
				<a href="#" data-value=2 data-next=3 class="pager_info">다시 찾게 되는 생연어</a>
				<a href="#" data-value=3 data-next=0 class="pager_info">프리미엄 김 선물세트</a>
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
		<div class="contentWrap">
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
						<c:forEach items="${newProductList}" var="pDto">
							<div class="tb-center">
								<ul class="info">
									<li><div class="MS_prod" style="background: url('image/${pDto.p_img}') no-repeat center center; background-size: cover;">
											<a href="/shop/shopdetail.html?branduid=92043&xcode=003&mcode=002&scode=001&special=1&GfDT=bmx1W1w%3D"></a>
										</div>
									</li>
									<li class="dsc">
										<b>${pDto.p_name}</b>
										<p class="price">
										<%-- <fmt:setLocale value="ja_jp"/>
										<fmt:setLocale value="en_us"/> --%>
										<fmt:setLocale value="ko_kr"/>
										<!-- currency= 접속하는 현지의 화폐단위 -->
										<fmt:formatNumber value="${pDto.p_price2}" type="currency"/><br>
										<%-- <fmt:formatNumber value="0.15" type="percent"/><br>
										<fmt:formatNumber value="553658153792" pattern="###,###,###,###"/> --%>
										<%-- 	<fmt:formatDate value="${date}" type="time"/><br>
											<fmt:formatDate value="${date}" type="time" timeStyle="full"/><br>
											<fmt:formatDate value="${date}" type="date" pattern ="yyyy/mm/dd"/><br> --%>
										</p>
									</li>
									<li class="closeup">
										<a class="btn-overlay-show" href="javascript:viewdetail('003002000033', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
									</li>
								</ul>
							</div>
						</c:forEach>
					</div>
					
				</div>
				
				<div class="delivery_container" >
					<div class="deli_s">
						<span class="title_tag3">PURCHASE GUIDE</span>
						<p class="banner_txt_1">고객님! 온라인 반찬구매 <b>처음 이신가요?</b></p>
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
											<li><div class="MS_prod2" style="background: url('image/${pDto.p_img}') no-repeat center center; background-size: cover;">
												<a href="/shop/shopdetail.html?branduid=92043&amp;xcode=003&amp;mcode=002&amp;scode=001&amp;special=2&amp;GfDT=ZmZ3UQ%3D%3D"></a>
												</div>
											</li>
											<li class="dsc">
												<b>${pDto.p_name}</b>
												<p class="price">
												<fmt:setLocale value="ko_kr"/>
												<!-- currency= 접속하는 현지의 화폐단위 -->
												<fmt:formatNumber value="${pDto.p_price2}" type="currency"/>
												</p>
											</li>
											<li class="closeup">
												<a class="btn-overlay-show" href="javascript:viewdetail('003002000033', '', '');"><img src="http://beatmarket.speedgabia.com/page/mcfood_cart.png" style="width: 40px;"></a>
											</li>
										</ul>
									</div>
							</c:forEach>
					</div>
				</div>
				
				<div class="delivery_container" style="background:#ffb400">
					<div class="deli_s" style="background:url(image/171031_banner_week.jpg)no-repeat; ">
						<span class="title_tag3 ">WEEKLY SET</span>	
						<p class="banner_txt_1">식품영양사가 직접 짜는 <b>일주일 식단</b></p>
					</div>
				</div>
				
				<div class="contentWrap">
					<div id="content">
						<div id="main_center_container cb_clear">
							<div id="gallery01">
								<div class="main_top_01" style="background: url(image/170607_top_banner.jpg) no-repeat; background-size: 100%;">
									<div class="topbannertxt">
										<p class="topbanner_m_s">5% COUPON</p>
										<p class="topbanner_m_b">앱 다운로드 받고<br>5% 할인쿠폰도 받고</p>
									</div>								
								</div>
								<div class="main_top_01" style="background: url(image/170607_top_banner2.jpg) no-repeat; background-size: 100%;">
									<div class="topbannertxt">
										<p class="topbanner_m_s">POWER REVIEW</p>
										<p class="topbanner_m_b">파워리뷰 작성하고<br>쇼핑지원금 받자!</p>
									</div>
								</div>
							</div>
							<div id="gallery04">
								<div class="notice_container">
									<div class="title">
										<a href="#">
											<span class="main_title_txt">공지사항</span>
											<span class="more">more ></span>
										</a>
									</div>
									<div class="con">
										<ul>
											<li><a href="#">핸드폰 소액결제 취소(환불) 안내</a></li>
											<li><a href="#">새벽직배송 안내(오배송관련)</a></li>
											<li><a href="#">3월 1일(목) 광복절 배송 안내</a></li>
											<li><a href="#">설 연휴 배송 안내</a></li>
											<li><a href="#">진미채 상품 가격 인상 안내</a></li>
										</ul>
									</div>
								</div>
								<div class="event_container">
									<div class="title">
										<a href="#">
											<span class="main_title_txt">이벤트</span>
											<span class="more">more ></span>
										</a>
									</div>
									<div class="con">
										<ul>
											<li><a href="#">앱 다운로드와 함께 5% 쿠폰 받으세요!</a></li>
											<li><a href="#">파워리뷰 쓰고 쇼핑지원금 받자!</a></li>
											<li><a href="#">해시태그 이벤트</a></li>
											<li><a href="#">반찬제안＆레시피 공유 이벤트</a></li>
											<li><a href="#">기프트 카드 서비스 신청안내</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div id= "main_guide_container">
							<div id="container">
								<div id="how_make_wrap">
									<div class="how_make"><img src="image/161123_guide_01.jpg" style="width: 225px;">
										<div class="how_make_info">
											<p class="how_make_info_title">조리과정</p>
											<div class="how_make_info_line"></div>
											<p class="how_make_info_content">20년 전통 노하우<br>리얼 홈메이드식 조리!</p>
											<div class="more_btn"><p>more</p></div>
										</div>
									</div>
									<div class="how_make"><img src="image/161123_guide_02.jpg" style="width: 225px;">
										<div class="how_make_info">
											<p class="how_make_info_title">시설위생</p>
											<div class="how_make_info_line"></div>
											<p class="how_make_info_content">개인위생과 작업공간의 청결을 위해<br>최선의 노력을 다합니다.</p>
											<div class="more_btn"><p>more</p></div>
										</div>
									</div>
									<div class="how_make"><img src="image/161123_guide_03.jpg" style="width: 225px;">
										<div class="how_make_info">
											<p class="how_make_info_title">식재료</p>
											<div class="how_make_info_line"></div>
											<p class="how_make_info_content">행복한 밥상은 좋은 재료와<br>정성에서 탄생합니다.</p>
											<div class="more_btn"><p>more</p></div>
										</div>
									</div>
									<div class="how_make"><img src="image/161123_guide_04.jpg" style="width: 225px;">
										<div class="how_make_info">
											<p class="how_make_info_title">제품포장</p>
											<div class="how_make_info_line"></div>
											<p class="how_make_info_content">최상의 상품이 도착 하도록<br>신선도 유지에 최선을 다합니다.</p>
											<div class="more_btn"><p>more</p></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</div>
</body>
</html>
<%@ include file="footer.jsp" %>