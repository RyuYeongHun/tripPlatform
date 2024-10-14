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

.sitemap_container {
	z-index: 500;
	position: fixed;
	top: 0;
	width: 100%;
	display: flex;
	justify-content: center;
}

.sitemap {
	display: none;
	width: 100%;
	max-width: 57rem;
	height: 100vh;
	z-index: 99;
	transition: all 0.3s ease;
	position: relative;
}

.sitemap .bg_black {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 100;
	background-color: rgba(0, 0, 0, 0.3);
}

.sitemap .sitemap_contents {
	width: 100%;
	height: 100%;
	max-width: 400px;
	background-color: #fff;
	z-index: 101;
	position: relative;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px 0 0 10px;
	overflow: hidden;
}

.sitemap .sitemap_contents .sitemap_title {
	text-align: center;
	padding: 1.5rem 0;
	color: #007bff;
	font-weight: bold;
	font-size: 1.5rem;
	border-bottom: 1px solid #eee;
}

.sitemap .sitemap_contents .sitemap_menu {
	margin: 20px 10px 0;
}

.sitemap .sitemap_contents .sitemap_menu li {
	padding: 10px 0;
}

.sitemap .sitemap_contents .sitemap_menu li a {
	display: block;
	font-weight: 500;
	padding: 0.75rem 1rem;
	color: #007bff;
	border-radius: 5px;
	transition: background-color 0.3s ease, color 0.3s ease;
}

.sitemap .sitemap_contents .sitemap_menu li a:hover {
	background-color: #007bff;
	color: white;
}

.sitemap .sitemap_contents .sitemap_banner {
	width: 100%;
	display: flex;
	justify-content: center;
	margin-top: 5px;
}

.sitemap .sitemap_contents .sitemap_banner .banner_bg {
	width: 100%;
	max-width: 360px;
	height: 200px;
	border-radius: 10px;
	background-image: url(${pageContext.request.contextPath}/resources/img/banner_img.jfif);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.sitemap .sitemap_contents .sitemap_bottom {
	width: 100%;
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.sitemap .sitemap_contents .sitemap_bottom .logout {
	width: 100%;
	max-width: 370px;
	text-align: right;
}

.sitemap .sitemap_contents .sitemap_bottom .logout a {
	color: #007bff;
	font-size: 14px;
}

.sitemap .sitemap_contents .sitemap_bottom .login {
	width: 100%;
	max-width: 370px;
	text-align: right;
}

.sitemap .sitemap_contents .sitemap_bottom .login a {
	color: #007bff;
	font-size: 14px;
}

.sitemap.active {
	display: block;
	z-index: 150;
}

.sitemap.active a {
	color: #333;
}

.close-btn {
	position: absolute;
	top: 30px;
	left: 20px;
	color: #007bff;
	padding: 0;
	background: none;
	border: none;
	font-weight: 500;
	cursor: pointer;
}

.close-btn span {
	font-size: 28px;
}
</style>
<script>

</script>
</head>


<body>

	<div class="sitemap_container">
		<div class="sitemap" id="sitemap">
			<div class="bg_black" onclick="closeSitemap()"></div>
			<div class="sitemap_contents">
				<button class="close-btn" onclick="closeSitemap()">
					<span class="material-symbols-outlined"> close </span>
				</button>
				<div class="sitemap_title">카테고리</div>
				<div class="sitemap_menu">
					<ul>
						<li><a href="/mw/bolgguriMain">볼거리</a></li>
						<li><a href="#">놀거리</a></li>
						<li><a href="#">먹거리</a></li>
						<li><a href="#">숙박업</a></li>
						<li><a href="/sh/user/referenceAi">여행추천 AI</a></li>
						<li><a href="/nearBolgguri">내 주변 볼거리</a></li>
						<li><a href="/kakao_car">경로 볼거리</a></li>
						<li><a href="/UNoticeBoard">고객센터</a></li>
					</ul>
				</div>
				<div class="sitemap_banner">
					<div class="banner_bg"></div>
				</div>
				<div class="sitemap_bottom">
					<c:choose>
						<c:when test="${not empty sessionScope.user_id}">
							<!-- 세션이 있을 때: 로그아웃 링크 표시 -->
							<div class="logout">
								<a href="/logout">로그아웃</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 세션이 없을 때: 로그인 링크 표시 -->
							<div class="login">
								<a href="/js/login">로그인</a>
							</div>
						</c:otherwise>
					</c:choose>
					</div>
				</div>
			</div>
		</div>


</body>
</html>