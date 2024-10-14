<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

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

/*초기 잡혀있는 헤더 높이 때문에 첫 컨텐츠에는 margin-top을 주고 시작함. */
.content_zone1 {
	margin-top: 7rem;
}

.content-box {
	width: 100%;
}

.content-box #title {
	font-size: xx-large;
	font-weight : bold;
}

.content-box p {
	text-align: left;
	margin-bottom: 20px;
}

form dl {
	margin-bottom: 1rem;
}

form dt {
	font-weight: bold;
	margin-bottom: 0.5rem;
}

form dd {
	margin-bottom: 1rem;
}

form input[type="text"] {
	width: 100%;
	padding: 0.5rem;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

form input[type="submit"] {
	padding: 0.7rem 1.5rem;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-bottom:40px;
}

form input[type="submit"]:hover {
	background-color: #45a049;
}
#cont{
	height : 300px;
	text-align:center;
}

</style>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="content-box">
				<p id="title">문의하기</p>
				<p>다양한 문의 사항을 남겨주세요.</p>

				<form action="/submitInquiry" method="get">
					<dl>
						<dt>사용자 ID</dt>
						<dd>
							<!-- 세션에서 가져온 사용자 ID를 미리 채워줍니다. -->
							<input type="text" name="id" value="${sessionScope.user_id}" readonly>
						</dd>
						
						<dt>문의내용</dt>
						<dd><input id="cont" type="text" name="content" placeholder="문의내용을 입력하세요"></dd>
					</dl>
					
					<input type="submit" value="문의하기">
				</form>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>
</body>
</html>
