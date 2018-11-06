<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<%@ include file="../include/header.jsp"%>

<!--  main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">글 작성</h3>
				</div>
						
				<form role="form" method="post">
				<input type="hidden" name="post_category_idx" value="${post}">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">제목</label> <input type="text"
								name="title" class="form-control" placeholder="Enter Title">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">내용</label>
							<textarea class="form-control" name="content" rows="3"
								placeholder="Enter..."></textarea>
						</div>
						<div class="form-group">
							<input type="file" name="img_name">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">작성자</label> <input type="text"
								name="writer" class="form-control" value="${login.userid}" readonly>
						</div>
					</div>

					<div class="box-footer">
						<button type="submit" class="btn-primary">등록</button>
					</div>
				</form>


			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>