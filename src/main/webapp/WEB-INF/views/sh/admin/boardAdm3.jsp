<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의함</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

/*ALL*/
* {
	margin: 0;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
	color: inherit;
}

img {
	display: block;
	max-width: 100%;
	height: auto;
}

ul, li {
	list-style: none;
	margin: 0;
	padding: 0;
}

.content_section {
	width: calc(100% - 250px); /* 사이드바 너비만큼 공간 확보 */
	margin-top: 4rem; /* 헤더 높이만큼 상단 여백 확보 */
	margin-left: 250px; /* 사이드바 너비만큼 왼쪽 여백 확보 */
}

.content_wrap {
	padding: 50px 30px; /* 여백 조정 */
	background: #f9f9f9; /* 배경 색상 추가 */
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.page_title {
	font-size: 2rem;
	color: #333;
	margin-bottom: 20px;
	text-align: center;
}

.page_sub {
	margin-bottom: 30px;
	text-align: center;
	color: #666;
}

.content-box {
	background-color: white;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.container {
	margin-bottom: 15px;
	cursor: pointer; /* 클릭 가능한 느낌 추가 */
}

.title-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1px solid #ddd;
	padding: 10px;
	background-color: #f1f1f1;
	border-radius: 8px;
}

.title {
	font-size: 1.2rem;
	font-weight: bold;
	color: #007BFF;
}

.suc {
	color: #666;
}

.content {
	display: none; /* 기본적으로 숨김 */
	padding: 10px;
	margin-top: 10px;
	background-color: #f9f9f9;
	border-radius: 8px;
}

input[type=text] {
	width: 100%;
	height: 200px;
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

	$(document).ready(function() {
		$('.title-container').click(function() {
			$(this).next('.content').slideToggle(); // 클릭 시 내용 표시/숨김
		});
	});
</script>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header_adm.jsp"%>

	<div class="content_section">
		<div class="content_wrap">
			<p class="page_title">문의함</p>

			<div class="content-box">
				<c:forEach var="plus" items="${plus}" varStatus="status">
					<div class="container">
						<div class="title-container">
							<p class="title">${plus.id}님의문의사항</p>
							<p class="suc">${plus.suc}</p>
						</div>
						<div class="content">
							<p>${plus.content}</p>
							<form action="/update" method="post">
								<!-- POST 메서드를 사용 -->
								<input type="hidden" name="id" value="${plus.id}"> <input
									type="hidden" name="content" value="${plus.content}"> <input
									type="text" name="content_answer"
									value="${plus.content_answer}"> <input type="hidden"
									name="suc" value="처리완료">
								<button type="submit">답변하기</button>
							</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>
