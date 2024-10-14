<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board.title}</title>
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
}

img {
	display: block;
}

ul, li {
	padding: 0;
	list-style: none;
	margin: 0;
}

.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	margin-top: 7rem;
}

.post-title input[type=text] {
	margin-bottom: 1rem;
	width: 100%;
	height: 30px;
}

.post-meta {
	color: gray;
	font-size: 0.9rem;
	margin-bottom: 1rem;
}

.post-content {
	margin-top: 1rem;
}

.post-content input[type=text] {
	width: 100%;
	height: 150px;
}

.button-group {
	margin-top: 20px;
	display: flex;
	justify-content: space-between;
}

.button-group a {
	padding: 0.5rem;
	border: none;
	background-color: #007bff;
	color: white;
	border-radius: 4px;
	cursor: pointer;
	font-size:14px;
	font-family : "Noto Sans KR", sans-serif;
}

input[type=submit] {
	padding: 0.5rem;
	border: none;
	background-color: #007bff;
	color: white;
	border-radius: 4px;
	cursor: pointer;
	font-size:14px;
}

.button-group button:hover {
	background-color: #0056b3;
}
.left-wrap{
	display:flex;
	justify-content:space-between;
	align-items:baseline;
	margin-bottom:15px;
}
input[type=text]{
	box-sizing:border-box;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone">
		<div class="content_zone_wrap">
			<div class="form-container">
				<form action="/freeboardedit" method="post">
					<div class="post-title">
						<p>제목</p>
						<input type="text" name="title" value="${board.title }" required>
					</div>
					<hr>
					<div class="post-content">
						<p>내용</p>
						<input type="text" name="content" value="${board.content}"
							required>
					</div>
					<div class="left-wrap">
						<div class="button-group">
							<a href="/freeboard/view?id=${board.id}">돌아가기</a>
						</div>
						<input type="hidden" name="writer"
							value="${sessionScope.user_id }"> <input type="hidden"
							name="is_Deleted" value="N"> <input type="hidden"
							name="id" value="${board.id}"> <input type="submit"
							value="수정하기">
					</div>
				</form>

			</div>
			<div class="post-meta">작성자: ${board.writer} | 작성일:
				${board.created_At.toString()} | 조회수: ${board.views} | 좋아요:
				${board.likes}</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>
</body>
</html>
