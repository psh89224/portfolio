<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">

<header class="block-center w3-display-container">
	<div id="logo" class="w3-display-left w3-xlarge"><a href="/">쇼핑몰</a></div>
		<h5>${login.userid}님 환영합니다.</h5>
		<ul id ="gnb" class="w3-display-right">
		<c:if test="${login.userid == null}">
			<li><a href="../login.do">LOGIN</a></li>
			<li><a href="../join.do">JOIN</a></li>
		</c:if>
		<c:if test="${login.userid != null}">
			<li><a href="../logout">LOGOUT</a></li>
		</c:if>
			<li><a href="#">CART</a></li>
			<li><a href="#">ORDER</a></li>
			<li><a href="#">MY PAGE</a></li>
			<li><a href="#">SEARCH</a></li>		
		</ul>
</header>
