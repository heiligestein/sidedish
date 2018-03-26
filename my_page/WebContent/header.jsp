<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리얼 홈메이드 몽촌반찬</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
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
	#header, #layerWrap, #contentWrap, #ftLink .link, #footer {
		margin:0 auto;
	}
	#wrap {
		position: relative;
	}
	#header {
		width: 100%;
		height: 183px;
		position: relative;
		z-index: 9999;
	}
	.inner {
		height:40px;
		background: #f8f8f8;
		border-bottom: 1px solid #999;
	}
	.inner_wrap {
		width: 1020px;
		height: 40px;
		margin: 0 auto;
	}
	#header .tnv ul {
		overflow: hidden;
	}
	.cb_clear {
		zoom: 1;
	}
	.cb_clear_right {
		padding:0;
		
	}
	#header .tnv ul li {
		float: left;
		font-size: 11px;
		padding: 0 5px;
	}
	.inner_wrap .tnv ul li span{
		font-size: 12px;
		color: #666;
		line-height: 40px;
	}
	
	#inner_right {
		height: 40px;
		line-height: 40px;
		margin: 0 auto;
		float: right;
	}
	#inner_right ul li {
		float: left;
		color: #fff;
		text-align: center;
	}
	#inner_right ul li a {
		color: #666;
		display: block;
		font-size: 11px;
	}
	.menu2, .menu3 {
		padding: 0 10px;
	}
	.menu3:hover #inner_right ul li dl.dropdown{
		display: block;
	}
	.menu3 ul li a {
		color: #666;
		display: block;
		font-size: 11px;
		padding: 14px 10px;	
	}
	#inner_right ul li a:hover {
    color: #333;
    transition: all 0.3s;
    }
	dd, dl {
		line-height: 22px;
	}
	#inner_right ul li dl.dropdown {
		display: none;
		postion: absolute;
		top: 41px;
		z-index: 1;
	}
	#inner_right ul li dl.dropdown dd{
		background-color: #fff;
	}
	#inner_right ul li dl.dropdown a {
		color: #666;
		font-size: 11px;
		padding: 6px;
	}
	/* 두번째 줄  */
	#topArea {
		width: 1020px;	
		height: 80px;
		margin: 0 auto;
	}
	#logo_wrap {
		width: 410px;
		height: 60px;
		float: left;
		position : absolute;
		padding: 10px 0;
		text-align: center;
	}
	.top_search {
		line-height: 60px;
	}
	fieldset, img {
		border: 0 none;
	}
	.MS_search_word_best {
		width: 190px;
		height: 25px;
		border: 0px;
		border-bottom: 2px solid #88b04b;
		padding-top: 15px;
	}
	input {
		padding : 3px 4px;
	}
	#search_submit {
		text-align: center;
		height: 40px;
		width: 40px;
		float: right;
		margin : 10px 0 0 -14px;
		overflow: hidden;
	}
	/* 세번째 줄 */
	#nav {
		height: 60px;
		border-top: 1px solid #ddd; 
		border-bottom: 1px solid #ddd; 
		background-color: #fff;
		z-index: 99999;
		padding-left: 250px;
	}
	.nav_wrap {
		width: 1020px;
		height: 60px;
		margin: 0 auto;
		float: left;
	}
	.nav_wrap ul li {
		background-color: #fff;
		text-align: center;
		line-height: 59px;
		width: 96px;
		height: 60px;
	}
	.nav_wrap>ul>li {
		float: left;
		position: relative;
	}
	.nav_wrap ul li:hover {
		box-shadow: 0px 5px 0px 0px #88b04b inset;
		transition: all 0.3s;
	}
	.nav_wrap > ul > li:hover ul {
		display: block;
		width: 100%;
		position: absolute;
		left: 0;
		top: 30px;
	}
	.nav_wrap ul ul {
		display: none;
		padding-top: 30px;
	}
	.nav_wrap li li {
		background-color: #fff;
		text-align: center;
	}
	.nav_wrap li li:hover {
		color: #333;
		box-shadow: 0 0 0 0;
		background-color: #f8f8f8;
		transition: all 0.3s;
	}
	.nav_wrap li li a {
		font-size: 12px;
		padding: 0;
		width: 100%;
		height: 100%;
		display: block;
	}
	.nav_wrap li li a:hover {
		color: #333;
		box-shadow: 0 0 0 0;
	}
	.nav_wrap .nav2 {
		cursor: pointer;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div id="wrap">
		<!-- 헤더  -->
		<div id="header">
			<!-- 첫번째 줄  -->
			<div class="inner">
				<!-- 첫번째 줄 좌측  -->
				<div class="inner_wrap">
					<div class="tnv cb_clear" style="float:left;">
						<ul class="cb_clear_right">
							<li><a href="#"><span style="color:#88b04b;">첫구매 가이드</span></a></li>
							<li><span style="#999;">|</span></li>
							<li><a href="#"><span style="color:#88b04b;">새벽 직배송</span></a></li>
							<li><a href="https://www.instagram.com/mongchon_banchan/" target="_blank"><img src=image/insta_logo.png; style="margin: 10px 0px;" alt="인스타그램"></a></li>
							<li><a href="https://twitter.com/joinsfood" target="_blank"><img src=image/twew_logo.png; style="margin: 10px 0px;" alt="트위터"></a></li>
						</ul>
					</div>
				<!-- 첫번째 줄 우측  -->
					<div id="inner_right">
						<ul>
							<li class="menu2"><a href="login.sidedish"><span style="color:#fff; background: #88b04b; padding: 2px 4px;">로그인</span>	</a></li>
							<li class="menu2"><a href="constract.sidedish">회원가입</a></li>
							<li class="menu2"><a href="#">주문/배송</a></li>
							<li class="menu3"><a href="#">마이페이지</a>
												<dl class="dropdown">
												<dd><a href="#">주문내역</a></dd>
												<dd><a href="#">오늘 본 상품</a></dd>
												<dd><a href="#">늘 사는 반찬</a></dd>
												<dd><a href="#">쿠폰함</a></dd>
												<dd><a href="#">적립금</a></dd>
												<dd><a href="#">예치금</a></dd>
												<dd><a href="#">내 게시물</a></dd>
												<dd><a href="#">정보수정</a></dd>
												</dl>
							</li>
							<li class="menu3"><a href="#">고객센터</a>
												<dl class="dropdown">
												<dd><a href="#">공지사항</a></dd>
												<dd><a href="#">FaQ</a></dd>
												<dd><a href="#">질문과 대답</a></dd>
												<dd><a href="#">1:1상담</a></dd>
												</dl>
							</li>
							<li class="menu3"><a href="#">커뮤니티</a>
												<dl class="dropdown">
												<dd><a href="#">이용후기</a></dd>
												<dd><a href="#">포토후기</a></dd>
												<dd><a href="#">리뷰 모음</a></dd>
												<dd><a href="#">이벤트</a></dd>
												<dd><a href="#">반찬제안</a></dd>
												<dd><a href="#">기프트 카드</a></dd>
												</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 두번째 줄 -->
			<div id ="topArea">
				<div id="logo_wrap">
					<a href="index.sidedish"><img src="image/logo_1020.png" style="float:left;"></a>
					<form>
						<fieldset class="top_search">
						<input id="multisearch" name="multisearch" type="text" value="" class="MS_search_word_best">
						<div id="search_submit"><a href="javascript:search_submit();">
						<img src="image/search_top.jpg"></a></div>
						</fieldset>
					</form>
				</div>
			</div>
			<!-- 세번째 줄 -->
			<div id="nav">
				<div class="nav_wrap">
					<ul>
						<li class="nav1">특별관
							<ul>
								<li><a href="#">베스트</a></li>
								<li><a href="#">신메뉴</a></li>
							</ul>
						</li>
						<li class="nav1">알뜰관
							<ul>
								<li><a href="#">SALE</a></li>
								<li><a href="#">3000원 코너</a></li>
								<li><a href="#">4000원 코너</a></li>
								<li><a href="#">5000원 코너</a></li>
							</ul>
						</li>
						<li class="nav2"><a href="#">위클리세트</a>
							<ul>
								<li><a href="#">베이직</a></li>
								<li><a href="#">클래스</a></li>
								<li><a href="#">프리미엄</a></li>
							</ul>
						</li>
						<li class="nav2"><a href="#">김치</a></li>
						<li class="nav2"><a href="#">반찬</a>
							<ul>
								<li><a href="#">밑반찬</a></li>
								<li><a href="#">볶음</a></li>
								<li><a href="#">조림</a></li>
								<li><a href="#">무침</a></li>
								<li><a href="#">절임/젓갈</a></li>
								<li><a href="#">전/나물</a></li>
							</ul>
						</li>
						<li class="nav2"><a href="#">키즈</a></li>
						<li class="nav2"><a href="#">요리</a>
							<ul>
								<li><a href="#">고기</a></li>
								<li><a href="#">해산물</a></li>
								<li><a href="#">한식</a></li>
								<li><a href="#">양식</a></li>
								<li><a href="#">중식</a></li>
								<li><a href="#">돈가스</a></li>
								<li><a href="#">덮밥소스</a></li>
								<li><a href="#">세트상품</a></li>
							</ul>
						</li>
						<li class="nav2"><a href="#">샐러드/기타</a>
							<ul>
								<li><a href="#">샐러드</a></li>
								<li><a href="#">기타</a></li>
							</ul>
						</li>
						<li class="nav2"><a href="#">국/찌개</a></li>
						<li class="nav2"><a href="#">즉석/가공</a></li>
					</ul>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>