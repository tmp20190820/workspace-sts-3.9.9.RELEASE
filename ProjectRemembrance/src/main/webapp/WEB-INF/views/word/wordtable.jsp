<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true" pageEncoding="UTF-8"%>
<html>
<head>
<jsp:include page="../bootstrap.jsp"></jsp:include>
<title>word table</title>
</head>
<body>
	<jsp:include page="../navigation.jsp"></jsp:include>
	
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">no</th>
      <th scope="col">id</th>
      <th scope="col">front</th>
      <th scope="col">back</th>
      <th scope="col">hit</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>	
    <c:forEach var="vo" items="${list}">
	    <tr>
	      <th scope="row">${vo.q_no}</th>
	      <td>${vo.q_id}</td>
	      <td>${vo.q_front}</td>
	      <td>${vo.q_back}</td>
	      <td>${vo.q_hit}</td>
	      <td>
	      	<button>update</button>
	      	<button>delete</button>
	      	<button type="button" class="btn btn-indigo btn-sm m-0">Button</button>
	      </td>
	    </tr>
	</c:forEach>
  </tbody>
</table>
	
	
</body>
</html>
