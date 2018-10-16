<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
html, body {
	margin: 0;
	width: 100%;
	height: 100%;
}
header {
	height: 120px;
	background-color: lightblue;
}
footer {
	height: 60px;
	background-color: gray;
}
.wrapper {
	width: 100%;
	margin: 0 auto;
}
.container {
	position: relative;
	width: 100%;
	height: 800px;
}
.nav {
	display: inline-block;
	width: 250px;
	height: 100%;
	background-color: green;
	margin: 0;
}
.content {
	display: inline-block;
	height: 100%;
	position: absolute;
	left: 250px;
	right: 0;
	overflow: hidden;
	background-color: yellow;
}
#right ul {
	margin-right: 10px;
}
#display-right li {
	display: inline-block;
	margin-right: 10px;
	top: 50%;
	
} 
</style>
<body>

	<div class="wrapper">
	
		<header>
			<div><a href="/">쇼핑몰</a></div>
			
				<ul id="display-right">
					<li><a href="login.do">LOGIN</a></li>
					<li><a href="join.do">JOIN</a></li>
					<li><a href="#">CART</a></li>
					<li><a href="#">ORDER</a></li>
					<li><a href="member/main.do">MY PAGE</a></li>
					<li><a href="#">SEARCH</a></li>
					<li><a href="logout">로그아웃</a></li>		
				</ul>
		
		</header>
		
		<div class="container">
			<div class="nav">
				<ul class="nav-list">
					<li class="nav-item">NOTICE</li>
					<li class="nav-item">nav</li>
				</ul>
			</div>
			
			<div class="content">
				<h1>content 내용</h1>
			</div>
		</div>
		
		<footer>
		</footer>
		
	</div>

</body>
</html>