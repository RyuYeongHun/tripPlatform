<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
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
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.content_zone1 {
	margin-top: 7rem;
	margin-bottom: 30px;
}

/* 큰 박스 스타일 */
.board-box {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border: 1px solid #ddd;
	padding: 1rem;
	border-radius: 5px;
	margin-bottom: 1rem;
	background-color: #f9f9f9;
}

.board-info {
	display: flex;
	flex-direction: column;
}

.board-meta {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.board-title {
	font-weight: bold;
	font-size: 1.2rem;
	color: #333;
	margin-bottom: 0.5rem;
}

.board-writer {
	font-size: 0.9rem;
	color: #777;
}

.board-stats {
	display: flex;
	flex-direction: column;
	text-align: right;
	font-size: 0.9rem;
	color: #777;
}

.board-stats span {
	margin-bottom: 5px;
}

.insert button {
	width: 20%;
	height: 40px;
	border-radius: 4px;
	background-color: #007bff;
	cursor: pointer;
	padding: 0.5rem;
	border: none;
	margin-top: 30px;
	margin-bottom: 5px;
}

.insert a {
	color: white;
}

.insert {
	display: flex;
	justify-content: space-between;
}

.left-wrap {
	display: flex;
}

.left-wrap p {
	color: #555;
}

.pagination {
	display: flex;
	justify-content: center;
	margin-top: 1.5rem;
}

.pagination a, .pagination span {
	margin: 0 5px;
	padding: 0.5rem 0.75rem;
	border: 1px solid #ddd;
	border-radius: 5px;
	color: #007bff;
	text-decoration: none;
}

.pagination .current {
	background-color: #007bff;
	color: white;
	border: 1px solid #007bff;
}

</style>
<script>
	window.onload = function() {
		var msg = "${msg}";
		if (msg) {
			alert(msg);
		}
	}
</script>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">

			<div class="insert">
				<div class="left-wrap">
					<h1>자유게시판</h1>
					<p>(${totalCount})</p>
				</div>
				<button>
					<a href="/freeboard/write">글쓰기</a>
				</button>
			</div>

			<!-- 게시물 목록 -->
			<c:forEach var="board" items="${boards}">
				<div class="board-box">
					<!-- 왼쪽: 제목과 작성자 -->
					<div class="board-info">
						<a href="/freeboard/view?id=${board.id}" class="board-title">${board.title}</a>
						<span class="board-writer">작성자: ${board.writer}</span>
					</div>

					<!-- 오른쪽: 조회수와 좋아요 -->
					<div class="board-stats">
						<span>조회수: ${board.views}</span> <span>좋아요: ${board.likes}</span>
					</div>
				</div>
			</c:forEach>

			<div class="pagination">
				<c:if test="${totalPages > 1}">
					<a href="?page=1">&laquo;</a>
					<c:forEach var="i" begin="1" end="${totalPages}">
						<c:choose>
							<c:when test="${i == currentPage}">
								<span class="current">${i}</span>
								<!-- 현재 페이지 강조 -->
							</c:when>
							<c:otherwise>
								<a href="?page=${i}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<a href="?page=${totalPages}">&raquo;</a>
				</c:if>
			</div>


		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>

</body>
</html>
