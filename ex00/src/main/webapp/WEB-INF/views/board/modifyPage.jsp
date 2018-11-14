<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<%@ include file="../include/header.jsp" %>  <!-- 경로 확인 -->

<!--  main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">수정화면</h3>
				</div>
				
				<form role="form" action="modifyPage" method="post">
					<input type="hidden" name="page" value="${cri.page}">
					<input type="hidden" name="perPageNum" value="${cri.perPageNum}">
					<input type="hidden" name="searchType" value="${cri.searchType}">
					<input type="hidden" name="keyword" value="${cri.keyword}">
					<input type="hidden" name="post" value="${post}">
				
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">글번호</label>
							<input type="text" name="bno" class="form-control" value="${boardVO.bno}" readonly="readonly">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">제목</label>
							<input type="text" name="title" class="form-control" value="${boardVO.title}">
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">내용</label>
							<textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea>
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">작성자</label>
							<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
						</div>
					</div>
				</form>
				
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">저장</button>
					<button type="submit" class="btn btn-warning">취소</button>
				</div>
				
				<script>
				$(document).ready(function() {
					
					var formObj = $("form[role='form']");
						console.log(formObj);
					
					$(".btn-warning").on("click", function() {
						//self.location = "/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}"
						//self.location = "/board/listPage?post=${post}&page=${cri.page}&perPageNum=${cri.perPageNum}"
								//+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
						self.location ="/board/readPage?${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}&post=${post}"
					});
					
					$(".btn-primary").on("click", function() {
						formObj.submit();
					});				
				});
				</script>
			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp" %>