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
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    text-align: center;
    margin: 0;
    padding: 50px;
}

.h {
    margin-bottom: 20px;
}

.idFind {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    display: inline-block;
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

input[type="text"],
input[type="email"] {
    width: 300px;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    background-color: #007BFF;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

.phone-feedback {
    color: red;
    margin-top: 10px;
}
</style>
<script>
	function validatePhoneNumber() {
		var phoneNumber = document.querySelector('input[name="tel"]').value;
		var feedback = document.getElementById('phone-feedback');

		var regexPhone = /^010-\d{4}-\d{4}$/;

		if (!regexPhone.test(phoneNumber)) {
			feedback.textContent = '전화번호 형식이 올바르지 않습니다. 010-1234-5678 형식으로 입력하세요.';
			return false;
		} else {
			feedback.textContent = '';
			return true;
		}
	}
</script>
</head>
<body>
	<div class="h">
		<h1>아아디 찾기</h1>
	</div>
	<div class="idFind">
		<form action="/userIdFindDB" method="post">
			사용자 이름: <input type="text" value="" name="user_name" placeholder="이름" required><br>
			사용자 전화번호: <input type="text" name="tel" placeholder="010-1234-5678" required><br>
				<div id="phone-feedback" class="phone-feedback"></div>
			사용자 이메일: <input type="email" name="email" placeholder="이메일" required><br>
			<input type="submit" value="아이디 찾기">
		</form>
			<c:if test="${not empty errorMessage}">
            	<div style="color: red;">${errorMessage}</div>
        	</c:if>
	</div>
</body>
</html>