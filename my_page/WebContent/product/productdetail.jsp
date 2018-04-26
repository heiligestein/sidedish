<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/
font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body {
		font-family: 'Nanum Gothic', serif;
		margin: 0;
		padding: 0;
	}
	
	#content {
		width: 1020px;
		height: 550px;
		margin: 0 auto;
	}
	
	#productDetail {
		width: 1020px;
		padding: 30px 0;
		margin: 30px auto;
		border: 1px solid #eee;
		height: 100%;
	}
	
	#productPic, #productInfo {
		float: left;
		width: 450px;
		height: auto;
		margin-left: 30px;
		display: inline-block;
	}
	
	#productPic img {
		width: 450px;
	}
	
	#product_title {
		font-size: 30px;
		font-weight: bold;
		letter-spacing: -1px;
		color: #333;
		margin: 0;
		line-height: 38px;
		position: relative;
	}
	
	#product_table * {
		display: inline-block;
	}
	
	#product_table {
		padding: 10px 0 5px;
	}
	
	#product_table dt {
		width: 110px;
		padding: 5px 0;
		color: #333;
	}
	
	#product_table dd {
		width: 320px;
		padding: 5px;
		color: #333;
	}
	#total_price {
		width: 440px;
		height: 35px;
		margin-top: 10px;
		border: 1px solid #ddd;
		padding: 10px 5px;
		font-size: 12px;
		color:#333;
		text-align: right;
	}
	#price {
		color: #88b04b;
		font-weight: bold;
		font-size: 26px;
		padding-bottom: 8px;
		line-height: 30px;
	}
	.btn {
		width: 80px;
		height: 64px;
		border: 1px solid #ddd;
		text-align: center;
		line-height: 60px;
		background-color: #fff;
		margin-top: 50px;
		margin-right: 5px;
		font-size: 22px;
		color: #333;
	}
	#order_btn {
		background-color: #88b04b;
		width: 260px;
		color: #fff;
	}
	.btn a:hover {
		color: #88b04b;
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
				<img src="image/${nlist.p_img}${blist.p_img}">
			</div>
			<!-- 상품 설명 -->
			
			<div id="productInfo">
				<span id="product_title">${nlist.p_name}${blist.p_name}</span>
				<c:if test="${blist.p_hot == '1'}"><img src="http://www.mcfood.net/shopimages/beatmarket/prod_icons/357?1499312333" style="position: absolute; padding-left:10px;"></c:if>
				<c:if test="${nlist.p_hot == '1'}"><img src="http://www.mcfood.net/shopimages/beatmarket/prod_icons/357?1499312333" style="position: absolute; padding-left:10px;"></c:if>
				
				<div id="product_table">
					<dl>
						<dt>용량</dt>
						<dd>${nlist.p_weight}${blist.p_weight}g</dd>
					</dl>
					<dl>
						<dt>판매가격</dt>
						<dd><strong><fmt:formatNumber value="${nlist.p_price2}${blist.p_price2}" type="currency"/></strong></dd>
					</dl>
					<dl>
						<dt>적립률(%)</dt>
						<dd>1%</dd>
					</dl>
					<dl>
						<dt>용량</dt>
						<dd>
							<select id="howGet">
								<option value="none" selected="selected">옵션선택</option>
								<option value="1"></option>
							</select>
						</dd>
					</dl>
					<div id="total_price">
						<span>총 상품 금액</span>
						<span id="price">0</span>
					</div>
					<dl style="padding-top: 10px;">
					<dt>유통기한</dt>
					<dd><strong>제조일로부터 냉장3일</strong></dd>
					</dl>
					<div id="order_btn" class="btn"><a href="#">주문하기</a></div>
					<div id="cart" class="btn"><a href="#"><i class="fa fa-shopping-cart"></i></a></div>
					<div id="heart" class="btn"><a href="#"><i class="fa fa-heart"></i></a></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>








