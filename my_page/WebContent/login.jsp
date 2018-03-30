<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
     body {
          font-family: 'Nanum Gothic', serif;
          background-color: #fff;
     }
     body, ul {
          margin:0;
          padding:0;
     }
     #content_layout {
          width: 460px;
          margin: 0 auto;
     }
     #header_div{
          width: 140px;
          margin: 62px auto;
     }
     #group_login {
          color: #8c8c8c;
          text-align: right;
          font-size: 11px;
          margin-bottom: 7px;
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
     }
     .input_login{
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
     table {
          width: 100%;
     }
     #state {
          font-size: 13px;
          position: relative;
     }
     td {
          height: 26px;
     }
     #secure {
          text-align: right;
          font-size: 12px;
     }
     #state img {
          vertical-align: middle;
     }
     #secure img {
          vertical-align: bottom;
     }
     #ip_ud:hover {
          text-decoration: underline;
     }
     #ip_ud {
          color: #747474;
     }
     #login_ud {
          text-decoration: underline;
          color: #747474;
     }
     .si {
          color: #D5D5D5;
     }
     #off {
          font-weight: 700;
          width: 22px;
          /* ON일시에 깨지는것을 방지하기위함 */
          text-align: left;
          display: inline-block;
     }
     
     hr {
          width: 98%;
          margin: 20px auto;
          border: thin solid #EAEAEA;
     }
     #member {
          color: #8c8c8c;
          font-size: 12px;
          text-align: center;
     }
     #member a:hover {
          text-decoration: underline;
     }
     #naver_img {
          width: 460px;
          display: block;
          margin: 47px 0 15px 0;
     }
     #macketing {
          width: 100%;
     }
     #footer {
          padding: 15px 0px;
     }
     #footer > ul {
          margin: 0 auto 9px;
          text-align: center;
          list-style-type: none;
     }
     #footer * {
          font-size: 11px;
          line-height: normal;
          list-style: none;
          color: #333;
     }
     #footer > ul > li {
          display: inline;
          border-left: 1px solid #dadada;
          padding: 0 5px 0 7px;
     }
     /* 첫 자식에게 부여하는 것 이용약관 앞의 줄을 삭제*/
     #footer > ul > li:first-child {
          border-left: 0px;
     }
     #footer > ul > li a:hover {
          color: #88b04b;
          text-decoration: underline;
     }
     #err_chk {
     	display: none;
     	font-size: 11px;
     	color:red;
     }
</style>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">

	
     $(document).ready(function (){
          // 포커스 가면 색 변경 블러가 되면 색 해제
          $("#get_id").focus(function (){
              $("#naver_id").css("border","1px solid #88b04b");
              
          });
          $("#get_pw").focus(function (){
              $("#naver_pw").css("border","1px solid #88b04b");
              
          });
          $("#get_id").blur(function (){
              $("#naver_id").css("border","1px solid #dadada");
              
          });
          $("#get_pw").blur(function (){
              $("#naver_pw").css("border","1px solid #dadada");
              
          });
     });
          // 값이 없으면 로그인 안되고 경고창 뜨게 하기
          $(document).on("click","#btn_login", function (){
          
              var id = $("#get_id");
              var pw = $("#get_pw");
              
          		var lid = id.val();
          		var lpw = pw.val();
				if (lid == ""){
					id.focus();
					$("#err_chk").text("아이디를 입력해주세요.").css("display","block").css("color","red");
				}else if(lpw ==""){
					pw.focus();
					$("#err_chk").text("비밀번호를 입력해주세요.").css("display","block").css("color","red");
				}
				
				$.ajax({
						url: "loginck.sidedish",
						type: "POST",
						dataType: "json",
						data: "id=" + lid+ "&pw=" +lpw,
						success: function(data){
							if(data.flag == "0"){
								$("#err_chk").text("아이디나 비밀번호를 틀리셨습니다.").css("display","block").css("color","red");
								id.select();
							}else if(data.flag =="1"){
								alert("로그인성공");
								$("#frm_login").submit();
							}
						},
						error: function () {
							alert("System Error!!!");
						}
					});
				
          		
          		
             
       });
</script>
</head>
<body>
     <div id="content_layout">
          <header>
              <div id="header_div">
                   <a href="index.sidedish">
                        <img alt="반찬가게 로고" src="image/logo_1020.png">
                   </a>
              </div>
          </header>
          
   	       <section>
          <form action="sessionaction.sidedish" name="frm_login" id="frm_login" method="POST">
              <div id="group_login">
                   <a href="">단체아이디 로그인 방법</a>
              </div>
              <div class="div_input" id="naver_id">
                   <input  type="text" placeholder="아이디" class="input_login" id="get_id" name="get_id" >
              </div>
              <div class="div_input" id="naver_pw">
                   <input  type="password" placeholder="비밀번호" class="input_login" id="get_pw" name="get_pw">
              </div>
             <div id="err_chk">아이디 또는 비밀번호가 맞지 않습니다.</div>
              <!-- 버튼은 여러가지 있지만 그중에서 앵커태그가 가장 편하다.-->
              <div><a href="#" id="btn_login">로그인</a>
              </div>
          </form>
              <div>
                   <table>
                        <tr>
                             <td id="state">
                                  <img src="image/check_off.gif">
                                  <!-- 라벨 태그 체크박스가 아닌 글을 눌러도 체크박스가 눌러지는 경우  -->
                                  <!-- <input type="checkbox" id="loginck">
                                  <label for="loginck" class="label1">로그인 상태 유지</label> -->
                             </td>
                             <td id="secure">
                             <!--&nbsp 한칸 띄워주는 것 = 스페이스 바  -->
                                  <span id="ip_ud"><a href="#">IP보안</a></span>
                                  <span id="off">OFF</span>&nbsp
                                  <span class="si"> | </span>&nbsp
                                  <span id="login_ud"><a href="#">일회용 로그인</a></span>&nbsp
                                  <img src="image/help.png">
                             </td>
                        </tr>
                   </table>
              </div>
              <div><hr></div>
              <div id="member">
                   <a href="#">아이디 찾기</a>&nbsp <span class="si"> | </span>&nbsp
                   <a href="#">비밀번호 찾기</a>&nbsp <span class="si"> | </span>&nbsp
                   <a href="constract.sidedish">회원가입</a>&nbsp <span class="si"> | </span>&nbsp
              </div>
          </section>
          
          <aside>
              <div id="macketing">
                   <img src="image/naver_img.JPG" alt="" id="naver_img">
              </div>
          </aside>
          
          <footer>
              <div id="footer">
                   <ul>
                        <li><a href="#">이용약관</a></li>
                        <li><strong><a href="#">개인정보처리방침</a></strong></li>
                        <li><a href="#">책임의 한계와 법적고지</a></li>
                        <li><a href="#">회원정보 고객센터</a></li>
                   </ul>
              </div>
          </footer>
     </div>
</body>
</html>

<script type="text/javascript">
 window.onload = function () {
	 var code = ${flag};
	if (code == 0 ) {
		document.getElementById("err_chk").style.display= "block";
	}	 
 }
</script>