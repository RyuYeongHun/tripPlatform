<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자로 회원가입</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@400;700&display=swap');

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
    font-family: 'Noto Serif KR', serif;
    color: black;
}

.biz_partner {
    background-color: #ffffff;
    padding: 2rem;
    width: 100%;
    max-width: 400px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.biz_partner input[type="text"],
.biz_partner input[type="email"],
.biz_partner input[type="password"],
.biz_partner select {
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

.biz_partner input[type="text"]:focus,
.biz_partner input[type="email"]:focus,
.biz_partner input[type="password"]:focus,
.biz_partner select:focus {
    border-color: #007bff;
    outline: none;
}

.biz_partner button {
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

.biz_partner button:hover {
    background-color: #007bff;
}

.password-feedback,
.nickname-feedback,
.phone-feedback,
.owner-feedback,
.bizNo-feedback {
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

.biz_partner a {
    display: inline-block;
    margin-top: 1rem;
    font-size: 0.9rem;
    color: #3a5a40;
    text-decoration: none;
    transition: color 0.3s;
}

.biz_partner a:hover {
    color: black;
    font-weight: bold;
}
</style>
<script>
let isBizNoChecked = false;

function validatePassword() {
    var password = document.querySelector('input[name="biz_pw"]').value;
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
    var password = document.querySelector('input[name="biz_pw"]').value;
    var confirmPassword = document.querySelector('input[name="biz_pw2"]').value;
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

function validateNickname() {
    var nickname = document.querySelector('input[name="biz_name"]').value;
    var feedback = document.getElementById('nickname-feedback');

    var regexHangul = /[가-힣]/;

    if (nickname.match(/^[ㄱ-ㅎ]*$/) && !regexHangul.test(nickname)) {
        feedback.textContent = '이름에 한글 초성을 포함할 수 없습니다.';
        return false;
    } else {
        feedback.textContent = ''; 
        return true;
    }
}

function validateBizNo() {
    var bizNo = document.getElementById('biz_no').value;
    var feedback = document.getElementById('bizNo-feedback');
    
    // 사업자번호가 10자리 숫자로 구성되어 있어야 함
    if (bizNo.length !== 10 || !/^\d+$/.test(bizNo)) {
        feedback.style.color = 'red';
        feedback.textContent = '사업자번호는 10자리 숫자로 입력하세요.';
        return false;
    }

    // 특정 부적절한 번호를 체크하는 예제 (예: '0000000000'과 같은 번호)
    var forbiddenNumbers = ["0000000000"]; // 예시: 실제로는 비즈니스 규칙에 따라 수정
    if (forbiddenNumbers.includes(bizNo)) {
        feedback.style.color = 'red';
        feedback.textContent = '부적절한 사업자번호입니다.';
        return false;
    }

    feedback.style.color = 'green';
    feedback.textContent = '유효한 사업자번호입니다.';
    return true;
}

function checkDuplicateBizNo() {
    var bizNo = document.getElementById('biz_no').value;
    var feedback = document.getElementById('bizNo-feedback');

    if (!bizNo) {
        feedback.style.color = 'red';
        feedback.textContent = '사업자번호를 입력하세요.';
        return;
    }

    var url = '/api/biz/check-duplicate?biz_no=' + encodeURIComponent(bizNo);

    fetch(url)
        .then(response => response.json())
        .then(data => {
            if (data.exists) {
                feedback.style.color = 'red';
                feedback.textContent = "중복된 사업자번호입니다.";
                isBizNoChecked = false; // 중복된 번호인 경우 체크되지 않음
            } else {
                feedback.style.color = 'green';
                feedback.textContent = "사용 가능한 사업자번호입니다.";
                isBizNoChecked = true; // 사용 가능한 번호인 경우 체크됨
            }
        })
        .catch(error => {
            console.error('Fetch error:', error);
            feedback.textContent = "서버 오류가 발생했습니다.";
        });
}

function togglePasswordVisibility() {
    var passwordField = document.querySelector('input[name="biz_pw"]');
    var confirmPasswordField = document.querySelector('input[name="biz_pw2"]');
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
    document.querySelector('input[name="biz_pw"]').addEventListener('input', validatePassword);
    document.querySelector('input[name="biz_pw2"]').addEventListener('input', confirmPassword);
    document.querySelector('input[name="tel"]').addEventListener('input', validatePhoneNumber);
    document.querySelector('input[name="owner"]').addEventListener('input', validateOwner);
    document.querySelector('input[name="biz_name"]').addEventListener('input', validateNickname);
    document.querySelector('form').addEventListener('submit', function(event) {
        var isValid = validatePassword() && confirmPassword() && validatePhoneNumber() && validateOwner() && validateNickname() && validateBizNo();
        if (!isValid || !isBizNoChecked) {
            event.preventDefault();
            if (!isBizNoChecked) {
                document.getElementById('bizNo-feedback').textContent = '아이디 중복 확인을 해주세요.';
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
    <div class="biz_partner">
        <form action="/biz_partnerDB" method="post">
            회사이름 <input type="text" name="biz_name" required><br>
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
                <input type="hidden" id="email_domain_hidden" name="email_domain_hidden">
            </div>
            <!-- <button type="button">인증번호 발송</button><br> -->
            대표명 <input type="text" name="owner" required><br>
            <div id="owner-feedback" class="owner-feedback"></div>
            사업자 번호 <input type="text" id="biz_no" name="biz_no" required><br>
            <button type="button" onclick="if (validateBizNo()) { checkDuplicateBizNo() }">중복 확인</button><br>
            <div id="bizNo-feedback" class="bizNo-feedback"></div>
            비밀번호 <input type="password" name="biz_pw" placeholder="최소 8자, 대소문자, 숫자, 특수문자 포함" required><br>
            <div id="password-feedback" class="password-feedback"></div>
            비밀번호 확인 <input type="password" name="biz_pw2" placeholder="비밀번호 확인" required><br>
            <div id="confirm-password-feedback" class="password-feedback"></div>
            <span id="togglePassword" class="toggle-password" onclick="togglePasswordVisibility()">비밀번호 표시</span><br>
            휴대전화 번호 <input type="text" name="tel" placeholder="010-1234-5678" required><br>
            <div id="phone-feedback" class="phone-feedback"></div>
            <input type="hidden" name="authority" value="1"><br>
            <button type="submit">회원 가입</button>
        </form>
        <br>
        <a href="/b2b">뒤로가기</a>
    </div>
   </div>
   </section>
</body>
</html>
