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

.center {
    width: 100%;
    background-color: #FFF;
    padding: 0px 20px;
    border-radius: 8px;
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
    display: none;
    background-color: #F6F5F2;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 10px;
    margin-top: 10px;
}

.answer pre {
    white-space: pre-wrap; /* Handle text wrapping within pre */
    margin: 0; /* Remove default margins */
    padding: 0; /* Remove default padding */
}

.form-container {
    display: flex;
    flex-direction: column;
}

.form-container input[type="text"] {
    width: calc(100% - 22px); /* Adjust width to fit inside the container */
    margin-bottom: 20px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    margin-top:15px;
}

.form-container input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px;
    cursor: pointer;
    font-size: medium;
    margin-top:15px;
}

.form-container input[type="submit"]:hover {
    background-color: #0056b3;
    transition: background-color 0.3s ease;
}

.form-container textarea {
    height: 15vh;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

/* New styles for the add question button */
.add-question-container {
    display: flex;
    justify-content: flex-end; /* Align children to the right */
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

/* New styles for the delete button */
.delete-button {
	width:100%;
    background-color: #dc3545;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: medium;
    margin-top: 10px;
}

.delete-button:hover {
    background-color: #c82333;
    transition: background-color 0.3s ease;
}

.popup-overlay {
    display: none;
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.6);
    z-index: 998;
    pointer-events: none;
}

.popup-background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 999;
}

.popup-content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    max-width: 600px;
    width: 100%;
    position: relative;
}

.close-popup {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
    font-size: 24px;
}

</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function showPopup(content) {
    document.getElementById('popup-body').innerHTML = content;
    document.getElementById('popup-background').style.display = 'flex';
    document.getElementById('popup-overlay').style.display = 'block';
}

function closePopup() {
    document.getElementById('popup-background').style.display = 'none';
    document.getElementById('popup-overlay').style.display = 'none';
}

window.onload = function() {
    var msg = "${msg}";
    if (msg) {
        alert(msg);
    }

    document.querySelector('.add-question-button').addEventListener('click', function(event) {
        event.preventDefault();
        var formContent = `
            <form action="/sh/admin/insert_Q" method="get" class="form-container">
        		<p>공지사항 추가</p>
                <select name="category" style="margin-top:30px;">
                    <option value="공지사항">공지사항</option>
                </select>
                <input type="text" name="question" placeholder="제목" required>
                <textarea name="answer" placeholder="내용" required></textarea>
                <input type="hidden" name="status" value="0">
                <input type="submit" value="추가하기">
            </form>
        `;
        showPopup(formContent);
    });
}

function toggleAnswer(index) {
    var answer = document.getElementById("answer-" + index);
    var content = answer.innerHTML;

    if (answer.style.display === "none" || answer.style.display === "") {
        showPopup(content);
    } else {
        answer.style.display = "none";
    }
}
</script>
</head>
<body>

    <%@ include file="/WEB-INF/views/include/header_adm.jsp"%>

    <div class="content_section">
        <div class="content_wrap">
            <div class="center">
                <p id="center-title">공지사항 관리</p>
                <div class="add-question-container">
                    <a href="#" class="add-question-button">공지사항 추가</a>
                </div>

                <c:forEach var="faq" items="${faq}" varStatus="status">
                    <div class="faq">
                        <p class="question" onclick="toggleAnswer(${status.index})">[${faq.category}] ${faq.question}</p>
                        <div class="answer" id="answer-${status.index}">
                            <pre>&nbsp;${faq.answer}</pre>
                            <br>
                            <form action="update" method="get" class="form-container">
                                <select name="category">
                                    <option value="공지사항">공지사항</option>
                                </select>
                                <input type="hidden" name="status" value="0">
                                <input type="text" name="question" value="${faq.question}" placeholder="제목">
                                <input type="hidden" name="id" value="${faq.id}">
                                <textarea type="text" name="answer" placeholder="내용">${faq.answer}</textarea>
                                <input type="submit" value="수정">
                            </form>
                            <form action="delete" method="get">
                                <input type="hidden" id="id" name="id" value="${faq.id}">
                                <input type="submit" value="삭제" class="delete-button">
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- 팝업 오버레이 -->
    <div id="popup-overlay" class="popup-overlay"></div>

    <!-- 팝업 배경 -->
    <div id="popup-background" class="popup-background" style="display: none;">
        <div class="popup-content">
            <span class="close-popup" onclick="closePopup()">×</span>
            <div id="popup-body"></div>
        </div>
    </div>

</body>
</html>
	