<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입  ID 중복 체크</title>
<style type="text/css">
	body, div, ul {
		margin: 0;
		padding: 0;
		font-size: 1em;
	}
	#popup {
		width: 200px;
		margin: 50px auto;
	}
</style>
<script type="text/javascript">
	function closeOK() {
		opener.document.frm_member.get_pw.focus();
		self.close();
		
	}
	function closeNG() {
		opener.document.frm_member.get_id.select();
		self.close();
	}
</script>
</head>
<body>
<div id="popup">
	<c:choose>
		<c:when test="${flag =='0'}">
				이미 가입된 ID입니다.<br>
				다른 ID를 입력해 주세요.<br>
				<button onclick="closeNG()">확인</button>
		</c:when>
		<c:when test="${flag =='1'}">
				사용 가능한 ID 입니다.<br>
				<button onclick="closeOK()">확인</button>
		</c:when>
	</c:choose>	
	
</div>
</body>
</html>