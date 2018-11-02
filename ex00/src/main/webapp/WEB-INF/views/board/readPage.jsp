<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
crossorigin="anonymous"></script>
<%@ include file="../include/header.jsp"%>	<!-- 경로 확인 -->

<!--  main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-success">
				<div class="box-header with-border">
					<h3 class="box-title">${boardVO.title}</h3>
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
					<a href="/board/listPage?post=${post}"><button id="goListBtn">목록으로</button></a>
				</div>
				
				<form role="form" action="modifyPage" method="post">
					<input type="hidden" name="bno" value="${boardVO.bno}">
					<input type="hidden" name="page" value="${cri.page}">
					<input type="hidden" name="perPageNum" value="${cri.perPageNum}">
					<input type="hidden" name="searchType" value="${cri.searchType}">
					<input type="hidden" name="keyword" value="${cri.keyword}">
				</form>
				
				<!-- 댓글부분 -->
				<div class="box-body">
					<label for="newReplyWriter">작성자</label>
					<input class="form-control" type="text" placeholder="USERID" id="newReplyWriter" >
					<label for="newReplyText">내용</label>
					<input class="form-control" type="text" placeholder="REPLY 내용" id="newReplyText">
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary" id="replyAddBtn">댓글 추가</button>
				</div>
				
				<!-- The Time line -->
				<ul class="timeline">
					<li class="time-label" id="repliesDiv"><span class="bg-green"></span></li>
				</ul>
				
				<div class="text-center">
					<ul id="pagination" class="pagination pagination-sm no-margin"></ul>
				</div>
				<!-- p.442 수정과 삭제를 위한 Modal 창 -->
				<div id="modifyModal" class="modal modal-primary fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content -->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title"></h4>
							</div>
							<div class="modal-body" data-rno>
								<p><input type="text" id="replytext" class="form-control"></p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-info" id="replyModBtn">수정</button>
								<button type="button" class="btn btn-danger" id="replyDelBtn">삭제</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>				
				</div>
				
				
			</div>
		</div>
	</div>
</section>

<!-- 수정,삭제,목록으로 -->
<script>				
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);

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
				
<!-- p.434 댓글 handlerbars -->
<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-rno={{rno}}>
<i class="fa fa-comments bg-blue"></i>
	<div class="timeline-item">
		<span class="time">
			<i class="fa fa-clock-o"></i>{{prettifyDate regdate}}
		</span>
		<h3 class="timeline-header"><strong>{{rno}}</strong> -{{replyer}}</h3>
		<div class="timeline-body">{{replytext}}</div>
			<div class="timeline-footer">
				<a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#modifyModal">수정</a>
			</div>	
	</div>
</li>
{{/each}}
</script>

<!-- p.435 prrettifyDate에 대한 javascript처리 -->
<script>
Handlebars.registerHelper("prettifyDate", function(timeValue) {
	var dateObj = new Date(timeValue);
	var year = dateObj.getFullYear();
	var month = dateObj.getMonth() + 1;
	var date = dateObj.getDate();
	return year+"/"+month+"/"+date;
});

var printData = function (replyArr, target, templateObject) {
	
	var template = Handlebars.compile(templateObject.html());
	
	var html = template(replyArr);
	$(".replyLi").remove();
	target.after(html);
}

<!--p.436 위에 템플릿을 이용하는 페이지를 처리하는 자바스크립트의 기능 -->
var bno = ${boardVO.bno};
var replyPage = 1;

getPage("/replies/"+bno+"/"+replyPage);

function getPage(pageInfo) {
	$.getJSON(pageInfo, function(data) {
		printData(data.list, $("#repliesDiv"), $("#template"));
		printPaging(data.pageMaker, $(".pagination"));
		
		$("#modifyModal").modal("hide");
	});
}

var printPaging = function(pageMaker, target) {
	var str = "";
	
	if(pageMaker.prev) {
		str += "<li><a href='"+(pageMaker.startPage-1)+"'> << </a></li>";
	}
	for (var i=pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
		var strClass = pageMaker.cri.page == i? 'class=active':'';
		str += "<li " +strClass+"><a href='"+i+"'>"+i+"</a></li>";
	}
	
	if(pageMaker.next) {
		str += "<li><a href='"+(pageMaker.endPage+1)+"'> >> </a></li>";
	}
	target.html(str);
};

/* <!-- p. 438 댓글 목록의 이벤트 처리-->
$("#repliesDiv").on("click", function() {
	if ($(".timeline li").size() > 1) {
		return;
	}
	getPage("/replies/" + bno + "/1");
}); */

<!-- p. 439 댓글 페이징 이벤트처리-->
$(".pagination").on("click", "li a", function(event) {
	event.preventDefault();
	replyPage = $(this).attr("href");
	
	getPage("/replies/"+bno+"/"+replyPage);
});
<!-- p.440 댓글 등록 이벤트 처리-->
$("#replyAddBtn").on("click", function() {
	var replyerObj = $("#newReplyWriter");
	var replytextObj = $("#newReplyText");
	var replyer = replyerObj.val();
	var replytext = replytextObj.val();
	
	$.ajax({
		type: 'post', url: '/replies/',
		headers: {"Content-Type": "application/json",  "X-HTTP-Method-Override": "POST"},
		dataType: 'text',
		data: JSON.stringify({bno:bno, replyer:replyer, replytext:replytext}),
		success: function(result) {
			console.log("result: " +result);
			if(result == 'SUCCESS') {
				alert("등록 되었습니다.");
				replyPage = 1;
				getPage("/replies/"+bno+"/"+replyPage);
				replyerObj.val("");
				replytextObj.val("");
			}
		}});
});
<!-- p.443 각 댓글의 버튼 이벤트 처리-->
$(".timeline").on("click", ".replyLi", function(event) {
	var reply = $(this);
	
	$("#replytext").val(reply.find('.timeline-body').text());
	$(".modal-title").html(reply.attr("data-rno"));
});
<!-- p.444 수정과 삭제의 처리 -->
$("#replyModBtn").on("click", function() {
	var rno = $(".modal-title").html();
	var replytext = $("#replytext").val();
	
	$.ajax({
		type: 'put', url: '/replies/' +rno,
		headers: {"Content-Type": "application/json", "X-HTTP-Method-Override": "PUT"},
		data: JSON.stringify({replytext:replytext}),
		dataType: 'text',
		success: function(result) {
			console.log("result: " +result);
			if(result == 'SUCCESS') {
				alert("수정 되었습니다.");
				getPage("/replies/" +bno+"/" +replyPage);
			}else{
				alert("adsf142");
			}
		}
	})
});
$("#replyDelBtn").on("click", function() {
	var rno = $(".modal-title").html();
	var replytext = $("#replytext").val();
	
	$.ajax({
		type: 'delete', url: '/replies/' +rno,
		headers: {"Content-Type": "application/json", "X-HTTP-Method-Override": "DELETE"},
		dataType: 'text',
		success: function(result) {
			console.log("result: " +result);
			if(result == 'SUCCESS') {
				alert("삭제 되었습니다.");
				getPage("/replies/" +bno+"/" +replyPage);
			}
		}});
});
</script>

<div class="footer">
	<c:import url="/footer.do"/>
</div>
<!-- 경로 확인 -->