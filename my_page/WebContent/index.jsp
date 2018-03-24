<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div id="wrap">
	<div id="top_main_wrap">
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
		<div class="right_banner_main">
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
</div>
</body>
</html>