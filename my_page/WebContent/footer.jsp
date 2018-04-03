<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	p {
		font-size: 13px;
		line-height: 22px;
	}
	#header, #layerWrap, .contentWrap, #ftLink .link, #footer {
		margin:0 auto;
	}
	/* 푸터  */ 
	#fnv_container {
		border-top: 1px solid #ddd;
		margin: 0px auto 30px;
		width: 100%
	}
	#footer_top_wrap {
		width: 100%;
		border-bottom: 1px solid #f1f1f1;
		margin-bottom: 20px;
	}
	#footer_top_a {
		overflow: hidden;
		clear: both;
		width: 1020px;
		margin: 0 auto;
	}
	.footer_customer {
		width: 264px;
		height: 190px;
		float: left;
		margin-top: 25px;
	}
	.footer_menu4 {
		width: 124px;
		float: left;
		padding: 30px 30px 0;
	}
	.footer_menu4 b {
		color: #333;
		font-size: 13px;
		line-height: 34px;
		font-weight: bold;
	}
	.footer_menu4 p {
		color: #999;
		font-size: 13px;
		line-height: 34px;
	}
	#title1 {
		font-size: 40px;
		font-family: sans-serif;
		font-weight: bold;
		color: #333;
		line-height: 54px;
	}
	#footer_call_btn {
		background-color: #333;
		color: #fff;
		width: 200px;
		line-height: 40px;
		height: 40px;
		margin-bottom: 8px;
		text-align: center;
	}
	#footer_call_btn a:hover {
		color: #fff!important;
	}	
	#title2 {
		color: #666;
		font-size: 18px;
		font-weight: 600;
	}
	#footer_menu,#footer_info {
		width: 1020px;
		margin: 0 auto;
	}
	#footer_menu p {
		color: #666;
		font-weight: bold;
		font-size: 1em;
		border-left: 1px solid #ccc;
		padding:0 5px;
		display: inline;
	}
	#footer_menu p:first-child {
		border:0;
	}
	#footer_info {
		width: 1020px;
		margin: 0 auto;
	}
	.footer_info_content {
		width: 747px;
		float: left;
	}
	.footer_info_content p {
		color: #999;
		font-size: 11px;
		line-height: 18px;
		border-left: 1px solid #ccc;
		padding:0 5px;
		display: inline;
	}
	.footer_info_content p:first-child {
		border:0;
	}
</style>
</head>
<body>
<!-- 푸터 -->
<div id="fnv_container">
		<div id="footer_top_wrap">
			<div id="footer_top_a">
				<div class="footer_customer">
					<p id="title1">1688-6285</p>
					<div id="footer_call_btn"><a href="#" style="line-height: 40px;">전화문의 전 확인해주세요.</a></div>
					<p id="title2">평일 09:00~18:00</p>
					<p style="color:#999; font-size: 12px;">※점심시간 13:00 ~ 14:00</p>
					<p style="color:#999; font-size: 12px;">※토, 일 , 공휴일 휴무</p>
				</div>
				<div class="footer_menu4">
					<b>CUSTOMER CENTER</b>
					<a href="#"><p>질문과 대답</p></a>
					<a href="#"><p>자주 하는 질문</p></a>
					<a href="#"><p>건의 및 불편접수</p></a>
				</div>
				<div class="footer_menu4" style="margin-left: 30px;">
					<b>GUIDE</b>
					<a href="#"><p>첫구매 가이드</p></a>
					<a href="#"><p>맛있게 먹는 TIP</p></a>
					<a href="#"><p>깔끔하게 즐기기 TIP</p></a>
					<a href="#"><p>회원혜택</p></a>
					<a href="#"><p>예치금 요금제</p></a>
					<a href="#"><p>새벽직배송 지역</p></a>
				</div>
			</div>
		</div>
		<div id="footer_menu">
			<p><a href="#">회사소개</a></p>
			<p><a href="#">이용약관</a></p>
			<p><a href="#">이용안내</a></p>
			<p><a href="#">개인정보취급방침</a></p>
			<p><a href="#">회원혜택</a></p>
			<p><a href="#">채용공고</a></p>
			
		</div>
		<div id="footer_info" >
			<div class="footer_info_content">
				<p>(주)조인스푸드</p>
				<p>대표자 :조인성</p>
				<p>사업자등록번호 : 770-86-00646</p>
				<a href="#" target="_blank" style="font-size: 12px;">[사업자 정보확인]</a>
				<p>통신판매업신고 : 2017-서울강동-0931</p><br>
			</div>
			<div class="footer_info_content"><p>사업자 주소 : 서울시 강동구 성내로 3길 16-9 (성내동)영성빌딩 302호</p></div>
			<div class="footer_info_content"><p>가공장 소재지 : 서울시 강동구 풍성로 116 ,상가동 지층 제1호(성내동,성안마을청구아파트) </p></div>
			<div class="footer_info_content">
				<p>E-mail : yuri1325@mcfood.net</p>
				<p>고객센터 : 1688-6285</p> 
				<p>개인정보담당자 : 안이슬</p>
			</div>
			<div class="footer_info_content"><p>본 사업자는 LG U+의 결제대금 예치서비스에 가입된 업체로서,안전하게 거래를 하실 수 있습니다</p><a href="#" target="_blank" style="font-size: 12px;">[가입사실확인]</a></div>
				
				
				
				
			
		</div>
	</div>
</body>
</html>