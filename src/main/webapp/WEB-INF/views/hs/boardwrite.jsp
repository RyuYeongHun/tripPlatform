<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

/*컨텐츠 section*/
.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	
}

/*초기 잡혀있는 헤더 높이 때문에 첫 컨텐츠에는 margin-top을 주고 시작함.*/
.content_zone1 {
	margin-top: 7rem;
}

.form-section {
	margin-top: 2rem;
}

.form-section form {
	display: flex;
	flex-direction: column;
}

.form-section input, .form-section textarea {
	margin-bottom: 1rem;
	padding: 0.5rem;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.form-section button {
	padding: 0.5rem;
	border: none;
	background-color: #007bff;
	color: white;
	border-radius: 4px;
	cursor: pointer;
	height:50px;
	margin-bottom:20px;
}

.form-section button:hover {
	background-color: #0056b3;
}
</style>
<script>
	
</script>
</head>


<body>


	<%@ include file="/WEB-INF/views/include/header.jsp"%>


	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<!-- 게시물 작성 폼 -->
			<div class="form-section">
				<h2>새 게시물 작성</h2>
				<form action="/addBoard" method="post">
					<input type="text" name="writer" value="${sessionScope.user_id}" required readonly>				
					<input type="text" name="title" placeholder="제목" required />
					<textarea name="content" rows="5" placeholder="내용" required></textarea>
					<input type="hidden" name="views" value="0">
					<input type="hidden" name="likes" value="0">
					<!-- 작성자 입력 필드 제거 (세션에서 설정됨) -->
					<button type="submit">등록</button>
				</form>
			</div>

			<!-- 첫번째 컨텐츠가 들어갑니다. -->

		</div>
	</section>

	<!-- <section class="content_zone content_zone2">
		<div class="content_zone_wrap">
		
			두번째 컨텐츠가 들어갑니다.
		
		</div>
	</section>
	
	<section class="content_zone content_zone3">
		<div class="content_zone_wrap">
					
			세번째 컨텐츠가 들어갑니다.
		
		</div>
	</section>
	
	<section class="content_zone content_zone4">
		<div class="content_zone_wrap">
					
			네번째 컨텐츠가 들어갑니다.
		
		</div>
	</section> -->


	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>

	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>

	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>


</body>
</html>