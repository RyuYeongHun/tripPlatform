<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
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
	color: inherit;
}

img {
	display: block;
	max-width: 100%;
	height: auto;
}

ul, li {
	padding: 0;
	list-style: none;
	margin: 0;
}

/* 컨텐츠 zone */
.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	flex-direction: column;
	padding: 20px;
	background-color: #f9f9f9;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-bottom: 50px;
}

.content_zone1 {
	margin-top: 7rem;
}

/* 문의 제목 및 상태 스타일 */
.query-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #ffffff;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 15px;
	margin-bottom: 10px;
}

.query-title {
	font-size: 1.2rem;
	font-weight: bold;
	color: #007BFF;
}

.query-status {
	font-weight: bold;
	padding: 5px;
	border-radius: 5px;
}

.status-processing {
	color: #666; /* 파란색 */
}

.status-completed {
	color: #007BFF; /* 초록색 */
}

/* 답변 내용 스타일 */
.query-content {
	background-color: #ffffff;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 15px;
	margin-bottom: 20px;
}

.content_title {
	font-weight: bold;
	font-size: xx-large;
	margin-bottom: 30px;
}

.hidden {
	display: none;
}

.show {
	display: block;
}

.input-group {
	margin-top: 10px;
}
/* 버튼 스타일 */
.button-group {
	display: flex;
	gap: 10px; /* 버튼 간격 */
	margin-top:20px;
}

/* 버튼 스타일 */
button {
	background-color: #007BFF; /* 파란색 배경 */
	color: white; /* 흰색 텍스트 */
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	font-size: 1rem;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

/* 버튼 호버 효과 */
button:hover {
	background-color: #0056b3; /* 더 어두운 파란색 */
}

/* 삭제 버튼만 다른 색상 */
button.delete-btn {
	background-color: #dc3545; /* 빨간색 배경 */
}

button.delete-btn:hover {
	background-color: #c82333; /* 더 어두운 빨간색 */
}

</style>
<script>
	window.onload = function() {
		var msg = "${msg}";
		if (msg) {
			alert(msg);
		}
	}

	function toggleEditForm(id) {
		var form = document.getElementById('edit-form-' + id);
		if (form.style.display === 'none' || form.style.display === '') {
			form.style.display = 'block';
		} else {
			form.style.display = 'none';
		}
	}
</script>

</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="content_title">나의 문의사항</div>
			<c:forEach var="plus" items="${plus}">
				<c:if test="${plus.id == sessionScope.user_id}">
					<div class="query-header">
						<p class="query-title">${plus.content}</p>
						<p
							class="query-status 
							<c:choose>
								<c:when test="${plus.suc == '대기중'}">status-processing</c:when>
								<c:otherwise>status-completed</c:otherwise>
							</c:choose>
						">
							${plus.suc}</p>
					</div>
					<div class="query-content">
						<c:choose>
							<c:when test="${not empty plus.content_answer}">
								<p>
									<strong>답변:</strong> ${plus.content_answer}
								</p>

							</c:when>
							<c:otherwise>
								<strong>답변 대기중</strong>
								<br>
								<div class="button-group">
									<button class="edit-btn" onclick="toggleEditForm('${plus.id}')">수정하기</button>

									<!-- 수정 폼: 기본적으로 숨김 -->
									<form id="edit-form-${plus.id}" style="display: none;"
										action="update_user" method="post">
										<input type="hidden" name="id" value="${plus.id}"> <input
											type="text" name="content"> <input type="hidden"
											name="query_id" value="${plus.query_id}">
										<button class="edit-btn" type="submit">수정</button>
									</form>


									<!-- 삭제 폼 -->
									<form action="delete_user" method="post"
										style="display: inline;">
										<input type="hidden" name="query_id" value="${plus.query_id}">
										<input type="hidden" name="id" value="${plus.id}">
										<button class="delete-btn" type="submit">삭제하기</button>
									</form>
								</div>

							</c:otherwise>
						</c:choose>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>

</body>
</html>
