<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<% 
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리얼 홈메이드 성민반찬</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	width: 1520px;
	height: 100%;
	font-size: 13px;
	font-family: 'Nanum Gothic', serif;
}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code,
	form, fieldset, legend, textarea, p, blockquote, th, td, input, select,
	textarea, button {
	padding: 0;
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
	cursor: pointer;
}

#header, #layerWrap, #contentWrap, #ftLink .link, #footer {
	margin: 0 auto;
}

#wrap {
	position: relative;
}

#header {
	width: 100%;
	height: 183px;
	position: relative;
	z-index: 2;
}

.inner {
	height: 40px;
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
	padding: 0;
}

#header .tnv ul li {
	float: left;
	font-size: 11px;
	padding: 0 5px;
}

.inner_wrap .tnv ul li span {
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

.menu_list {
	padding: 0 10px;
	width: 52px;
}

#inner_right .menu_list:hover .dropdown {
	display: block;
	position: absolute;
	
}

.menu_list ul li a {
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
#inner_right ul li {
	position: relative;
}
#inner_right ul li dl.dropdown {
	display: none;
	postion: absolute;
	top: 40px;
	z-index: 5;
	border: 1px solid #eee;
	border-top: 0;
	left: 0;
	width: 71px;
	background-color: #fff;
}

#inner_right ul li dl.dropdown dd {
	background-color: #fff;
	z-index: 6;
}

#inner_right ul li dl.dropdown dd:hover {
	background-color: #f8f8f8;
	transition: all 0.3s;
}

#inner_right ul li dl.dropdown a {
	color: #666;
	font-size: 11px;
	letter-spacing: -1px;
	padding: 6px 2px;
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
	position: absolute;
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

#search_submit {
	text-align: center;
	height: 40px;
	width: 40px;
	float: right;
	margin: 10px 0 0 -14px;
	overflow: hidden;
}
/* 세번째 줄 */
#nav {
	height: 60px;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	background-color: #fff;
	z-index: 3;
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

.nav_wrap>ul>li:hover ul {
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
/* 모달창 */
.modal {
	display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 10; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

 .modal-content {
	width: 75%;
	padding: 16px;
	background-color: #fefefe;
	width: 460px;
	margin: 0 auto;
}

.close {
	float: right;
	font-weight: bold;
	font-size: 15px;
	background-color: #999;
	color: white;
	display: inline-block;
	width: 30px;
	height: 30px;
	text-align: center;
	line-height: 30px;
}
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

#header_div {
	width: 176px;
	margin: 62px auto;
}

a:link, a:visited {
	text-decoration: none;
	color: inherit; /*= 부모(그룹로그인) 색상을 상속 받겠다. */
}

.div_input {
	background-color: white;
	border: 1px solid #dadada;
	width: 408px;
	height: 29px;
	margin-bottom: 14px;
	padding: 10px 35px 10px 15px;
	line-height: 1px;
}

.input_login {
	width: 408px;
	height: 16px;
	border-width: 0;
	padding: 7px 0px 6px 0px;
}

#btn_login {
	width: 460px;
	height: 59px;
	text-align: center;
	font-size: 22px;
	background-color: #88b04b;
	display: block;
	color: white;
	line-height: 61px;
	padding-top: 2px;
}

#err_chk {
	display: none;
	font-size: 11px;
	color: red;
}

#member {
	color: #8c8c8c;
	font-size: 12px;
	text-align: center;
}

#member a:hover {
	text-decoration: underline;
}

