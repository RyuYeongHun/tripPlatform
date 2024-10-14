<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>사업자 FAQ게시판</title>
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
	color : rgba(0,123,255,0.8);
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
	background-color: rgba(0,123,255,0.8);
	color : white;
	transform: translateX(5px);
	cursor: pointer;
	transition: 1s;
}

#center-title {
	font-family: 'Jua', sans-serif;
	text-align: left;
	font-size: xx-large;
}

#title-sub {
	font-family: 'Jua', sans-serif;
	text-align: left;
	font-size: large;
	color:rgb(153 153 153);
}

#center-subtitle{
	font-family:'Jua',sans-serif;
	text-align:left;
	font-size:20px;
	margin-bottom:10px;
	margin-top:30px;
}

.nav-buttons-container {
	display: flex;
	justify-content: left;
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
	color : white;;
	transition: background-color 0.3s ease;
}

.nav-button.active {
	background-color: #007BFF;
	color : white;
}

.answer {
	display: none;
	background-color: #F6F5F2;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 10px;
	margin-top: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.answer pre {
	
	white-space: pre-wrap;
	margin: 0;
	padding: 0;
	font-size: 16px;
}


</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		// 초기 설정: 전체보기 섹션만 표시
		$('.section-content').hide();
		$('#all-section').show();
		$('.nav-button[data-section="all-section"]').addClass('active');

		// faq 클릭 시 답변 토글
		$(document).on('click', '.faq', function() {
			$(this).next('.answer').toggle();
		});

		// 탭 버튼 클릭 시 섹션 전환
		$('.nav-button').on('click', function() {
			// 모든 섹션 숨기기
			$('.section-content').hide();

			// 클릭한 버튼에 해당하는 섹션만 보이기
			var sectionId = $(this).data('section');
			$('#' + sectionId).show();

			// 모든 버튼에서 active 클래스 제거
			$('.nav-button').removeClass('active');

			// 클릭된 버튼에 active 클래스 추가
			$(this).addClass('active');
		});
	});
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>


	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="main">
				<div class="center">
					<p id="center-title">고객센터</p>
					<p id="title-sub">사업자 고객센터입니다. 어떤 것이 궁금하신가요?</p>
					
					<p id="center-subtitle">자주 묻는 질문</p>
					
					<div class="nav-buttons-container">
						<button class="nav-button" data-section="all-section">전체보기</button>
						<button class="nav-button" data-section="first-section">이용문의</button>
					</div>

					<!-- 전체보기 섹션 -->
					<div id="all-section" class="section-content">
						<c:forEach var="faq" items="${faq}" varStatus="status">
							<div class="faq" data-index="all-${status.index}">
								<p class="question">[${faq.category}] ${faq.question }</p>
							</div>
							<div class="answer" id="answer-all-${status.index}">
								<pre>A.&nbsp;${faq.answer }</pre>
							</div>
						</c:forEach>
					</div>

					<!-- 이용문의 섹션 -->
					<div id="first-section" class="section-content">
						<c:forEach var="faq" items="${faq}" varStatus="status">
							<c:if test="${faq.category == '이용문의'}">
								<div class="faq" data-index="first-${status.index}">
									<p class="question">[${faq.category}] ${faq.question }</p>
								</div>
								<div class="answer" id="answer-first-${status.index}">
									<pre>A.&nbsp;${faq.answer }</pre>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<!-- 결제/영수증 섹션 -->
					

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
