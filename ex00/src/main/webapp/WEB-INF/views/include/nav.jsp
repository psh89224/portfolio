<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<%-- <div class="left-area">
		<ul id="nav">
		<c:forEach var="postVO" items="${postVOs}">
			<li><a href="#">${postVO.post_name}</a></li>
		</c:forEach>
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
 --%>

    <div id="wrapper">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       Brand
                    </a>
                </li>
                <c:forEach var="postVO" items="${postVOs}">
                
                <li class="dropdown">
                  <a href="/board/listPage?post=${postVO.idx}" class="dropdown-toggle" <c:if test="${postVO.idx eq 2}">
                  			 data-toggle="dropdown"
                  		</c:if>>
                  	${postVO.post_name}
                  		<c:if test="${postVO.idx eq 2}">
                  			<span class="caret"></span>
                  		</c:if>
                  	</a>
                  	
                  <c:if test="${postVO.idx eq 2 }">
                  	<ul class="dropdown-menu" role="menu">
                  		<c:forEach var="post2VO" items="${post2VOs}">
                    	<li class="dropdown-header">${post2VO.title}</li>
                        </c:forEach>
                  	</ul>
                  	</c:if>
                </li>
                </c:forEach>
            </ul>

	</nav>
</div>