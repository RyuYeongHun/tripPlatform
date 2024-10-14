<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

/* 전체적인 스타일 설정 */
* {
	margin: 0;
	font-family: "Noto Sans KR", sans-serif;
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: #007bff;
}

img {
	display: block;
}

ul, li {
	list-style: none;
	margin: 0;
}

.content_section {
	 width: calc(100% - 250px); /* 사이드바 너비만큼 공간 확보 */
    margin-top: 4rem; /* 헤더 높이만큼 상단 여백 확보 */
    margin-left: 250px; /* 사이드바 너비만큼 왼쪽 여백 확보 */
   
}

.content_wrap {
	padding: 30px 40px;
	background-color: #f9f9f9;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.page_title {
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.page_sub {
	margin-bottom: 30px;
	font-size: 16px;
	color: #666;
}

.tab_menu {
	display: flex;
	margin-bottom: 30px;
}

.tab_menu li {
	margin-right: 20px;
	cursor: pointer;
	padding: 10px 30px;
	border: 1px solid #007bff;
	color: #007bff;
	border-radius: 20px;
	transition: all 0.3s ease;
}

.tab_menu li.active {
	background-color: #007bff;
	font-weight: bold;
	color: white;
}

.tab_content {
	display: none;
}

.tab_content.active {
	display: block;
}

/* content_list 테이블 스타일 */
.content_list {
	margin-top: 20px;
}

.content_list h3 {
	font-size: 18px;
	margin-bottom: 20px;
	color: #007bff;
}

.content_list table {
	width: 100%;
	max-width: 600px;
	border-collapse: collapse;
	background-color: white;
	border-radius: 8px;
	overflow: hidden;
	margin-bottom: 30px;
}

.content_list th, .content_list td {
	padding: 12px 15px;
	text-align: left;
}

.content_list th {
	background-color: #007bff;
	color: white;
	font-weight: bold;
}

.content_list td {
	border-bottom: 1px solid #ddd;
}

.content_list tr td {
	border: 1px solid #3333;
}

.content_list tbody tr td:last-child {
	display: flex;
	align-items: center;
	justify-content: center;
}

.content_list tr:last-child td {
	border-bottom: none;
}

.content_list form {
	display: inline-block;
	margin: 0;
}

#add_age {
	width: 100%;
}

.content_list input[type="submit"] {
	background-color: #ff4b4b;
	color: white;
	border: none;
	padding: 5px 10px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.content_list input[type="submit"]:hover {
	background-color: #e60000;
}

.list_insert {
	width: 100%;
}

.list_insert h3 {
	font-size: 18px;
	margin-bottom: 10px;
	color: #007bff;
}

.list_insert td {
	padding: 10px 5px;
}

.list_insert input[type="text"] {
	width: 80%;
	padding: 8px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.list_insert input[type="submit"] {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 8px 15px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.list_insert input[type="submit"]:hover {
	background-color: #0056b3;
}



</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {

		msg = '${msg}';
		if (msg) {
			alert(msg);
		}

		// 초기화: 첫 번째 탭 활성화
		$('.tab_menu li:first-child').addClass('active');
		$('.tab_content:first-child').addClass('active');

		// 탭 클릭 이벤트
		$('.tab_menu li').click(function() {
			var tabId = $(this).attr('data-tab');

			// 모든 탭과 콘텐츠에서 active 클래스 제거
			$('.tab_menu li, .tab_content').removeClass('active');

			// 클릭된 탭과 해당하는 콘텐츠에 active 클래스 추가
			$(this).addClass('active');
			$('#' + tabId).addClass('active');
		});
	});
</script>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header_adm.jsp"%>
	

	
	<div class="content_section">
		<div class="content_wrap">
			<h1 class="page_title">AI 옵션 관리</h1>
			<p class="page_sub">AI 옵션 관리에 대한 내용을 여기에 작성합니다.</p>
			<!-- 탭 메뉴 -->
			<ul class="tab_menu">
				<li data-tab="tab1">여행 연령대</li>
				<li data-tab="tab2">여행 기간</li>
				<li data-tab="tab3">여행 목적</li>
			</ul>

			<!-- 탭 콘텐츠 -->
			<div class="contents">
				<div id="tab1" class="tab_content">
					<div class="content_container">
						<div class="ages_list content_list">
							<table class="ages">
								<h3>연령대 리스트</h3>
								<thead>
									<tr>
										<th>연령대 ID</th>
										<th>연령대 이름</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${ageList}" var="ageList">
										<tr>


											<td>${ageList.age_id}</td>
											<td>${ageList.age_name}</td>

											<td>
												<form action="/sh/admin/referAiOptionListAdm" method="post"
													style="display: inline;" id="delete_btn">
													<input type="hidden" name="age_id" value="${ageList.age_id}">
													<input type="hidden" name="age_name" value="${ageList.age_name}">
													<input type="submit" name="age_action" value="삭제하기">
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<form action="/sh/admin/referAiOptionListAdm" method="post"
								id="add_age">
								<table class="ages_insert list_insert">
									<h3>연령대 추가</h3>
									<tr>
										<td>연령대 :</td>
										<td><input type="text" name="age_name"></td>
										<td><input type="submit" name="age_action" value="추가하기"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				
				<div id="tab2" class="tab_content">
					<div class="content_container">
						<div class="period_list content_list">
							<table class="periods">
								<h3>기간 리스트</h3>
								<thead>
									<tr>
										<th>여행 기간 ID</th>
										<th>여행 기간 이름</th>
										<th>실제 여행 일</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${periodList}" var="periodList">
										<tr>


											<td>${periodList.period_id}</td>
											<td>${periodList.period_name}</td>
											<td>${periodList.period_nights}</td>
											

											<td>
												<form action="/sh/admin/referAiOptionListAdm" method="post"
													style="display: inline;" id="delete_btn">
													<input type="hidden" name="period_id" value="${periodList.period_id}">
													<input type="hidden" name="period_nights" value="${periodList.period_nights}">
													<input type="hidden" name="period_name" value="${periodList.period_name}">
													<input type="submit" name="period_action" value="삭제하기">
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<form action="/sh/admin/referAiOptionListAdm" method="post"
								id="add_age">
								<table class="period_insert list_insert">
									<h3>여행기간 추가</h3>
									<tr>
										<td>여행 기간명 :</td>
										<td><input type="text" name="period_name"></td>
										<td>실제 여행일 :</td>
										<td><input type="text" name="period_nights"></td>
										<td><input type="submit" name="period_action" value="추가하기"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				
				<div id="tab3" class="tab_content">
					<div class="content_container">
						<div class="goal_list content_list">
							<table class="goals">
								<h3>여행목적 리스트</h3>
								<thead>
									<tr>
										<th>여행목적 ID</th>
										<th>여행목적 이름</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${goalList}" var="goalList">
										<tr>


											<td>${goalList.goal_id}</td>
											<td>${goalList.goal_name}</td>

											<td>
												<form action="/sh/admin/referAiOptionListAdm" method="post"
													style="display: inline;" id="delete_btn">
													<input type="hidden" name="goal_id" value="${goalList.goal_id}">
													<input type="hidden" name="goal_id" value="${goalList.goal_name}">
													<input type="submit" name="goal_action" value="삭제하기">
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<form action="/sh/admin/referAiOptionListAdm" method="post"
								id="add_age">
								<table class="goal_insert list_insert">
									<h3>여행목적 추가</h3>
									<tr>
										<td>여행목적 :</td>
										<td><input type="text" name="goal_name"></td>
										<td><input type="submit" name="goal_action" value="추가하기"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	
</body>
</html>