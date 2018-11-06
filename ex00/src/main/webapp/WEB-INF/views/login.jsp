<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<body>

	<div class="header">
		<div class="w3-border-bottom">
			<c:import url="/header.do"/>
		</div>
	</div>
	<div class="nav">
		<div class="w3-border-bottom">
			<c:import url="/nav.do?menu=0"/>
		</div>
	</div>


	<div class="container">
		<div class="block-center" align="center">
			<p>로 그 인</p>
			<hr>
			<form action="/loginPost" method="post">
				<div class="form-group has-feedback">
					<input type="text" name="userid" placeholder="USER ID" />
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="userpw" placeholder="USER PW" />
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
				<div class="col-xs-8">
					<div class="checkbox icheck">
						<label>
							<input type="checkbox" name="useCookie"> 아이디 저장
						</label>
					</div>
				</div>
				</div>
				
					<button type="submit" class="btn btn-primary btn-block btn-flat" style="width:200px">Sign In</button>
				
			</form>
		</div>
	</div>
</html>