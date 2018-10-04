<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="css/common.css">
<style type="text/css">
input {
	display: block;
	margin: 5px;
}
</style>
</head>
<body>
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

</body>
</html>