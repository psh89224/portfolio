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
</head>

<body>
	<div class="header">
		<div class="w3-border-bottom">
			<c:import url="/header.do"/>
		</div>
	</div>
	
	<div class="w3-border-bottom">
		<c:import url="/nav.do?menu=0"/>
	</div>
	
	<div class="container">
		<div class="block-center" align="center">
			<p>회 원 가 입</p>
			<hr>
			<form:form commandName="actionSignUpDTO" action="actionSignUp.do" method="post">
				<input type="text" name="userid" placeholder="아이디를 입력하세요" required="required">
				<form:errors path="userid" /><br>
				<input type="password" name="userpw" placeholder="비밀번호를 입력하세요" required="required">
				<form:errors path="userpw" /><br>
				<input type="text" name="username" placeholder="이름을 입력하세요"><br>
				<input type="text" name="address" placeholder="주소를 입력하세요"><br>
				<input type="text" name="email" placeholder="이메일을 입력하세요">
				<form:errors path="email" /><br>
				<input type="text" name="interest_pro" placeholder="관심상품을 입력하세요"><br>
				<input type="submit" value="가입하기">
			</form:form>
		</div>
	</div>
	<div class="footer">
		<c:import url="/footer.do"/>
	</div>
</body>
</html>