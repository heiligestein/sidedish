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
		margin: 0;
		padding: 0;
	}
	#wrap {
		
	}
	#header_div{
          width: 140px;
          margin: 62px auto;
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
	.emailmember_bar {
		width: 130px;
		height: 20px;
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
	#birthmonth  {
		font-weight: bold;
	}
	.sexDiv1 {
		width: 200px;
		height: 31px;
		display: inline-block;
		position: relative;
	} 
	.sexlabel {
		width: 200px;
		height: 31px;
		display: block;
		position: absolute;
		left:0;
		top: 0;
		z-index: 1;
		border: 1px solid #dcdcdc;
		line-height: 31px;
		text-align: center;
		color: #dcdcdc;
		background-color: #fff; 
	}
      #jusobutton {
           color: white;
     }
     .addr_bar:first-child {
           width: 25%;
     }
     .addr_bar {
           border: 1px solid #ddd;
           width: 100%;
           border-bottom: 0px solid #fff;
     }
     .addr_bar:last-child {
           border: 1px solid #ddd;
     }
	#agree {
		margin: 100px auto;
		width: 460px;
		height: 60px;
		background-color: #88b04b;
		color: white;
		weight: bold;
		line-height: 60px;
		font-size: 25px;
		text-align: center;
		cursor: pointer;
	}
	#agree_a {
		display: inline-block;
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
          padding-left: 0;
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
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		
		$(document).on("click","#agree_a",function (){
		
		var id = $.trim($("#get_id").val());
		var pw = $.trim($("#get_pw").val());
		var repw = $.trim($("#get_repw").val());
		var name = $.trim($("#get_name").val());
		var phone = $.trim($("#get_phone").val());
		/* 라디오 남녀 값 넘기는 방법 */
		var sex = $("input[type=radio][name=sex]:checked").val();
		/* 이메일 셀렉트문과 응용해서 넘기는 방법 */
		var email = $("#email").val()+"@"+$("#email_adress").val();
		
		
		if (id == "") {
			$("#alert_id").text("필수 정보입니다.").css("display","block");
			$("#get_id").focus();
			return false;
			}
			else if (id != ""){
				$(".essential").css("display","none");
				$("#get_pw").focus();
			}
		
		
		/* 비밀번호 정규식 */
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
		if ($("#email").val() == "") {
			$("#alert_email").text("필수 정보입니다.").css("display","block");
			$("#email").focus();
			return false;
			}
			else if($("#emailselect").val() == ""){
				$("#alert_email").text("필수 정보입니다.").css("display","block");
				$("#emailselect").focus();
				return false;
			}
			else if (!regEmail.test(email)) {
				$("#email").focus();
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

	
		/* e mail 도메인 사이트 바뀌는 방법 */
	$(document).on("change","#emailselect",function () {
		var emailselect = $("#emailselect").val();
		var email_adress = $("#email_adress");
		if (emailselect =="직접입력") {
			email_adress.attr("readonly",false);
			email_adress.focus();
			email_adress.val("");
		}else {
			email_adress.val(emailselect);
			email_adress.attr("readonly",true);
			}
	});
		
	// 남여 선택
	$(document).on("click", "#manlabel" ,function (){
		$("#manlabel").css("color","#88b04b");
		$("#manlabel").css("border","1px solid #88b04b");
		
		$("#womanlabel").css("color","#dcdcdc");
		$("#womanlabel").css("border","1px solid #dcdcdc");
	});
	$(document).on("click", "#womanlabel" ,function (){
		$("#womanlabel").css("color","#88b04b");
		$("#womanlabel").css("border","1px solid #88b04b");
		
		$("#manlabel").css("color","#dcdcdc");
		$("#manlabel").css("border","1px solid #dcdcdc");
	});
});
		
	
	/* A-jax 활용법 */
	$(document).on("blur","#get_id",function (){
		var id = $(this).val();
		if(id == ""){
			$(this).select();
			$("#alert_id").text("ID를 입력해주세요.").css("display","block").css("color","red");
		}else if (id != ""){
			$("#alert_id").css("display","none");
			$.ajax({
				url: "memajax.sidedish",
				type: "POST",
				dataType: "json",
				data: "id="+ id,
				success: function(data){
					if (data.flag == "1") {
						$("#alert_id").text("중복된 ID 입니다.").css("display","block").css("color","red");
						$("#get_id").focus();
					}else {
						$("#alert_id").text("멋진 ID 입니다.").css("display","block").css("color","#88b04b");
					}
				},
				error: function () {
					alert("System Error!!!");
				}
			});
		}
	});

</script>

</head>
<body>
	<div id="wrap">
         <div id="header_div">
              <a href="index.sidedish">
                   <img alt="반찬가게 로고" src="image/logo_1020.png">
              </a>
         </div>
          
		<div id="container">
			<div id="content">
				<form id="frm_member" name="frm_member" action="memberInsert.sidedish" method="POST">
				<div class="row_group">
					<div id="idDiv" class="join_row">
						<input class="member_bar" id="get_id" name="get_id" type="text" placeholder="아이디">
						<span class="essential" id="alert_id"></span>
					</div>
					
					<div id="pwDiv" class="join_row">
						<input class="member_bar" id="get_pw" name="get_pw" type="password" placeholder="비밀번호">
						<span class="essential" id="alert_pw"></span>
					</div>
					<div id="repwDiv" class="join_row">
						<input class="member_bar" id="get_repw" name="get_repw" type="password" placeholder="비밀번호 재확인">
						<span class="essential" id="alert_repw"></span>
					</div>
				</div>
				<div class="row_group">
					<div id="nameDiv" class="join_row">
						<input class="member_bar" id="get_name" name="get_name" type="text" maxlength="4" placeholder="이름">
						<span class="essential" id="alert_name"></span>
					</div>
					<div id="sexDiv" class="join_row">
						<span id="sexDiv_man" class="sexDiv1">
						<input type="radio" id="man" name="get_sex" value="M">남
						<label class="sexlabel" id="manlabel" for ="man">남자</label>
						</span>
						<span id="sexDiv_woman" class="sexDiv1">
						<input type="radio" id="woman" name="get_sex" value="F">여
						<label class="sexlabel" id="womanlabel" for ="woman">여자</label>
						</span>
					</div>
					<div id="birthDiv" class="join_row">
						<div id="birth1">생일</div>
						<input type="text" id="birthyear" name="birthyear" class="birth" maxlength="2" placeholder="년19(2자)">
						<select id="birthmonth" name="birthmonth" >
						  <option value="월" selected="selected">월</option>
						  <option value="01">1</option>
						  <option value="02">2</option>
						  <option value="03">3</option>
						  <option value="04">4</option>
						  <option value="05">5</option>
						  <option value="06">6</option>
						  <option value="07">7</option>
						  <option value="08">8</option>
						  <option value="09">9</option>
						  <option value="10">10</option>
						  <option value="11">11</option>
						  <option value="12">12</option>
						</select>
						<input type="text" id="birthday" name="birthday" class="birth" maxlength="2" placeholder="일">
					</div>
				</div>
				<div class="row_group">
					<div id="emailDiv" class="join_row">
						<input class="emailmember_bar" id="email" name="email" type="text" name="" placeholder="e-mail">@
						<input class="emailmember_bar" id="email_adress" name="email_adress" type="text" >
						<select id="emailselect">
							<option value="직접입력" selected="selected">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="yahoo.com">yahoo.com</option>
							<option value="korea.com">korea.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
						</select>
						<span class="essential" id="alert_email"></span>
					</div>
					<div id="phoneDiv" class="join_row">
						<input class="member_bar" id="get_phone" name="get_phone" maxlength="11" type="text" placeholder="전화번호">
						<span class="essential" id="alert_phone"></span>
					</div>
					<div id="addrDiv" class="join_row">
                                        <input type="text" id="sample4_postcode" name="sample4_postcode" class="addr_bar" placeholder="우편번호">
                                        <input type="button" onclick="sample4_execDaumPostcode()" id="jusobutton"  value="우편번호 찾기"><br>
                                        <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" class="addr_bar" placeholder="도로명주소"><br>
                                        <input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" class="addr_bar" placeholder="지번주소">
                                        <span id="guide" style="color:#999"></span>
                    </div>
				</div>
					 <div id="agree"><a href="#" id="agree_a">∨	가입하기</a></div> 
				</form>
				 <div id="footer">
			          <ul>
			              <li><a href="#">이용약관</a></li>
			              <li><strong><a href="#">개인정보처리방침</a></strong></li>
			              <li><a href="#">책임의 한계와 법적고지</a></li>
			              <li><a href="#">회원 정보 고객센터</a></li>
			          </ul>
	     		</div>
			</div>
		</div>
	</div>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample4_roadAddress').value = fullRoadAddr;
            document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>
</html>