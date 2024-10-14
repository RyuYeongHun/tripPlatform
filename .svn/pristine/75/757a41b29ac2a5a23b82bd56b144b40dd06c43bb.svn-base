<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>공지사항(관리자)</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Jua&display=swap"
	rel="stylesheet">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

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
	padding: 0;
	list-style: none;
	margin: 0;
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
/* 스타일 동일하게 유지 */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.title {
	display: flex;
	justify-content: center;
	margin: 20px 0;
}

.main {
	display: flex;
	justify-content: center;
	width: 100%;
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
	font-family: 'Jua', sans-serif;
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
	font-family: 'Jua', sans-serif;
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
	font-family: 'Jua', sans-serif; /* Ensure 'Jua' font is applied */
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
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
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

.form-container textarea {
	height: 15vh;
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
</style>
<script>
	window.onload = function() {
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
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>


	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
				<div class="main">
		<div class="center">
			<p id="center-title">공지사항</p>
			<div class="add-question-container">
				<a href="/insert" class="add-question-button">공지사항 추가</a>
			</div>

			<c:forEach var="faq" items="${faq}" varStatus="status">
				<div class="faq">
					<p class="question" onclick="toggleAnswer(${status.index})">[${faq.category}]
						${faq.question}</p>
					<div class="answer" id="answer-${status.index}">
						<pre>&nbsp;${faq.answer}</pre>
						<br>
						<form action="update" method="get" class="form-container">
							<select name="category">
								<option value="공지사항">공지사항</option>
							</select> <input type="text" name="question" value="${faq.question}">
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
			</c:forEach>
		</div>
	</div>
			<!-- 첫번째 컨텐츠가 들어갑니다. -->

		</div>
	</section>


</body>
</html>
