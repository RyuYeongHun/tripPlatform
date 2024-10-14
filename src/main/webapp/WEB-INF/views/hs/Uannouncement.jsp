<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>공지사항</title>
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

.faq a {
	margin: 0;
	padding: 10px;
	font-size: large;
	line-height: 1.5;
	color: rgba(0, 123, 255, 0.8);
	font-family: 'Jua', sans-serif;
}

.faq a:visited {
	color: rgba(0, 123, 255, 0.8);
}

.faq a.question {
	cursor: pointer;
	font-size: 18px;
	font-family: 'Jua', sans-serif;
}

.faq a:hover {
	border-radius: 8px;
	background-color: rgba(0, 123, 255, 0.8);
	color: white;
	transform: translateX(5px);
	cursor: pointer;
	transition: 1s;
}

#center-title {
	font-family: 'Jua', sans-serif;
	text-align: left;
	font-size: xx-large;
	margin-bottom: 10px;
}

#title-sub{
	font-family: 'Jua', sans-serif;
	text-align: left;
	font-size: large;
	color:rgb(153 153 153);
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
	color: white;;
	transition: background-color 0.3s ease;
}

.nav-button.active {
	background-color: #007BFF;
	color: white;
}

/* 페이지네이션 스타일 추가 */
.pagination {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.pagination a {
	text-decoration: none;
	color: #007BFF;
	padding: 8px 12px;
	margin: 0 4px;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.pagination a:hover {
	background-color: #007BFF;
	color: white;
	transition: background-color 0.3s ease;
}

.pagination .current-page {
	font-weight: bold;
	color: white;
	background-color: #007BFF;
	padding: 8px 12px;
	margin: 0 4px;
	border-radius: 4px;
	border: 1px solid #007BFF;
}
</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="main">
				<div class="center">
					<p id="center-title">공지사항</p>
					<p id="title-sub">방방곡곡의 업데이트 정보 등 다양한 소식을 알려드립니다.</p>

					<c:forEach var="faq" items="${faq}" varStatus="status">
						<div class="faq" onclick="toggleAnswer(${status.index})">

							<a href="view_announcement?id=${faq.id}">[${faq.category}]
								${faq.question }</a>
						</div>

					</c:forEach>

					<!-- 페이지네이션 시작 -->
					<div class="pagination">
						<c:forEach var="i" begin="1" end="${totalPages}">
							<c:choose>
								<c:when test="${i == currentPage}">
									<span class="current-page">${i}</span>
								</c:when>
								<c:otherwise>
									<a href="?page=${i}&size=${size}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					<!-- 페이지네이션 끝 -->


				</div>
			</div>
			<!-- 첫번째 컨텐츠가 들어갑니다. -->

		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>

	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>

	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>

</body>
</html>
