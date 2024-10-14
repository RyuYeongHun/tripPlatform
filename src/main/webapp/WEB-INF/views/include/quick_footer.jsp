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

/*푸터*/
.footer {
	width: 100%;
	display: flex;
	justify-content: center;
	position: fixed;
	bottom: 0;
	z-index: 150;
}

.footer .footer_wrap {
	width: 100%;
	max-width: 57rem;
	height: 3.6rem;
	padding: 10px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
	
	background-color: white;
	border-radius: 30px 30px 0px 0px;
	border-top: 1px solid #eee;
}

.footer .footer_wrap .footer_item {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

.footer .footer_wrap .footer_item a {
	font-size: 14px;
	color: black;
}

.footer .footer_wrap .footer_item img {
	height: 50px;
}

.footer .footer_wrap .footer_logo img {
	width: 100px;
	height: 100px;
}
</style>
<script>
	
</script>
</head>


<body>

	<footer class="footer">
		<div class="footer_wrap">
			<div class="footer_item footer_item1">
				<div class="footer_container">
					<a href="/sh/user/referenceAi">
						<div class="footer_icon">
							<span class="material-symbols-outlined"> robot_2 </span>
						</div>
						<p>AI 추천</p>
					</a>
				</div>
			</div>
			<div class="footer_item footer_item2">
				<div class="footer_container">
					<a href="/nearBolgguri">
						<div class="footer_icon">
							<span class="material-symbols-outlined"> near_me </span>
						</div>
						<p>내주변</p>
					</a>
				</div>
			</div>
			<div>
			</div>
			<div class="footer_item footer_item3">
				<div class="footer_container">
					<a href="">
						<div class="footer_logo">
							 <img src="${pageContext.request.contextPath}/resources/img/footer_logo3.png"> 
						</div>
					</a>
				</div>
			</div>
			<div class="footer_item footer_item4">
				<div class="footer_container">
					<a href="">
						<div class="footer_icon">
							<span class="material-symbols-outlined"> favorite </span>
						</div>
						<p>찜</p>
					</a>
				</div>
			</div>
			<div class="footer_item footer_item5">
				<div class="footer_container">
					<a href="/js/myPage">
						<div class="footer_icon">
							<span class="material-symbols-outlined"> person </span>
						</div>
						<p>
							<c:choose>
								<c:when test="${sessionScope.auth == 2}">
                        			관리자
                    </c:when>
								
								<c:when test="${sessionScope.auth == 1 }">
                       				 사업자
                    </c:when>
                    <c:otherwise>
                    			마이
                    </c:otherwise>
							</c:choose>
						</p>
					</a>
				</div>
			</div>
		</div>
	</footer>


</body>
</html>