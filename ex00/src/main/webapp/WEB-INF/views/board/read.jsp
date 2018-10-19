<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
						<label for="exampleInputEmail1">Title</label> <input type="text"
							name="title" class="form-control" value="${boardVO.title}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form=control" name="content" rows="3"
							readonly="readonly">${boardVO.content}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label> <input type="text"
							name="writer" class="form-control" value="${boardVO.writer}"
							readonly="readonly">
					</div>
				</div>


				<div class="box-footer">
				<c:if test="${login.userid == boardVO.writer}">
					<button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
					<button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
				</c:if>
					<button type="submit" class="btn btn-primary" id="listBtn">LIST ALL</button>
				</div>
				
				<script>				
					$(document).ready(function(){
						
						var formObj = $("form[role='form']");
						
						console.log('formObj: ', formObj);
						
						$(".btn-warning").on("click", function(){
							formObj.attr("action", "/board/modify");
							formObj.attr("method", "get");		
							formObj.submit();
						});
						
						$(".btn-danger").on("click", function(){
							formObj.attr("action", "/board/remove");
							formObj.submit();
						});
						
						$(".btn-primary").on("click", function(){
							self.location = "/board/listAll";
						});
						
					});
				</script>

			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<!-- 경로 확인 -->