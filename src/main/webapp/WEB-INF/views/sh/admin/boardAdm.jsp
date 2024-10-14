<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

/*ALL*/
* {
   margin: 0;
   font-family: "Noto Sans KR", sans-serif;
}

a {
   text-decoration: none;
}

img {
   display: block;
}

ul, li {
   list-style: none;
   margin: 0;
}

.content_section {
   width: calc(100% - 250px); /* 사이드바 너비만큼 공간 확보 */
   margin-top: 4rem; /* 헤더 높이만큼 상단 여백 확보 */
   margin-left: 250px; /* 사이드바 너비만큼 왼쪽 여백 확보 */
}

.content_wrap {
   padding: 50px 100px;
}

.page_title {
   margin-bottom: 20px;
}

.page_sub {
   margin-bottom: 30px;
}

.faq {
   border: 1px solid #ddd;
   background-color: white;
   color: rgba(0, 123, 255, 0.8);
   border-radius: 8px;
   margin-top: 15px;
   padding: 10px;
   display: flex;
   flex-direction: column;
   box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.faq p {
   margin: 0;
   padding: 10px;
   font-size: large;
   line-height: 1.5;
}

.faq p.question {
   cursor: pointer;
   font-size: 18px;
}

.faq p:hover {
   border-radius: 8px;
   background-color: rgba(0, 123, 255, 0.8);
   color: white;
   transform: translateX(5px);
   cursor: pointer;
   transition: 1s;
}

#center-title {
   text-align: center;
   font-size: xx-large;
   margin-bottom: 20px;
}

.answer {
    display: none; /* 기본적으로 숨깁니다 */
    background-color: #F6F5F2;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 10px;
    margin-top: 10px;
    max-width: 100%; /* 부모 요소 너비를 넘지 않도록 설정 */
    box-sizing: border-box; /* padding과 border를 너비에 포함시킴 */
}

.answer p {
    white-space: pre-wrap; /* 줄 바꿈과 공백을 유지하되, 자동 줄 바꿈을 적용 */
    word-wrap: break-word; /* 긴 단어를 줄 바꿈하도록 설정 */
    overflow-wrap: break-word; /* 긴 단어를 줄 바꿈하도록 설정 */
    margin: 0;
    padding: 0;
    max-width: 100%; /* 부모 요소 너비를 넘지 않도록 설정 */
    box-sizing: border-box; /* padding과 border를 너비에 포함시킴 */
}

.form-container {
   display: flex;
   flex-direction: column;
}

.form-container input[type="text"] {
   width: calc(100% - 22px);
   margin-bottom: 10px;
   margin-top:20px;
   padding: 10px;
   border: 1px solid #ddd;
   border-radius: 4px;
   margin-bottom:15px;
}

.form-container input[type="submit"] {
   background-color: #007BFF;
   color: #fff;
   border: none;
   border-radius: 4px;
   padding: 10px;
   cursor: pointer;
   font-size: medium;
}

.form-container input[type="submit"]:hover {
   background-color: #0056b3;
   transition: background-color 0.3s ease;
}

.form-container select {
   margin-top:15px;
}

.form-container textarea {
   height: 40vh;
   margin-bottom:15px;
}

.add-question-container {
   display: flex;
   justify-content: flex-end;
   margin-bottom: 20px;
}

.add-question-button {
   background-color: #28a745;
   color: #fff;
   padding: 10px 20px;
   border: none;
   border-radius: 4px;
   font-size: medium;
   cursor: pointer;
   text-decoration: none;
   display: inline-block;
}

.add-question-button:hover {
   background-color: #218838;
   transition: background-color 0.3s ease;
}

.delete-button {
   background-color: #dc3545;
   color: #fff;
   padding: 10px;
   border: none;
   border-radius: 4px;
   cursor: pointer;
   font-size: medium;
   margin-top: 10px;
   width:100%;
}

.delete-button:hover {
   background-color: #c82333;
   transition: background-color 0.3s ease;
}

.nav-buttons-container {
   display: flex;
   justify-content: center;
   margin-bottom: 20px;
}

