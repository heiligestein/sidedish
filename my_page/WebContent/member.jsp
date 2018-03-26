<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 0;
		padding: 0;
	}
	#wrap {
		width: 480px;
		height: auto;
		margin: 0 auto;
	}
	.member_bar {
		width: 300px;
		height: 20px;
		margin: 10px 0;
	}
	#idck_btn {
		margin: 0 auto;
		width: 120px;
		height: 20px;
		border: 1px solid green;
		background-color: #88b04b;
	}
	#agree {
		margin: 100px auto;
		width: 300px;
		height: 30px;
		border: 1px solid green;
		background-color: #88b04b;
		color: white;
		weight: bold;
		font-size: 20px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		
	});
	/* 선택자 레디 없이 단독으로 쓸 수 있음 */
	$(document).on("click","#idck_btn", function (){
		// 새창의 크기
		cw=550;
		ch=300;
		// 스크린의 크기
		sw=screen.availWidth;
		sh=screen.availHeight;
		// 팝업 창의 포지션
		px=(sw-cw)/2;
		py=(sh-ch)/2;
		
		var id = $("#get_id").val();
		var url = "id_olap_ck.sidedish?memberid="+ id;
		window.open(url, "$_blank_1",
				"toolbar=no, menubar=no, status=no,scrollbars=no, resizable=no, left="+px+
				", top="+py+", width="+cw+", height="+ch);
	});
</script>
</head>
<body>
	<div id="wrap">
	<h1>회원가입 페이지</h1>
	<hr>
	<form name="frm_member">
		<input class="member_bar" id="get_id" name="get_id" type="text" placeholder="ID를 입력해주세요"><button id="idck_btn">ID중복체크</button>
		<input class="member_bar" id="get_pw" name="get_pw" type="password" placeholder="암호를  입력해주세요">
		<input class="member_bar" id="get_repw" name="get_repw" type="password" placeholder="암호를  확인해주세요">
		<input class="member_bar" id="get_name" name="get_name" type="text" placeholder="이름을 입력해주세요">
		<input class="member_bar" id="get_email" name="get_email" type="text" placeholder="e-mail을 입력해주세요">
		<input class="member_bar" id="get_phone" name="get_phone" type="text" placeholder="전화번호를 입력해주세요">
		<button id="agree">동의하고 가입 완료</button>
	</form>
	</div>
</body>
</html>