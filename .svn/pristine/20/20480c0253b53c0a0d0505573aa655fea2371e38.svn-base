<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일로 회원가입</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@400;700&display=swap');

body {
    
    align-items: center;
    height: 1150px;
    margin: 0;
    background-color: white;
    font-family: 'Noto Serif KR', serif;
    color: black;
}

.USER_list {
    background-color: #ffffff;
    padding: 2rem;
    width: 100%;
    max-width: 400px;
}

.USER_list input[type="text"],
.USER_list input[type="email"],
.USER_list input[type="password"],
.USER_list select {
    width: calc(100% - 2rem);
    padding: 0.8rem;
    margin: 0.5rem 0;
    box-sizing: border-box;
    border: 1px solid #e4dcd2;
    border-radius: 5px;
    color: #333;
    font-size: 1rem;
    transition: border-color 0.3s;
}

.USER_list input[type="text"]:focus,
.USER_list input[type="email"]:focus,
.USER_list input[type="password"]:focus,
.USER_list select:focus {
    border-color: #007bff;
    outline: none;
}

.USER_list button {
    width: calc(100% - 2rem);
    padding: 1rem;
    margin: 1rem 0 0;
    border: none;
    border-radius: 5px;
    background-color: #007bff82;
    color: #ffffff;
    font-weight: bold;
    font-size: 1.1rem;
    cursor: pointer;
    transition: background-color 0.5s;
}

.USER_list button:hover {
    background-color: #007bff;
}

.password-feedback,
.nickname-feedback,
.phone-feedback,
.birthday-feedback,
.userId-feedback {
    color: red;
    font-size: 0.9rem;
    text-align: left;
}

.toggle-password {
    display: inline-block;
    cursor: pointer;
    font-size: 0.9rem;
    color: #007BFF;
    margin-top: 0.5rem;
}

.USER_list a {
    display: inline-block;
    margin-top: 1rem;
    font-size: 0.9rem;
    color: #3a5a40;
    text-decoration: none;
    transition: color 0.3s;
}

.USER_list a:hover {
    color: black;
    font-weight: bold;
}
/*컨텐츠 section*/
.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

/*초기 잡혀있는 헤더 높이 때문에 첫 컨텐츠에는 margin-top을 주고 시작함.*/
.content_zone1 {
	margin-top: 7rem;
}
</style>
<script>
let isUserIdChecked = false;

function validatePassword() {
    var password = document.querySelector('input[name="user_pw"]').value;
    var feedback = document.getElementById('password-feedback');
    
    var regexUpper = /[A-Z]/;
    var regexLower = /[a-z]/;
    var regexNumber = /[0-9]/;
    var regexSpecial = /[@$!%*?&]/;

    if (password.length < 8) {
        feedback.textContent = '비밀번호는 최소 8자 이상이어야 합니다.';
        return false;
    } else if (!regexUpper.test(password)) {
        feedback.textContent = '비밀번호는 대문자를 포함해야 합니다.';
        return false;
    } else if (!regexLower.test(password)) {
        feedback.textContent = '비밀번호는 소문자를 포함해야 합니다.';
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
    var password = document.querySelector('input[name="user_pw"]').value;
    var confirmPassword = document.querySelector('input[name="user_pw2"]').value;
    var feedback = document.getElementById('confirm-password-feedback');

    if (password !== confirmPassword) {
        feedback.textContent = '비밀번호가 일치하지 않습니다.';
        return false;
    } else {
        feedback.textContent = ''; 
        return true;
    }
}

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

function validateBirthday() {
    var birthday = document.querySelector('input[name="birthday"]').value;
    var feedback = document.getElementById('birthday-feedback');
    
    // Remove all non-numeric characters from the input
    birthday = birthday.replace(/\D/g, '');

    // Check if the length of the input is exactly 8 characters
    if (birthday.length !== 8) {
        feedback.textContent = '생년월일은 8자리 숫자로 입력해야 합니다.';
        return false;
    }

    // Extract year, month, and day from the cleaned input
    var year = parseInt(birthday.substring(0, 4), 10);
    var month = parseInt(birthday.substring(4, 6), 10);
    var day = parseInt(birthday.substring(6, 8), 10);

    // Validate the month and day
    if (month < 1 || month > 12) {
        feedback.textContent = '월은 1부터 12 사이의 숫자여야 합니다.';
        return false;
    }

    // Handle different number of days in months
    var daysInMonth = new Date(year, month, 0).getDate();

    if (day < 1 || day > daysInMonth) {
        feedback.textContent = '해당 월의 유효한 날짜가 아닙니다.';
        return false;
    }

    feedback.textContent = ''; 
    return true;
}

function validateNickname() {
    var nickname = document.querySelector('input[name="user_name"]').value;
    var feedback = document.getElementById('nickname-feedback');

    var regexHangul = /[가-힣]/;

    if (nickname.match(/^[ㄱ-ㅎ]*$/) && !regexHangul.test(nickname)) {
        feedback.textContent = '별명에 한글 초성을 포함할 수 없습니다.';
        return false;
    } else {
        feedback.textContent = ''; 
        return true;
    }
}

function validateUserId() {
    var userId = document.getElementById('user_id').value;
    var feedback = document.getElementById('userId-feedback');
    
    if (userId.length < 4 || userId.length > 16) {
        feedback.style.color = 'red';
        feedback.textContent = '아이디는 4자 이상, 16자 이하로 입력하세요.';
        return false;
    }
    
    var regex = /^[a-zA-Z][a-zA-Z0-9._-]*$/;
    if (!regex.test(userId)) {
        feedback.style.color = 'red';
        feedback.textContent = '아이디는 영문자로 시작하며, 영문자, 숫자, ., _, -만 포함할 수 있습니다.';
        return false;
    }
    
    if (!/^[a-zA-Z]/.test(userId)) {
        feedback.style.color = 'red';
        feedback.textContent = '아이디는 영문자로 시작해야 합니다.';
        return false;
    }
    
    var adminId = ["bangbang"]; 
    for (var i = 0; i < adminId.length; i++) {
        if (userId.toLowerCase().includes(adminId[i])) {
            feedback.style.color = 'red';
            feedback.textContent = '아이디에 부적절한 단어가 포함되어 있습니다.';
            return false;
        }
    }

    feedback.style.color = 'green';
    feedback.textContent = '사용 가능한 아이디입니다.';
    return true;
}

function checkDuplicateUserId() {
    var userId = document.getElementById('user_id').value;
    var feedback = document.getElementById('userId-feedback');

    if (!userId) {
        feedback.style.color = 'red';
        feedback.textContent = '아이디를 입력하세요.';
        return;
    }

    var url = '/api/user/check-duplicate?user_id=' + encodeURIComponent(userId);

    fetch(url)
        .then(response => response.json())
        .then(data => {
            if (data.exists) {
                feedback.style.color = 'red';
                feedback.textContent = "중복된 아이디입니다.";
                isUserIdChecked = false; // 중복된 아이디인 경우 체크되지 않음
            } else {
                feedback.style.color = 'green';
                feedback.textContent = "사용 가능한 아이디입니다.";
                isUserIdChecked = true; // 사용 가능한 아이디인 경우 체크됨
            }
        })
        .catch(error => {
            console.error('Fetch error:', error);
            feedback.textContent = "서버 오류가 발생했습니다.";
        });
}

function togglePasswordVisibility() {
    var passwordField = document.querySelector('input[name="user_pw"]');
    var confirmPasswordField = document.querySelector('input[name="user_pw2"]');
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

function updateEmail() {
    var emailDomain = document.getElementById('email_domain').value;
    var emailInput = document.getElementById('email');
    var emailDomainHidden = document.getElementById('email_domain_hidden');

    if (emailDomain === 'custom') {
        emailInput.value = '';
        emailInput.placeholder = '직접 입력';
        emailInput.focus();
    } else {
        var currentEmail = emailInput.value.split('@')[0];
        emailInput.value = currentEmail + emailDomain;
        emailInput.placeholder = emailDomain;
    }
    
    emailDomainHidden.value = emailDomain;
}

document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('input[name="user_pw"]').addEventListener('input', validatePassword);
    document.querySelector('input[name="user_pw2"]').addEventListener('input', confirmPassword);
    document.querySelector('input[name="tel"]').addEventListener('input', validatePhoneNumber);
    document.querySelector('input[name="birthday"]').addEventListener('input', validateBirthday);
    document.querySelector('input[name="user_name"]').addEventListener('input', validateNickname);
    document.querySelector('form').addEventListener('submit', function(event) {
        var isValid = validatePassword() && confirmPassword() && validatePhoneNumber() && validateBirthday() && validateNickname() && validateUserId();
        if (!isValid || !isUserIdChecked) {
            event.preventDefault();
            if (!isUserIdChecked) {
                document.getElementById('userId-feedback').textContent = '아이디 중복 확인을 해주세요.';
            }
        }
    });
});

