<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>insertbatch</title>
</head>

<body>
	<form action="${pageContext.request.contextPath}/2.do" method="post"> 
		<c:forEach var="i" begin="0" end="4" step="1">
			<input type="text" name="itm_no[]" value="${no+i}" readonly />
			<input type="text" name="itm_name[]" value="제목${i}" placeholder="물품명" />
			<input type="text" name="itm_content[]" value="설명${i}" placeholder="물품설명"/>
			<input type="text" name="itm_price[]" value="${i+1000}" placeholder="물품가격"/>
			<input type="text" name="itm_qty[]" value="${i+2000}" placeholder="재고수량"/><br />
		</c:forEach>
		<input type="submit" name="btn" value="일괄등록" />
	</form>
	
	<hr />
	<c:if test="${empty list}">
		<p>자료가 없습니다.</p>
	</c:if>
	
	<c:if test="${!empty list}">
		<form action="${pageContext.request.contextPath}/2.do" method="post">
		<c:forEach var="vo" items="${list}">
			<input type="checkbox" name="chk[]" value="${vo.q_no}" /> 
			<input type="text" name="itm_no[]" value="${vo.q_id}" readonly />
			<input type="text" name="itm_name[]" value="${vo.q_front}" /> 
			<input type="text" name="itm_content[]" value="${vo.q_back}" />
			<input type="text" name="itm_price[]" value="${vo.q_hit}" /><br />
		</c:forEach>
		<input type="submit" name="btn" value="일괄삭제" />
		<input type="submit" name="btn" value="일괄수정" />
		</form>
	</c:if>
</body>
</html>