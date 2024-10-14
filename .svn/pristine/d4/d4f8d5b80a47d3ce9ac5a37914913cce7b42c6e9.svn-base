<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디</title>
<style>
body {
	text_align: center;
}

.h {
	display: flex;
	justify-content: center;
}

.login_success {
	text-align: center;
}
</style>
<script>
	<c:if test="${not empty mm}">
	alert("${mm}");
	</c:if>
</script>
</head>
<body>


	<div class="h">
		<h1>아이디 로그인</h1>
	</div>
	<div class="login_success">
		<form action="login_success" method="post">
			아이디<br>
			<input type="text" name="user_id" placeholder="아이디"><br>
			비밀번호<br>
			<input type="password" name="user_pw" placeholder="비밀번호"><br>
			<input type="checkbox" name="email_auto" value="autoLogin">
			자동로그인 <input type="submit" value="로그인">
		</form>
		<br>
		<button type="button" onclick="location.href='/email_login'">아이디로
			회원가입</button>
		<br>
		<a href="js/login">뒤로가기</a>
	</div>

</body>
</html>