.nav-button {
   background-color: white;
   color: #007BFF;
   padding: 10px 20px;
   border: 1px solid #007BFF;
   border-radius: 4px;
   font-size: medium;
   cursor: pointer;
   text-decoration: none;
   display: inline-block;
   margin: 0 5px;
}

.nav-button:hover {
   background-color: #007BFF;
   color: white;
   transition: background-color 0.3s ease;
}

.nav-button.active {
   background-color: #007BFF;
   color: white;
}

.section-content {
   display: none;
}

/* 추가된 부분 */
.popup {
    display: none; /* 기본적으로 숨깁니다 */
    position: fixed;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    width: 80%;
    max-width: 600px;
    background: white;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    z-index: 1000;
    opacity: 0; /* 기본적으로 투명하게 시작 */
    transition: opacity 0.3s ease, transform 0.3s ease;
    transform: translate(-50%, -60%) scale(0.9); /* 팝업 초기 상태 설정 */
}

.popup-show {
    display: block; /* 팝업 표시 */
    opacity: 1; /* 팝업 불투명하게 */
    transform: translate(-50%, -50%) scale(1); /* 팝업 확대 */
}

.popup-overlay {
    display: none; /* 기본적으로 숨깁니다 */
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.6);
    z-index: 999;
}

.popup-close {
    display: inline-block;
    background: #dc3545;
    color: white;
    border: none;
    border-radius: 50%;
    padding: 10px;
    cursor: pointer;
    font-size: 16px;
    position: absolute;
    top: 10px;
    right: 10px;
    transition: background-color 0.3s ease;
}

.popup-close:hover {
    background: #c82333;
}
.close-popup {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
    font-size: 24px;
}

.popup-content {
    padding-top: 20px; /* 닫기 버튼과 콘텐츠 간의 여백 추가 */
}

</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
window.onload = function () {
    var msg = "${msg}";
    if (msg) {
        alert(msg);
    }
}

function toggleAnswer(index) {
    var answer = document.getElementById("answer-" + index);
    if (answer.style.display === "none" || answer.style.display === "") {
        answer.style.display = "block";
    } else {
        answer.style.display = "none";
    }
}

function showSection(sectionId) {
    // 모든 섹션을 숨깁니다
    document.querySelectorAll('.section-content').forEach(function (section) {
        section.style.display = 'none';
    });
    
    // 모든 버튼에서 active 클래스를 제거합니다
    document.querySelectorAll('.nav-button').forEach(function (button) {
        button.classList.remove('active');
    });
    
    // 섹션을 표시합니다
    var section = document.getElementById(sectionId);
    if (section) {
        section.style.display = 'block';
    } else {
        console.error(`Section with ID ${sectionId} not found.`);
    }
}

document.addEventListener('DOMContentLoaded', function () {
    showSection('user-faq-section'); // 초기 로딩 시 이용자 FAQ 섹션을 보이게 함

    document.querySelectorAll('.nav-button').forEach(function (button) {
        button.addEventListener('click', function () {
            var sectionId = button.getAttribute('data-section');
            showSection(sectionId);
            
            // 모든 버튼에서 active 클래스를 제거하고 클릭한 버튼에 추가
            document.querySelectorAll('.nav-button').forEach(function (btn) {
                btn.classList.remove('active');
            });
            button.classList.add('active');
        });
    });
});

function openPopup(content) {
    document.getElementById('popup-content').innerHTML = content;
    document.getElementById('popup').classList.add('popup-show');
    document.getElementById('popup-overlay').style.display = 'block';
}

function closePopup() {
    document.getElementById('popup').classList.remove('popup-show');
    document.getElementById('popup-overlay').style.display = 'none';
}