</script>

</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<section class="content_zone content_zone1">
    <div class="content_zone_wrap">
        <div class="USER_list">
            <form action="/USER_listDB" method="post">
                별명 <input type="text" name="user_name" required><br>
                <div id="nickname-feedback" class="nickname-feedback"></div>
                이메일
                <div class="email-container">
                    <input type="text" id="email" name="email" required placeholder="사용자 입력 부분">
                    <select id="email_domain" onchange="updateEmail()">
                        <option value="">이메일 도메인 선택</option>
                        <option value="@naver.com">naver.com</option>
                        <option value="@gmail.com">gmail.com</option>
                        <option value="@daum.net">daum.net</option>
                        <option value="custom">직접 입력</option>
                    </select>
                     <input type="button" value="인증하기" class="btn btn-primary" id="emailAuth">
                    <input type="hidden" id="email_domain_hidden" name="email_domain_hidden">
                </div>
			  <input placeholder="인증 코드 6자리를 입력해주세요." maxlength="6" disabled="disabled"  id="authCode" type="text" autofocus>
  				<span id="emailAuthWarn"></span>
               <br> 아이디 <input type="text" id="user_id" name="user_id" required><br>
                <button type="button" onclick="if (validateUserId()) { checkDuplicateUserId() }">중복 확인</button><br>
                <div id="userId-feedback" class="userId-feedback"></div>
                비밀번호 <input type="password" name="user_pw" placeholder="최소 8자, 대소문자, 숫자, 특수문자 포함" required><br>
                <div id="password-feedback" class="password-feedback"></div>
                비밀번호 확인 <input type="password" name="user_pw2" placeholder="비밀번호 확인" required><br>
                <div id="confirm-password-feedback" class="password-feedback"></div>
                <span id="togglePassword" class="toggle-password" onclick="togglePasswordVisibility()">비밀번호 표시</span><br>
                휴대전화 번호 <input type="text" name="tel" placeholder="010-1234-5678" required><br>
                <div id="phone-feedback" class="phone-feedback"></div>
                성별<br>
                <select id="gender" name="gender">
                    <option value="m">남</option>
                    <option value="f">여</option>
                </select><br>
                생년월일 <input type="text" name="birthday" placeholder="20000101" required><br>
                <div id="birthday-feedback" class="birthday-feedback"></div>
                <input type="hidden" name="authority" value="0"><br>
                <button type="submit">회원 가입</button>
            </form>
            <br>
            <a href="/login">뒤로가기</a>
        </div>
    </div>
</section>
</body>
</html>
