<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="/resources/bootstrap/css/common.css"/>
<!-- <style type="text/css">
.block-center {
	width: 1024px;
	margin: auto;
	display: block;
}
header {
	min-height: 60px;
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
}
nav {
	position: absolute;
	left: 0px;
	width: 200px;
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
</style> -->
</head>

<body>
	<div class="w3-border-bottom">
		<c:import url="/header.do"/>
	</div>
	
	<div class="w3-border-bottom">
		<c:import url="/nav.do?menu=0"/>
	</div>
	
	<div class="container">
		<div class="block-center">
			<p>회 원 가 입</p>
			<hr>
			<form>
				<input type="text" name="username" placeholder="아이디를 입력하세요" required="required">
				<form:errors path="username" />
				<input type="text" name="password" placeholder="비밀번호를 입력하세요" required="required">
				<form:errors path="password" />
				<input type="text" name="name" placeholder="이름을 입력하세요">
				<input type="text" name="email" placeholder="이메일을 입력하세요">
				<form:errors path="email" />
				<input type="text" name="phone" placeholder="전화번호를 입력하세요">
				<input type="text" name="address" placeholder="주소를 입력하세요">
				<input type="submit" value="가입하기">
			</form>
		</div>
	</div>
	<div class="footer">
		<c:import url="/footer.do"/>
	</div>
</body>
</html>