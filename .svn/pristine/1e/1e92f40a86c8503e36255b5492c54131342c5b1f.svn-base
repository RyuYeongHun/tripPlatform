<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
* {
	margin: 0;
	padding: 0;
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
.mw_admin_wrap{
	width: 100%;
	margin: 100px 0 0 310px;
}
.mw_admin_search1{
	display: flex;
}
.mw_admin_search2{
	display: flex;
}
.mw_admin_search3{
	display: flex;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header_adm.jsp"%>
	<div class="mw_admin_wrap">
		<div class="mw_admin_header">
			<h2>상품 조회/수정</h2>
			<div class="mw_admin_count_all">
				<span class="count_all">전체 ${adminCountAll }개</span>
			</div>
		</div>
		<div class="mw_admin_search_container">
			<div class="mw_admin_search1">
				<div class="mw_admin_search_text">
					검색
				</div>
				<div class="mw_admin_search_text_box">
					<input type="text" id="admin_text" placeholder="상품 아이디, 제목, 지역, 카테고리 검색">
				</div>
			</div>
			<div class="mw_admin_search2">
				<div class="mw_admin_search_area">
					지역
				</div>
				<div class="mw_admin_area_checkbox_container">
					<span>
						<input type="checkbox" id="areaAll">
						<label for="areaAll">전체</label>
					</span>
					<c:forEach var="areaDto" items="${areaDtos }">
						<span>
							<input type="checkbox" value="${areaDto.areaCode }" name="areaCode" id="area-${areaDto.areaCode }">
							<label for="area-${areaDto.areaCode }">${areaDto.name }</label>
						</span>	
					</c:forEach>
				</div>
			</div>
			<div class="mw_admin_search3">
				<div class="mw_admin_search_category">
					카테고리
				</div>
				<div class="mw_admin_category_checkbox_container">
					<span>
						<input type="checkbox" id="catAll">
						<label for="catAll">전체</label>
					</span>
					<c:forEach var="catDto" items="${catDtos }">
						<span>
							<input type="checkbox" value="${catDto.code }" name="cat" id="cat-${catDto.code }">
							<label for="cat-${catDto.code }">${catDto.name }</label>
						</span>	
					</c:forEach>
				</div>
			</div>
			<div class="mw_admin_search4">
				<button>초기화</button>
				<button>검색</button>
			</div>
		</div>
		<div class="mw_admin_list_container">
			<div class="list_container_header">
				<div class="list_container_title">
					<span>상품목록</span>
					<span>총 개</span>
				</div>
				<div class="list_pageSize_container">
					<input type="radio" name="pageSize" value="50" id="pageSize50">
					<label for="pageSize50">50개씩 보기</label>
					<input type="radio" name="pageSize" value="100" id="pageSize100">
					<label for="pageSize100">100개씩 보기</label>
					<input type="radio" name="pageSize" value="200" id="pageSize200">
					<label for="pageSize200">200개씩 보기</label>
					<input type="radio" name="pageSize" value="300" id="pageSize300">
					<label for="pageSize300">300개씩 보기</label>
				</div>
			</div>
			<div class="list_select_box">
				<span>개 선택됨</span>
				<button>선택 항목 삭제</button>
			</div>
			<div class="list_table_container">
				<table border="1">
					<tr>
						<th><input type="checkbox" id="list_checkAll"></th>
						<th>수정/삭제</th>
						<th>상품 ID</th>
						<th>지역</th>
						<th>카테고리</th>
						<th>상품명</th>
						<th>주소</th>
						<th>최초 등록일</th>
						<th>최종 수정일</th>
					</tr>
					<c:forEach var="listDto" items="${listDtos }">
						<tr>
							<td>
								<input type="checkbox" name="bolgguri_id" value="${listDto.bolgguri_id }">
							</td>
							<td>
								<button>수정</button>
								<button>삭제</button>
							</td>
							<td>
								${listDto.bolgguri_id }
							</td>
							<td>
								${listDto.areaTitle }
							</td>
							<td>
								${listDto.catTitle }
							</td>
							<td>
								${listDto.title }
							</td>
							<td>
								${listDto.addr1 }
							</td>
							<td>
								<fmt:formatDate value="${listDto.c_date}" pattern="yyyy-MM-dd HH:mm:ss" />
							</td>
							<td>
								<fmt:formatDate value="${listDto.u_date}" pattern="yyyy-MM-dd HH:mm:ss" />
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="mw_admin_pageNav_container">
			
		</div>
		
	</div>
		
</body>
</html>