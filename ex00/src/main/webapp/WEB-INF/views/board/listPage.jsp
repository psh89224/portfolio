<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="header">
		<div class="w3-border-bottom">
			<c:import url="/header.do"/>
		</div>
	</div>


<!--  main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">BNO</th>
						<th>TITLE</th>
						<th>WRITER</th>
						<th>REGDATE</th>
						<th style="width: 40px">VIEWCNT</th>
					</tr>
					
					<c:forEach items = "${list}" var = "boardVO">
					<tr>
						<td>${boardVO.bno}</td>
						<td><a href='/board/readPage${pageMakger.makeQuery(pageMaker.cri.page)}?bno=${boardVO.bno}'>${boardVO.title}</a></td>		
						<td>${boardVO.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${boardVO.regdate}" /></td>
						<td><span class="bsdge bg-red">${boardVO.viewcnt}</span></td>
					</tr>
					</c:forEach>
				</table>
				
				<!-- 페이징 아래 번호 -->
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a href="listPage${pageMaker.makeQuery(pageMaker.startPage -1)}">&laquo;</a></li>
						</c:if>
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li><c:out value="${pageMaker.cri.page == idx?'class=active':''}" />
							<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a></li>
						</c:forEach>
						
						<c:if test="${pageMaker.next && pageMaker.endPage >0}">
							<li><a href="listPage${pageMaker.makeQuery(pageMaker.endPage +1)}">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
				
			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<!-- 경로 확인 -->