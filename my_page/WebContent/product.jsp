<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/
font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	body {
		font-family: 'Nanum Gothic', serif;
	}
	#content {
		width: 1020px;
		height: 800px;
		margin: 0 auto;
	}
	
	#productDetail {
		width: 1020px;
		padding: 30px 0;
		margin: 30px auto;
		border: 1px solid black; 
		/* eee */
		height: 100%;
	}
	#productPic {
		float: left;
		width: 450px;
		height: auto;
		margin-left: 30px;
	}
	
	#ProductInfo {
		float: left;
		width: 479px;
		padding: 30px;
	}
	#product_title{
		font-size: 30px;
		font-weight: bold;
		letter-spacing: -1px;
		color: #333;
		margin: 0;
		line-height: 38px;
	}
</style>

<script type="text/javascript">

</script>
</head>
<body>
	<div id="content">
		<div id="productDetail">
			
			<!-- 이미지 / 이미지 눌렀을 시 확대 하게 하기 -->
			<div id="productPic">
				<img src="#">
			</div>
			<!-- 상품 설명 -->	
			<div id="productInfo">
				<span id="product_title">상품이름</span>
			</div>		
		</div>
	</div>	
</body>
</html>



