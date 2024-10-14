<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 개인 정보</title>
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
	display: flex;
	justify-content: center;
}

/*초기 잡혀있는 헤더 높이 때문에 첫 컨텐츠에는 margin-top을 주고 시작함.*/
.content_zone1 {
	margin-top: 7rem;
}
</style>
<script>
	function confirmDelete() {
		return confirm("정말 회원탈퇴 하시겠습니까?");
	}
</script>
</head>


<body>


	<%@ include file="/WEB-INF/views/include/header.jsp"%>


	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<!-- 첫번째 컨텐츠가 들어갑니다. -->
			<div>
				<p>사업자 번호: ${biz.biz_no}</p>
				<p>이메일: ${biz.email}</p>
				<p>회사명: ${biz.biz_name}</p>
				<p>대표명: ${biz.owner}</p>
				<p>비밀번호: ${biz.biz_pw}</p>
				<p>전화번호: ${biz.tel}</p>
				<a href="/js/bizUpdate">수정</a>
				<form action="/bizDeleteDB" method="post" onsubmit="return confirmDelete();">
					<input type="hidden" name="biz_no" value="${biz.biz_no}" />
					<input type="submit" value="회원탈퇴"></input>
				</form>
			</div>
		</div>
	</section>





	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>

	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>


</body>
</html>