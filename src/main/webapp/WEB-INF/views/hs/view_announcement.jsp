<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>공지사항 상세</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Noto Sans KR", sans-serif;
}

body {
	background-color: #f4f4f4;
	color: #333;
}

.content_zone {
	display: flex;
	justify-content: center;
	padding: 20px;
	
}

.content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	padding-top: 3rem;
}



#center-title {
	font-weight: bold;
	text-align: center;
	font-size: 2rem;
	margin-bottom: 20px;
}

.faq {
	border: 1px solid #ddd;
	background-color: #fff;
	border-radius: 8px;
	padding: 15px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.faq p.question {
	font-size: 1.2rem;
	font-weight: bold;
	margin-bottom: 10px;
	color: #007BFF;
}

.faq .answer pre {
	white-space: pre-wrap;
	word-break: break-word;
	padding: 10px;
	border-radius: 4px;
	margin: 10px 0;
	background-color: white;
}

.actions {
	display: flex;
	justify-content: flex-end;
	gap: 10px;
}

.actions a, .actions .delete-button {
	background-color: #007BFF;
	color: white;
	padding: 10px 20px;
	border-radius: 4px;
	text-decoration: none;
	font-size: 0.9rem;
	cursor: pointer;
	border: none;
	transition: background-color 0.3s ease;
}

.actions a:hover, .actions .delete-button:hover {
	background-color: #0056b3;
}

.delete-button {
	background-color: #dc3545;
	color: white;
	border: none;
}

.delete-button:hover {
	background-color: #c82333;
}

.navigation {
	margin-top: 20px;
	display : flex;
	justify-content : space-between;
}

.navigation a {
	display: flex;
	align-items: center;
	padding: 10px 20px;
	border-radius: 4px;
	background-color: white;
	color: #007BFF;
	text-decoration: none;
	transition: background-color 0.3s ease;
	font-size: 1rem;
	font-weight: bold;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	margin-top: 10px;
}
.navigation a:hover{
	background-color: #007BFF;
	color : white;;
	transition: background-color 0.7s ease;
}

.navigation p {
	margin: 0;
}

hr {
	margin-bottom: 10px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone">
		<div class="content_zone_wrap">
			<div class="main">
				<div class="center">
					<p id="center-title">${faq.category}</p>

					<div class="faq">
						<p class="question">[${faq.category}] ${faq.question}</p>
						<hr>
						<div class="answer">
							<pre>${faq.answer}</pre>
						</div>
						<div class="actions">
							<a href="Uannouncement" class="nav-button">목록으로 돌아가기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="navigation">
				<c:if test="${not empty previous}">
					<a href="view_announcement?id=${previous.id}" class="previous">
						<p>이전 글 : [${previous.category}] ${previous.question}</p>
					</a>
				</c:if>
				
				<c:if test="${not empty next}">
					<a href="view_announcement?id=${next.id}" class="next">
						<p>다음 글 : [${next.category}] ${next.question}</p>
					</a>
				</c:if>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>
</body>
</html>