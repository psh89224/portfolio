<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<div class="left-area">
	<nav>
		<ul id="nav">
			<li><a href="#" <c:if test="${menu == 0}"></c:if>>NOTICE</a></li>
			<li><a href="#" <c:if test="${menu == 1}"></c:if>>SHOP</a></li>
			<li><a href="#" <c:if test="${menu == 2}"></c:if>>LOOKBOOK</a></li>
			<li><a href="/board/listPage">FREEBOARD</a></li>
			<li><a href="#" <c:if test="${menu == 4}"></c:if>>REVIEW</a></li>
			<li><a href="#" <c:if test="${menu == 5}"></c:if>>GALLERY</a></li>
			<li><a href="#" <c:if test="${menu == 6}"></c:if>>SALE</a></li>
			<li><a href="#" <c:if test="${menu == 7}"></c:if>>Q & A</a></li>
			<li><a href="#" <c:if test="${menu == 8}"></c:if>>AboutUs</a></li>	
		</ul><br><br><br><br><br><br><br><br>
		
		<!-- 좌측 하단 탭 -->
		<div class="container" style="width:300px;">
			<ul class="nav nav-tabs">
			  <li class="active"><a data-toggle="tab" href="#home">신상품</a></li>
			  <li><a data-toggle="tab" href="#menu1">랭킹</a></li>
			  <li><a data-toggle="tab" href="#menu2">세일</a></li>
			</ul>

			<div class="tab-content">
				<div id="home" class="tab-pane fade in active">
					<p>내용</p>
				</div>
				<div id="menu1" class="tab-pane fade">
					<p>내용</p>
				</div>
				<div id="menu2" class="tab-pane fade">
					<p>내용</p>
				</div>
			</div>
		</div>


	</nav>
</div>