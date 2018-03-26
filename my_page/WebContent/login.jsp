<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#contentWrapper {
		position: relative;
	}
	#content {
		width: 1020px;
		margin: 0 auto;
		float: none;
	}
	.mlog-sign {
		height: auto;
		text-align: center;
		overflow: hidden;
		margin: 60px auto;
		width: 800px;
	}
	h1 {
		font-size: 24px;
		font-weight: bold;
		margin-bottom: 10px;
		line-height: 40px;
	}
	.mlog {
		height: 430px;
		width: 100%;
	}
	.login_bar {
		width: 100px;
		height: 30px;
	}
	#login {
		border: 1px solid black;
	}
	#kakao {
		border: 1px solid yellow;
	}	
</style>
</head>
<body>
	<div id = "contentWrapper">
		<div id="content">
			<div id="loginWrap">
				<div class="mlog-sign">
					<div class="login_header_i">
						<h1>로그인</h1>
					</div>
					<div class="mlog">
						<form>
							<input class="login_idpw" id="login_id" name="login_id" type="text" placeholder="아이디" value="">
							<input class="login_idpw" id="login_pw" name="login_pw" type="password" placeholder="****" value="">
							<input id="cbox" type="checkbox" >아이디저장
							<div class="login_bar" id="login"></div>
							<div class="login_bar" id="kakao"></div>
						</form>
					</div>
					<div class="sign">
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>