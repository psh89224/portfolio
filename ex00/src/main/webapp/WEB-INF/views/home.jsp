<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="<c:url value ="/resources/bootstrap/css/common.css"/>">
<style type="text/css">
.block-center {
	width: 1024px;
	margin: auto;
	display:block;
}
header {
	min-height: 60px;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
}
nav {
	position: absolute;
	left: 0px;
	width: 100%;	
}
#nav li {
	display: block;
	width: 60px;
	margin-left:20px;
	margin-top:10px;
}
#gnb li {
	display: inline;
	margin-right: 10px;
}
#banner {
	width: 100%;
}
#product-list li {
	width: 24%;
	display: inline-block;
}
#product-list img {
	width: 100%;
}
body {
margin-left: 300px;

}
#center li {
align: center;
}
</style>
</head>
<body>

	<div class="w3-border-bottom">
		<c:import url="/header.do"/>
	</div>
	
	<div class="w3-border-bottom">
		<c:import url="/nav.do?menu=0"/>
	</div>
	
	<div>
	<div>
		<section class="block-center">
			<!-- <img id ="banner" src="/image/main.png"> -->
			<img id="banner" src="/resources/image/main.png">
			<p class="w3-text-gray" align="right">4 items</p>
				<ul id="product-list" class="w3-grayscale">
					<li id="center">
						<img src="/resources/image/image1.jpg">
						<p>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img src="/resources/image/image1.jpg">
						<p>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img src="/resources/image/image1.jpg">
						<p>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img src="/resources/image/image1.jpg">
						<p>상품이름<br>
						<b>가격</b>
						</p>
					</li>
				</ul>
		</section>
	</div>
	</div>
	
	
	<div class="w3-border-bottom">
		<c:import url="/footer.do"/>
	</div>
</body>
</html>

<!--  main content -->
<!-- <section class="content">
	<div class="row">
		left column
		<div class="col-md-12">
			general form elements
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">HOMEdfdff PAGE</h3>
				</div>
			</div>
		</div>
	</div>
</section> -->