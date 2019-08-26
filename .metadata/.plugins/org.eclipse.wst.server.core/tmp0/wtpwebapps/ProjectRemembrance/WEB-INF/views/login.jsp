<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Login Here!</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<style>
	
</style>
<body>
	<jsp:include page="navigation.jsp"></jsp:include>
	
	<main class="login-form">
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card">
					<div class="card-header">사용자 로그인</div>
					<div class="card-body">

						<form action="login.do" method="post">
							<div class="form-group row">
								<label for="email_address"
									class="col-md-4 col-form-label text-md-right">사용자 이름</label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="user_id" required
										autofocus>
								</div>
							</div>

							<div class="form-group row">
								<label for="password"
									class="col-md-4 col-form-label text-md-right">비밀번호</label>
								<div class="col-md-6">
									<input type="password" class="form-control" name="user_pw"
										required>
								</div>
							</div>

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">로그인</button>
								&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-primary"
									onclick="location.href='register.do'">회원등록</button>
							</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>

	</main>
</body>
</html>