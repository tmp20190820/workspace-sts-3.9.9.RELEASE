<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrap.jsp"></jsp:include>
<meta charset="UTF-8">
<title>${sessionScope.login_check } 님의 단어장이에요</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<jsp:include page="../navigation.jsp"></jsp:include>
	<div align="center">
	<div align="center" style="width:650px; height:auto;">
		<div class="alert alert-light" id="front" role="alert">Quiz Question</div>
		<p>
			<button class="btn btn-primary" type="button" data-toggle="collapse"
				data-target="#collapseExample" aria-expanded="false"
				aria-controls="collapseExample">Show Answer</button>
		</p>
			<div class="collapse" id="collapseExample">
			<div class="card card-body" id="back">Quiz Back</div>
		</div>
	</div>
	</div>
	
	<script src="${pageContext.request.contextPath}/resources/js/word.js"></script>
</body>
</html>