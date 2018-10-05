<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="<c:url value ="/css/common.css"/>">
<style type="text/css">
.block-center {
	width: 1024px;
	margin: auto;
	display:block;
}
header {
	min-height: 60px;
	position:fixed;
	top:0;
	width:100%;
}
nav {
	min-height: 30px;
}
#gnb li {
	display: inline;
	margin-right: 10px;
}
#banner {
	width: 1024px;
}
#product-list li {
	width: 24%;
	display: inline-block;
}
#product-list img {
	width: 100%;
}
</style>
</head>
<body>

<div class="w3-border-bottom">

	</div>
	
	<div class="w3-border-bottom w3-border-green">
		<c:import url="/nav.do?menu=0"/>
	</div>
	
	<div>
	<div>
		<section class="block-center">
			<img id ="banner" alt="" src="image/main.png">
			<p class="w3-text-gray">items</p>
				<ul id="product-list" class="w3-grayscale">
					<li>
						<img alt="" src="image/image1.png">
						<p>상품이름<br>
						<b>가격</b>
						</p>
					</li>
					<li>
						<img alt="" src="image/image1.png">
						<p>상품이름<br>
						<b>가격</b>
						</p>
					</li>
				</ul>
		</section>
	</div>
	</div>
	
	<%-- <c:import url="/footer.do"/> --%>

</body>
</html>
<%@include file="include/footer.jsp" %>



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