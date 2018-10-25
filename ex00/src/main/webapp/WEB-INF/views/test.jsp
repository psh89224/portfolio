<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<h2>Ajax Test Page</h2>
	<ul id="replies">
	</ul>
</body>
<script>
	var bno = 275;
	$.getJSON("/replies/all/" + bno, function(data) {
		
		var str = "";
		console.log(data.length);
		
	$(data).each(
			function() {
				str += "<li data-rno='"+this.rno+"' class='replyLi'>"
					+ this.rno + ":" + this.replytext
					+ "</li>";
			});
	$("#replies").html(str);
	});
</script>
</html>