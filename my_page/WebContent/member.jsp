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
		
	}
	#header {
		width: 768px;
		height: 169px;
		padding: 62px 0 0;
		margin: 0 auto;
		text-align: center;
	}
	#container {
		width: 768px;
		height: 694px;
		margin: 0 auto;
	}
	#content {
		width: 460px;
		height: 100%;
		margin: 0 auto;
		border: 1px solid blue;
	}
	.row_group {
		zoom: 1;
		margin-bottom: 10px;
		border: solid 1px #dadada;
		background: #fff;
	}
	.join_row:first-child {
    border-top: none;
	}
	.join_row {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	    padding: 9px;
	    background: #fff;
	    border-top: 1px solid #dadada;
    }
    input {
    	border: 0;
    }
	.member_bar {
		width: 350px;
		height: 20px;
	}
	#idck_btn {
		text-align:center;
		width: 80px;
		height: 30px;
		background-color: #88b04b;
		color: white;
		font-weight: bold;
		font-size: 13px;
		line-height: 30px;
		cursor: pointer;
		display: inline-block;
		margin: 0 5px;
	}
	#get_pw,#get_repw,#get_name {
		margin-right: 100px;
	}
	.essential{
		color: red;
		font-size: small;
		display: none;
	}
	#birth1 {
		background-color: #dadada;
		display: inline-block;
		width: 10%;
		height: 75%;
	}
	.birth {
		width:
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
	.sexDiv1 {
		border: 1px solid black;
		width: 200px;
		height: 20px;
	}
	/* footer */
	#footer * {
          font-size: 11px;
          line-height: normal;
          list-style: none;
          color: #333;
     }
     #addr_logo {
          width: 63px;
          height: 11px;
     }
     #address {
          margin: 0px auto;
          text-align: center;
     }
     #footer > ul {
          margin: 0 auto 9px;
          text-align: center;
     }
     #footer > ul > li {
          display: inline;
          padding: 0 5px 0 7px;
          border-left: 1px solid #dadada;
     }
     #footer ul li:first-child {
          border-left: 0px!important;
     }
     #footer > ul > li a:hover {
          color: #88b04b;
          text-decoration: underline;
     }
     #address {
          text-align: center;
          margin: 0 auto;
     }
     #address * {
          font: 9px verdana;
     }
     #address a{
          font-weight: bold;
     }
     #address a:hover {
          color: #88b04b;
     }
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		
		$(document).on("click","#agree",function (){
		
		var id = $.trim($("#get_id").val());
		var pw = $.trim($("#get_pw").val());
		var repw = $.trim($("#get_repw").val());
		var name = $.trim($("#get_name").val());
		var email = $.trim($("#get_email").val());
		var phone = $.trim($("#get_phone").val());
		var sex = $("input[type=radio][name=sex]:checked").val();
		
		if (id == "") {
			$("#alert_id").text("필수 정보입니다.").css("display","block");
			$("#get_id").focus();
			return false;
		}
			else if (id != ""){
				$(".essential").css("display","none");
				$("#get_pw").focus();
			}
		var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; // 6~20 자 이내 숫자 + 영문
		
		if (pw == "") {
			$("#alert_pw").text("필수 정보입니다.").css("display","block");
			$("#get_pw").focus();
			return false;
		}
			else if(!regPass.test(pw)){
				$("#alert_pw").text("6~20자 이내 숫자와 영문을 포함하여 입력해주세요.").css("display","block");
				$("#get_pw").select();
				return false;
			}
			else if (pw != ""){
				$(".essential").css("display","none");
				$("#get_repw").focus();
			}
		if (repw == "") {
			$("#alert_repw").css("display","block");
			$("#get_repw").text("필수 정보입니다.").focus();
			return false;
		}
			else if (pw != repw) {
				$("#alert_repw").text("비밀번호와 일치 하지 않습니다.").css("display","block");
				$("#get_repw").select();
				return false;
			} 
		if (name == "") {
			$("#alert_name").text("필수 정보입니다.").css("display","block");
			$("#get_name").focus();
			return false;
		}
		else if (name != ""){
			$(".essential").css("display","none");
		}
		var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if (email == "") {
			$("#alert_email").text("필수 정보입니다.").css("display","block");
			$("#get_email").focus();
			return false;
			}
			else if (!regEmail.test(email)) {
				$("#get_email").focus();
				$("#alert_email").text("정확한 정보만 입력해주세요.").css("display","block");
				return false;
			}
			else if (email != ""){
				$(".essential").css("display","none");
				$("#get_phone").focus();
			}
		var regPhone = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
		if (phone == "") {
			$("#get_phone").focus();
			$("#alert_phone").text("필수 정보입니다.").css("display","block");
			return false;
			}else if($.isNumeric(phone)==false){
				$("#get_phone").focus();
				$("#get_phone").val("");
				$("#alert_phone").text("숫자만 입력해주세요.").css("display","block");
				return false;
			}else if(!regPhone.test(phone)){
				$("#get_phone").focus();
				$("#alert_phone").text("정확한 정보만 입력해주세요.").css("display","block");
				return false;
			}	
		
		$("#frm_member").submit();
		});
		
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
		window.open(url, "_blank_1",
				"toolbar=no, menubar=no, status=no,scrollbars=no, resizable=no, left="+px+
				", top="+py+", width="+cw+", height="+ch);
	});
	
