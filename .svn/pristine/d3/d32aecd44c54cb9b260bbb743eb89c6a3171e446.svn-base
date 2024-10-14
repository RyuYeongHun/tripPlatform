<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>질문 추가</title>
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

.main {
	display: flex;
	justify-content: center;
	width: 100%;
}

.center {
	width: 70%;
	background-color: #FFF;
	border: 1px solid #ddd;
	padding: 20px;
	border-radius: 8px; /* Rounded corners for better aesthetics */
}



#center-title {
	text-align: center;
	font-size: xx-large;
	margin-bottom: 20px;
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


</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>


	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="main">
		<div class="center">
			<form action="insert_Q" method="get">
				<select name="category">
					<option value="공지사항">공지사항</option>
					<option value="이용문의">이용문의</option>
					<option value="결제/영수증">결제/영수증</option>
					<option value="볼거리">볼거리</option>
				</select>
				<input type="text" name = "question" placeholder="제목">
				<input type="text" name = "answer" placeholder="내용">
				<input type="text" name = "status"  placeholder="이용문의 추가시 [유저:0 사업자:1]">
				<input type="submit" value="추가하기">
			</form>
		</div>
	</div>
			<!-- 첫번째 컨텐츠가 들어갑니다. -->
						
		</div>
	</section>
	
</body>
</html>
