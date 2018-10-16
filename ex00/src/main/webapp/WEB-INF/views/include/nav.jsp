<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">

<!-- <style type="text/css">
.left-area {
	float: right;
	width: 270px;
	border-right: 1px solid #333;
}
.section-tabbox-left .tabBox {
	padding: 0 15px 15px;
}
.section-tabbox-left {
	clear: both;
	padding-bottom: 5px;
	border-bottom: 1px solid #333;
}
.sub-multi {
	display: table;
	width: 100%;
	table-layout: fixed;
	box-sizing: border-box;
}
.snb-multi li {
	display: table-cell;
	width: 10%;
	vertical-align: middle;
}
</style> -->

<div class="left-area">
	<nav>
		<ul id="nav">
			<li><a href="#" <c:if test="${menu == 0}"></c:if>>NOTICE</a></li>
			<li><a href="#" <c:if test="${menu == 1}"></c:if>>SHOP</a></li>
			<li><a href="#" <c:if test="${menu == 2}"></c:if>>LOOKBOOK</a></li>
			<li><a href="#" <c:if test="${menu == 3}"></c:if>>FREEBOARD</a></li>
			<li><a href="#" <c:if test="${menu == 4}"></c:if>>REVIEW</a></li>
			<li><a href="#" <c:if test="${menu == 5}"></c:if>>GALLERY</a></li>
			<li><a href="#" <c:if test="${menu == 6}"></c:if>>SALE</a></li>
			<li><a href="#" <c:if test="${menu == 7}"></c:if>>Q & A</a></li>
			<li><a href="#" <c:if test="${menu == 8}"></c:if>>AboutUs</a></li>	
		</ul><br><br><br><br><br><br><br><br>
		
		<!-- 좌측 하단 탭 -->
		<div class="section-tabbox-left">
			<div class="tabBox">
				<ul class="snb snb-multi">
					<li class="box-tab-btn" data-for="ranking">
						<a href="javascript:void(0);" onclick="cycleLeftTab('ranking'); return false;"><span id=center>랭킹</span></a>
					</li>
					<li class="box-tab-btn" data-for="new">
						<a href="javascript:void(0);" onclick="cycleLeftTab('new_upd'); return false;"><span>신상품</span></a>
					</li>
					<li class="box-tab-btn" data-for="sale">
						<a href="javascript:void(0);" onclick="cycleLeftTab('sale'); return false;"><span>세일</span></a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</div>