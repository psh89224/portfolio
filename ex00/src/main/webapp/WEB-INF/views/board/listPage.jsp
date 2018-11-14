<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<div class="header">
	<div class="w3-border-bottom"> <c:import url="/header.do"/> </div>
</div>


<!--  main content -->
<body>
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
			
				<div class="box-header with-border">
				<%-- <c:forEach var="postVO" items="${postVOs}"> --%>
					<h3 class="box-title">${postVO.post_name}기</h3>
				<%-- </c:forEach> --%>
				</div>				
			
				<table class="table table-bordered">
					<tr>
						<th style="width: 10px">번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일시</th>
						<th>조회수</th>
					</tr>

					<c:forEach items = "${list}" var = "boardVO">
					<tr>
						<td>${boardVO.bno}</td>
						<td><a href='/board/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}&post=${post}'>${boardVO.title}<strong>[${boardVO.replycnt}]</strong></a></td>
						<td>${boardVO.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${boardVO.regdate}" /></td>
						<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
					</tr>
					</c:forEach>
				</table>
				<!-- 검색창 -->
				<div class="text-center">
				<div class="box-body">
					<select name="searchType">
						<option value="n" <c:out value="${cri.searchType == null?'selected':''}"/>>---</option>
						<option value="t" <c:out value="${cri.searchType eq 't'?'selected':''}"/>>제목</option>
						<option value="c" <c:out value="${cri.searchType eq 'c'?'selected':''}"/>>내용</option>
						<option value="w" <c:out value="${cri.searchType eq 'w'?'selected':''}"/>>작성자</option>
						<option value="tc" <c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>제목 or 내용</option>
						<option value="cw" <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>내용 or 작성자</option>
						<option value="tcw" <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>제목 or 내용 or 작성자</option>
					</select>
					<input type="text" name='keyword' id="keywordInput" value="${cri.keyword}">
					<button id="searchBtn">검색</button>
					<a href="/board/register?post=${post}"><button id="newBtn">새 글작성</button></a>
				</div></div>
				
				<!-- 페이징 아래 번호 -->
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a href="listPage${pageMaker.makeSearch(pageMaker.startPage -1)}">&laquo;</a></li>
						</c:if>
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}" />>
							<a href="listPage${pageMaker.makeSearch(idx)}">${idx}</a>
						</c:forEach>
						
						<c:if test="${pageMaker.next && pageMaker.endPage >0}">
							<li><a href="listPage${pageMaker.makeSearch(pageMaker.endPage +1)}">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
				<input type="hidden" name="post" id="post" value="${post}">
				<script>
					$(document).ready(function() {
						$('#searchBtn').on("click", function(event) {
							
							self.location = "/board/listPage"
							+ '${pageMaker.makeQuery(1)}'
							+ '&post='
							+ $("#post").val()
							+ "&searchType="
							+ $("select option:selected").val()
							+ "&keyword=" + encodeURIComponent($('#keywordInput').val());
						});
					});
				</script>
				
			</div>
		</div>
	</div>
</section>

<div class="footer">
	<div class="w3-border-top"> <c:import url="/footer.do"/> </div>
</div>
</body>
<!-- 경로 확인 -->