.si {
	color: #D5D5D5;
}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 포커스 가면 색 변경 블러가 되면 색 해제
		$("#login_id").focus(function() {
			$("#naver_id").css("border", "1px solid #88b04b");

		});
		$("#login_pw").focus(function() {
			$("#naver_pw").css("border", "1px solid #88b04b");

		});
		$("#login_id").blur(function() {
			$("#naver_id").css("border", "1px solid #dadada");

		});
		$("#login_pw").blur(function() {
			$("#naver_pw").css("border", "1px solid #dadada");

		});
	});
	// 값이 없으면 로그인 안되고 경고창 뜨게 하기
	$(document).on("click","#btn_login",function() {

				var id = $("#login_id");
				var pw = $("#login_pw");

				var lid = id.val();
				var lpw = pw.val();
				if (lid == "") {
					id.focus();
					$("#err_chk").text("아이디를 입력해주세요.").css("display", "block")
							.css("color", "red");
					return false;
				} else if (lpw == "") {
					pw.focus();
					$("#err_chk").text("비밀번호를 입력해주세요.").css("display", "block")
							.css("color", "red");
					return false;
				}

				$.ajax({
					url : "loginck.sidedish",
					type : "POST",
					dataType : "json",
					data : "id=" + lid + "&pw=" + lpw,
					success : function(data) {
						if (data.flag == "0") {
							$("#err_chk").text("아이디나 비밀번호를 틀리셨습니다.").css(
									"display", "block").css("color", "red");
							id.select();
							return false;
						} else if (data.flag == "1") {
							location.reload();
						}
					},
					error : function() {
						alert("System Error!!!");
						return false;
					}
				});
			});
	$(document).on("click","#logout",function (){
		$.ajax({
			url: "logout.sidedish",
			type: "POST",
			dataType: "json",
			success : function(data) {
				if (data.flag =="1") {
					alert("로그아웃 성공");
					location.reload();
				}else if (data.flag =="0")
					alert("로그아웃 실패");
			},	
			error : function() {
				alert("System Error!!!");
				return false;
			}
		});
	});
	
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
					<div class="tnv cb_clear" style="float: left;">
						<ul class="cb_clear_right">
							<li><a href="#"><span style="color: #88b04b;">첫구매
										가이드</span></a></li>
							<li><span style="">|</span></li>
							<li><a href="#"><span style="color: #88b04b;">새벽
										직배송</span></a></li>
							<li><a href="https://www.instagram.com/mongchon_banchan/"
								target="_blank"><img src=image/insta_logo.png;
									style="margin: 10px 0px;" alt="인스타그램"></a></li>
							<li><a href="https://twitter.com/joinsfood" target="_blank"><img
									src=image/twew_logo.png; style="margin: 10px 0px;" alt="트위터"></a></li>
						</ul>
					</div>
					<!-- 첫번째 줄 우측  -->
					<div id="inner_right">
						<ul>
							<!-- 로그인유저 세션이 비어있으면 로그인/회원가입이 떠야 함. -->
							<c:choose>
								<c:when test="${empty sessionScope.loginUser}">
									<li class="menu_list" ><span id="myBtn"
											style="color: #fff; background: #88b04b; padding: 2px 4px; cursor: pointer;">로그인</span></li>
									<div class="modal" id="myModal">
										<div class="modal-content">
											<span class="close">&times;</span>
											<header>
											<div id="header_div">
												<a href="index.sidedish"> <img alt="반찬가게 로고"
													src="image/logo1.png">
												</a>
											</div>
											</header>
											<section>
											<form action="sessionaction.sidedish" name="frm_login"
												id="frm_login" method="POST">
												<div class="div_input" id="naver_id">
													<input type="text" placeholder="아이디" class="input_login"
														id="login_id" name="login_id">
												</div>
												<div class="div_input" id="naver_pw">
													<input type="password" placeholder="비밀번호"
														class="input_login" id="login_pw" name="login_pw">
												</div>
												<div id="err_chk">아이디 또는 비밀번호가 맞지 않습니다.</div>
												<!-- 버튼은 여러가지 있지만 그중에서 앵커태그가 가장 편하다.-->
												<div>
													<a href="#" id="btn_login">로그인</a>
												</div>
											</form>
											<div id="member">
												<a href="#">아이디 찾기</a>&nbsp <span class="si"> | </span>&nbsp
												<a href="#">비밀번호 찾기</a>&nbsp <span class="si"> | </span>&nbsp
												<a href="constract.sidedish">회원가입</a>&nbsp
											</div>
										</div>
									</div>
									<li class="menu_list"><a href="constract.sidedish">회원가입</a></li>
								</c:when>
								<c:otherwise>
									<li class="menu_list" style="width: 122px;"><span
										style="color: #fff; background: #88b04b; padding: 2px 4px;">${sessionScope.loginUser.mname}
											(${sessionScope.loginUser.mid})</span></li>
									<li class="menu_list"><a href="#" id="logout">로그아웃</a></li>
								</c:otherwise>
							</c:choose>
							<li class="menu_list"><a href="#">주문/배송</a></li>
							<li class="menu_list"><a href="#">마이페이지</a>
								<dl class="dropdown">
									<dd>
										<a href="#">주문내역</a>
									</dd>
									<dd>
										<a href="#">오늘 본 상품</a>
									</dd>
									<dd>
										<a href="#">늘 사는 반찬</a>
									</dd>
									<dd>
										<a href="#">쿠폰함</a>
									</dd>
									<dd>
										<a href="#">적립금</a>
									</dd>
									<dd>
										<a href="#">예치금</a>
									</dd>
									<dd>
										<a href="#">내 게시물</a>
									</dd>
									<dd>
										<a href="#">정보수정</a>
									</dd>
								</dl></li>
							<li class="menu_list"><a href="#">고객센터</a>
								<dl class="dropdown">
									<dd>
										<a href="#">공지사항</a>
									</dd>
									<dd>
										<a href="#">FaQ</a>
									</dd>
									<dd>
										<a href="#">질문과 대답</a>
									</dd>
									<dd>
										<a href="#">1:1상담</a>
									</dd>
								</dl></li>
							<li class="menu_list"><a href="#">커뮤니티</a>
								<dl class="dropdown">
									<dd>
										<a href="boardlist.sidedish">이용후기</a>
									</dd>
									<dd>
										<a href="#">포토후기</a>
									</dd>
									<dd>
										<a href="#">리뷰 모음</a>
									</dd>
									<dd>
										<a href="#">이벤트</a>
									</dd>
									<dd>
										<a href="#">반찬제안</a>
									</dd>
									<dd>
										<a href="#">기프트 카드</a>
									</dd>
								</dl></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 두번째 줄 -->
			<div id="topArea">
				<div id="logo_wrap">
					<a href="index.sidedish"><img src="image/logo1.png"
						style="float: left;"></a>
					<form>
						<fieldset class="top_search">
							<input id="search" name="multisearch" type="text" value=""
								class="MS_search_word_best" style="outline: none;">
							<div id="search_submit">
								<a href="javascript:search_submit();"> <img
									src="image/search_top.jpg"></a>
							</div>
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
							</ul></li>
						<li class="nav2"><a href="#">김치</a></li>
						<li class="nav2"><a href="#">반찬</a>
							<ul>
								<li><a href="#">밑반찬</a></li>
								<li><a href="#">볶음</a></li>
								<li><a href="#">조림</a></li>
								<li><a href="#">무침</a></li>
								<li><a href="#">절임/젓갈</a></li>
								<li><a href="#">전/나물</a></li>
							</ul></li>
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
							</ul></li>
						<li class="nav2"><a href="#">샐러드/기타</a>
							<ul>
								<li><a href="#">샐러드</a></li>
								<li><a href="#">기타</a></li>
							</ul></li>
						<li class="nav2"><a href="#">국/찌개</a></li>
						<li class="nav2"><a href="#">즉석/가공</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
<script type="text/javascript">
	window.onload = function() {
		var code = $
		{
			flag
		}
		;
		if (code == 0) {
			document.getElementById("err_chk").style.display = "block";
		}
	}
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>