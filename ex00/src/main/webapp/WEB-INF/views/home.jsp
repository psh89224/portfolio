<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<style type="text/css">
/* .block-center {
	width: 1024px;
	margin: auto;
	display:block;
}
header {
	min-height: 60px;
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
	background-color:#ecf0f1;
}
nav {
	position: absolute;
	left: 0px;
	width: 120px;
	float: left;
	border-right: 1px solid #333;
}
body {
margin-left: 300px;
}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 60px;
  background-color: #efefef;
  text-align: center;
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
} */

</style>
</head>

<body>

<!-- header -->
	<div class="header">
		<div class="w3-border-bottom">
			<c:import url="/header.do"/>
		</div>
	</div>
<!-- //header -->
	
	<div class="container">	
	<div class="nav">
	<div class="w3-border-bottom">
		<c:import url="/nav.do?menu=0"/>
	</div>
	</div>
	
	<div>
		<section class="block-center">
			<img id="banner" src="/resources/image/main.png">
			<p class="w3-text-gray" align="right">4 items</p>
				<ul id="product-list" class="w3-grayscale">
					<li>
						<img src="/resources/image/image1.jpg">
						<p align=center>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img src="/resources/image/image1.jpg">
						<p align=center>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img src="/resources/image/image1.jpg">
						<p align=center>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img src="/resources/image/image1.jpg">
						<p align=center>상품이름<br>
						<b>가격</b>
						</p>
					</li>
				</ul>
		</section>
	</div>
</div>
<div class="footer">
	<c:import url="/footer.do"/>
</div>
	
</body>
</html>