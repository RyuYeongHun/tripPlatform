<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 변경</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap">
    <style>
        body {
            font-family: "Noto Sans KR", sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        h1 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-group input[readonly] {
            background-color: #f0f0f0; /* 읽기 전용 상태를 나타내는 배경색 */
            color: #666; /* 글자 색상 */
            cursor: not-allowed; /* 커서를 비활성화 상태로 표시 */
        }
        .form-group input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
        .password-feedback,
        .confirm-password-feedback {
            color: red;
            font-size: 12px;
            text-align: left;
        }
        .toggle-password {
            display: inline-block;
            cursor: pointer;
            font-size: 14px;
            color: #007BFF;
        }
        
    </style>
 <script>
    function validatePassword() {
        var password = document.querySelector('input[name="new_pw"]').value;
        var feedback = document.getElementById('password-feedback');
        
        var regexUpper = /[A-Z]/;
        var regexLower = /[a-z]/;
        var regexNumber = /[0-9]/;
        var regexSpecial = /[@$!%*?&]/;

        if (password.length < 8) {
            feedback.textContent = '비밀번호는 최소 8자 이상이어야 합니다.';
            return false;
        } else if (!regexLower.test(password)) {
            feedback.textContent = '비밀번호는 소문자를 포함해야 합니다.';
            return false;
        } else if (!regexUpper.test(password)) {
            feedback.textContent = '비밀번호는 대문자를 포함해야 합니다.';
            return false;
        } else if (!regexNumber.test(password)) {
            feedback.textContent = '비밀번호는 숫자를 포함해야 합니다.';
            return false;
        } else if (!regexSpecial.test(password)) {
            feedback.textContent = '비밀번호는 특수 문자를 포함해야 합니다.';
            return false;
        } else {
            feedback.textContent = ''; 
            return true;
        }
    }

    function confirmPassword() {
        var password = document.querySelector('input[name="new_pw"]').value;
        var confirmPassword = document.querySelector('input[name="confirm_new_pw"]').value;
        var feedback = document.getElementById('confirm-password-feedback');

        if (password !== confirmPassword) {
            feedback.textContent = '비밀번호가 일치하지 않습니다.';
            return false;
        } else {
            feedback.textContent = ''; 
            return true;
        }
    }

    function togglePasswordVisibility() {
        var passwordField = document.querySelector('input[name="new_pw"]');
        var confirmPasswordField = document.querySelector('input[name="confirm_new_pw"]');
        var toggleButton = document.getElementById('togglePassword');
        
        if (passwordField.type === "password") {
            passwordField.type = "text";
            confirmPasswordField.type = "text";
            toggleButton.textContent = "비밀번호 숨기기";
        } else {
            passwordField.type = "password";
            confirmPasswordField.type = "password";
            toggleButton.textContent = "비밀번호 표시";
        }
    }

    function checkCurrentPassword() {
        var currentPassword = document.querySelector('input[name="current_pw"]').value;
        var feedback = document.getElementById('current-password-feedback');
        
        if (currentPassword === "") {
            feedback.textContent = '현재 비밀번호를 입력해 주세요.';
            return false;
        } else {
            feedback.textContent = '';
            return true;
        }
    }

    document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('input[name="new_pw"]').addEventListener('input', validatePassword);
        document.querySelector('input[name="confirm_new_pw"]').addEventListener('input', confirmPassword);
        document.querySelector('input[name="current_pw"]').addEventListener('input', checkCurrentPassword);

        document.querySelector('form').addEventListener('submit', function(event) {
            var isValid = validatePassword() && confirmPassword() && checkCurrentPassword();
            if (!isValid) {
                event.preventDefault();
            }
        });

        // 서버에서 전달한 메시지 처리
        <% if (request.getAttribute("errorMessage") != null) { %>
            alert('<%= request.getAttribute("errorMessage") %>');
        <% } %>
    });
</script>
</head>
<body>

    <div class="container">
        <h1>비밀번호 변경</h1>
        
        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>

        <form action="/userUpdateDB" method="post">
            <div class="form-group">
                <label for="user_id">아이디</label>
                <input type="text" id="user_id" name="user_id" value="${user.user_id}" readonly required>
            </div>

            <div class="form-group">
                <label for="current_pw">현재 비밀번호</label>
                <input type="password" id="current_pw" name="current_pw" required>
                <div id="current-password-feedback" class="password-feedback"></div>
            </div>
            <div class="form-group">
                <label for="new_pw">변경할 비밀번호</label>
                <input type="password" id="new_pw" name="new_pw" placeholder="최소 8자, 대소문자, 숫자, 특수문자 포함" required>
                <div id="password-feedback" class="password-feedback"></div>
            </div>
            <div class="form-group">
                <label for="confirm_new_pw">변경할 비밀번호 확인</label>
                <input type="password" id="confirm_new_pw" name="confirm_new_pw" required>
                <div id="confirm-password-feedback" class="confirm-password-feedback"></div>
            </div>
            <span id="togglePassword" class="toggle-password" onclick="togglePasswordVisibility()">비밀번호 표시</span><br><br><br>
            <div class="form-group">
                <input type="submit" value="비밀번호 변경">
            </div>
        </form>
    </div>

</body>
</html>