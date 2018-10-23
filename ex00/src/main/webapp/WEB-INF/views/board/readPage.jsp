<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<%@ include file="../include/header.jsp"%>
<!-- 경로 확인 -->


<!--  main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">READ PAGE</h3>
				</div>

				<form role="form" method="post">
					<input type="hidden" name="bno" value="${boardVO.bno}">
				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">제목</label> 
						<input type="text" name="title" class="form-control" value="${boardVO.title}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">내용</label>
						<textarea class="form=control" name="content" rows="3" readonly="readonly">${boardVO.content}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">작성자</label>
						<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
					</div>
				</div>


				<div class="box-footer">
				<c:if test="${login.userid == boardVO.writer}">
					<button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
					<button type="submit" class="btn btn-danger" id="removeBtn">삭제</button>
				</c:if>
					<button type="submit" class="btn btn-primary" id="goListBtn">목록으로</button>
				</div>
				
				<form role="form" action="modifyPage" method="post">
					<input type="hidden" name="bno" value="${boardVO.bno}">
					<input type="hidden" name="page" value="${cri.page}">
					<input type="hidden" name="perPageNum" value="${cri.perPageNum}">
				</form>
				
				<!-- 댓글 추가 부분 -->
				<c:if test="${not empty login}">
					<div class="box-body">
						<label for="exampleInputEmail1">작성자</label>
						<input class="form-control" type="text" placeholder="USER ID" id="newReplyWriter" value="${login.userid}" readonly="readonly">
						<label for="exampleInputEmail1">댓글 추가</label>
						<input class="form-control" type="text" placeholder="REPLY TEXT" id="newReplyWriter">
					</div>
					
					<div class="box-footer">
						<button type="submit" class="btn btn-primary" id="replyAddBtn">댓글 추가</button>
					</div>
				</c:if>
				
				<c:if test="${empty login}">
					<div class="box-body">
						<div><a href="javascript:goLogin();">로그인 하세요</a></div>
					</div>
				</c:if>
				
				<script>				
					$(document).ready(function(){
						
						var formObj = $("form[role='form']");
						
						//console.log('formObj: ', formObj);
						console.log(formObj);
						
						/* $(".btn-warning").on("click", function(){
							formObj.attr("action", "/board/modifyPage");
							formObj.attr("method", "get");		
							formObj.submit();
						});
						
						$(".btn-danger").on("click", function(){
							formObj.attr("action", "/board/removePage");
							formObj.submit();
						});
						
						$(".btn-primary").on("click", function(){
							self.location = "/board/listPage";
						}); */
						
						$("#goListBtn").on("click", function() {
							formObj.attr("method", "get");
							formObj.attr("action", "/board/listPage");
							formObj.submit();
						});
						$("#removeBtn").on("click", function() {
							formObj.attr("action", "/board/removePage");
							formObj.submit();
						});
						$("#modifyBtn").on("click", function() {
							formObj.attr("action", "/board/modifyPage");
							formObj.attr("method", "get");
							formObj.submit();
						});
						
					});
				</script>

			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<!-- 경로 확인 -->