</script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<h1>회원가입 페이지</h1>
		</div>
		<div id="container">
			<div id="content">
				<form id="frm_member" name="frm_member" action="memberInsert.sidedish" method="POST">
				<div class="row_group">
					<div id="idDiv" class="join_row">
						<input class="member_bar" id="get_id" name="get_id" type="text" placeholder="ID를 입력해주세요"><div id="idck_btn">ID중복체크</div>
						<span class="essential" id="alert_id"></span>
					</div>
					<div id="pwDiv" class="join_row">
					
						<input class="member_bar" id="get_pw" name="get_pw" type="password" placeholder="암호를  입력해주세요">
						<span class="essential" id="alert_pw"></span>
					</div>
					<div id="repwDiv" class="join_row">
						<input class="member_bar" id="get_repw" name="get_repw" type="password" placeholder="암호를  확인해주세요">
						<span class="essential" id="alert_repw"></span>
					</div>
				</div>
				<div class="row_group">
					<div id="nameDiv" class="join_row">
						<input class="member_bar" id="get_name" name="get_name" type="text" maxlength="4" placeholder="이름을 입력해주세요">
						<span class="essential" id="alert_name"></span>
					</div>
					<div id="sexDiv" class="join_row">
						<div id="sexDiv_man" class="sexDiv1">
						<input type="radio" id="man" name="sex">남
						</div>
						<div id="sexDiv_woman" class="sexDiv1">
						<input type="radio" id="woman" name="sex">여
						</div>
					</div>
					<div id="birthDiv" class="join_row">
						<div id="birth1">생일</div>
						<input type="text" id="birthyear" name="birthyear" class="birth" maxlength="2" placeholder="년19(2자)">
						<select id="birthmonth" name="birthmonth" >
						  <option value="월"><strong>월</strong></option>
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						  <option value="6">6</option>
						  <option value="7">7</option>
						  <option value="8">8</option>
						  <option value="9">9</option>
						  <option value="10">10</option>
						  <option value="11">11</option>
						  <option value="12">12</option>
						</select>
						<input type="text" id="birthday" name="birthday" class="birth" maxlength="2" placeholder="일">
					</div>
					<div id="emailDiv" class="join_row">
						<input class="member_bar" id="get_email" name="get_email" type="text" placeholder="e-mail을 입력해주세요">
						<span class="essential" id="alert_email"></span>
					</div>
				</div>
				<div class="row_group">
					<div id="phoneDiv" class="join_row">
						<input class="member_bar" id="get_phone" name="get_phone" maxlength="11" type="text" placeholder="전화번호를 입력해주세요">
						<span class="essential" id="alert_phone"></span>
					</div>
				</div>
					 <button id="agree">동의하고 가입 완료</button> 
				</form>
				 <div id="footer">
			          <ul>
			              <li><a href="#">이용약관</a></li>
			              <li><strong><a href="#">개인정보처리방침</a></strong></li>
			              <li><a href="#">책임의 한계와 법적고지</a></li>
			              <li><a href="#">회원 정보 고객센터</a></li>
			          </ul>
			          <div id="address">
			              <span><a href="http://www.naver.com">
			                   <img src="image/naver_logo.png" id="addr_logo">
			              </a></span>
			              <span>Copyright</span>
			              <span>ⓒ</span>
			              <span><strong><a href="#">NAVER Corp.</a></strong></span>
			              <span>All Rights Reserved.</span>
			          </div>
	     		</div>
			</div>
		</div>
	</div>
</body>
</html>