document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.question').forEach(function (element) {
        element.addEventListener('click', function () {
            var index = this.dataset.index;
            var answerContent = document.getElementById('answer-' + index).innerHTML;
            openPopup(answerContent);
        });
    });

    // 질문 추가 버튼 클릭 시 팝업 열기
    document.querySelectorAll('.add-question-button').forEach(function (button) {
        button.addEventListener('click', function (event) {
            event.preventDefault();
            var isUserQuestion = button.closest('#user-faq-section') !== null;
            var formContent = `
                <form action="/sh/admin/insert_Q" method="get" class="form-container">
            		<p>FAQ추가</p>
                    <select name="category">
                        <option value="이용문의">이용문의</option>
                        <option value="결제/영수증">결제/영수증</option>
                        <option value="볼거리">볼거리</option>
                    </select>
                    <input type="text" name="question" placeholder="제목">
                    <input type="text" name="answer" placeholder="내용">
                    <input type="text" name="status" placeholder="이용문의 추가시 [유저FAQ:0 사업자FAQ:1]">
                    <input type="submit" value="추가하기">
                </form>
            `;
            openPopup(formContent);
        });
    });
});
</script>
</head>
<body>

    <%@ include file="/WEB-INF/views/include/header_adm.jsp"%>

    <div class="content_section">
        <div class="content_wrap">
            <p id="center-title">FAQ 관리</p>

            <div class="nav-buttons-container">
                <button class="nav-button" data-section="user-faq-section">이용자 FAQ</button>
                <button class="nav-button" data-section="business-faq-section">사업자 FAQ</button>
            </div>

            <div id="user-faq-section" class="section-content">
                <div class="add-question-container">
                    <a href="#" class="add-question-button">이용자 질문 추가</a>
                </div>
                <c:forEach var="faq" items="${faq}" varStatus="status">
                    <c:if test="${faq.status == '0'}">
                        <div class="faq">
                            <p class="question" data-index="${status.index}">[${faq.category}] ${faq.question}</p>
                            <div class="answer" id="answer-${status.index}">
                                
                                <form action="update" method="get" class="form-container">
                                	<p>이용자FAQ</p>
                                    <select name="category">
                                        <option value="이용문의">이용문의</option>
                                        <option value="결제/영수증">결제/영수증</option>
                                        <option value="볼거리">볼거리</option>
                                    </select>
                                    <select name="status">
                                        <option value="0">0(유저)</option>
                                        <option value="1">1(사업자)</option>
                                    </select>
                                    <input type="text" name="question" value="${faq.question}">
                                    <input type="hidden" name="id" value="${faq.id}">
                                    <textarea type="text" name="answer">${faq.answer}</textarea>
                                    <input type="submit" value="수정">
                                </form>
                                <form action="delete" method="get">
                                    <input type="hidden" id="id" name="id" value="${faq.id}">
                                    <input type="submit" value="삭제" class="delete-button">
                                </form>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>

            <div id="business-faq-section" class="section-content">
                <div class="add-question-container">
                    <a href="#" class="add-question-button">사업자 질문 추가</a>
                </div>
                <c:forEach var="faq" items="${faq}" varStatus="status">
                    <c:if test="${faq.status == '1'}">
                        <div class="faq">
                            <p class="question" data-index="${status.index}">[사업자] ${faq.question}</p>
                            <div class="answer" id="answer-${status.index}">
                                
                                <form action="update" method="get" class="form-container">
                                	<p>사업자FAQ</p>
                                    <select name="category">
                                        <option value="이용문의">이용문의</option>
                                    </select>
                                    <select name="status">
                                        <option value="1">1(사업자)</option>
                                        <option value="0">0(유저)</option>
                                    </select>
                                    <input type="text" name="question" value="${faq.question}">
                                    <input type="hidden" name="id" value="${faq.id}">
                                    <textarea type="text" name="answer">${faq.answer}</textarea>
                                    <input type="submit" value="수정">
                                </form>
                                <form action="delete" method="get">
                                    <input type="hidden" id="id" name="id" value="${faq.id}">
                                    <input type="submit" value="삭제" class="delete-button">
                                </form>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- 팝업창 HTML 추가 -->
     <div id="popup-overlay" class="popup-overlay"></div>
    <div id="popup" class="popup">
        <span class="close-popup" onclick="closePopup()">×</span>
        <div id="popup-content"></div>
    </div>

</body>
</html>
