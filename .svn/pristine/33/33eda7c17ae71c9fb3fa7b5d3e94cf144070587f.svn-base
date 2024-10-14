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
	padding: 0;
	box-sizing: border-box;
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
input[type="radio"] {
    display: none;
}
input[type="checkbox"] {
    display: none;
}
/* 컨텐츠존 */
.select_container{
	 z-index: 503;
     position: fixed;
     top: 0;
     left: 0;
     width: 100%;
     height: 100vh;
     display: flex;
     justify-content: center;
     visibility: hidden; /* 기본적으로 숨김 */
     opacity: 0; /* 기본적으로 숨김 */
     transition: opacity 0.3s ease, visibility 0.3s ease;
}
.select_container_active{
	visibility: visible;
   	opacity: 1;
}
.select_form{
	margin-top: 10rem;
	display: flex;
    width: 100%;
    max-width: 57rem;
    z-index: 501;
    transition: transform 0.3s ease;
    transform: translateY(100%); /* 기본적으로 화면 아래로 숨김 */
}
.select_form_active{
	transform: translateY(0); /* 화면으로 슬라이드 */
}
.select_bg{
	display: flex;
	width: 100%;
	max-width: 57rem;
	position: absolute;
	height: 100%;
	z-index: 500;
	background-color: rgba(0, 0, 0, 0.3);
}
.region_select{
	display: flex;
	flex-direction: column;
	width: 100%;
	max-width: 57rem;
	background-color: #fff;
	border-radius: 1rem;
	height: 100vh;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
	position: absolute;
	transform: translateY(0); /* 화면으로 슬라이드 */
    transition: transform 0.3s ease;
    z-index: 502;
}
.category_select{
	display: flex;
	flex-direction: column;
	width: 100%;
	max-width: 57rem;
	background-color: #fff;
	border-radius: 1rem;
	height: 100vh;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
	position: absolute;
    transition: transform 0.3s ease;
    transform: translateY(100%); /* 기본적으로 화면 아래로 숨김 */
    z-index: 503;
}
.category_select_active{
	transform: translateY(0); /* 화면으로 슬라이드 */
}
.select_close_button img, .select_back_button img{
	width: 3rem;
	height: auto;
	cursor: pointer;
}
.select_close_button, .select_back_button{
	display: flex;
	justify-content: left;
	padding: 2rem 2rem 0.5rem 2rem;
}
.region_select_title, .category_select_title{
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 1rem 0 1rem 0;
}
.region_select_list_container, .category_select_list_container{
	display: grid;
	grid-template-columns: repeat(3, 1fr); /* 기본적으로 3열로 나열 */
	gap: 20px; /* 각 아이템 사이의 간격을 설정 */
	padding: 1rem 15%;
	width: 100%;
	max-width: 57rem;
}
@media (max-width: 768px) {
    .region_select_list_container, .category_select_list_container {
        grid-template-columns: repeat(2, 1fr); /* 2열로 나열 */
    }
}
.region_select_list_item,
.category_select_list_item,
.category_select_list_checkAll{
	color: #fff;
	font-size: 1.5rem;
	border: 1px solid #ddd;
    border-radius: 40px;
    padding: 1rem;
    background-color: #6495ED;
    text-align: center;
}
.region_select_list_item:hover,
.category_select_list_item:hover,
.category_select_list_checkAll:hover{
	background-color: #7AA7EE;
}
.region_select_list_item:active,
.category_select_list_item:active,
.category_select_list_checkAll:active{
	background-color: #5078C9;
}
.region_select_list_item.selected,
.category_select_list_item.selected,
.category_select_list_checkAll.selected{
    background-color: #4169E1;
}
.region_select_list_item.selected:hover,
.category_select_list_item.selected:hover,
.category_select_list_checkAll.selected:hover{
    background-color: #5A7FED;
}
.region_select_list_item.selected:active,
.category_select_list_item.selected:active,
.category_select_list_checkAll.selected:active{
    background-color: #3555B2;
}
.selectButton_container{
	margin-top: 180px;
	display: flex;
	justify-content: center;
	width: 100%;
	max-width: 57rem;
	padding: 1rem 15%;
}
.selectButton{
	font-size: 1.5rem;
	padding: 1rem;
	width: 100%;
	border-radius: 0.5rem;
	outline: none;
	color: white;
	cursor: pointer;
	background-color: #555;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	    // 회색배경, region선택창에서 '<-' 클릭
	    $(".select_bg, .select_close_button").click(function(){
	        $("#select_container").removeClass('select_container_active');
	        $("#select_form").removeClass('select_form_active');
	        $(".category_select").removeClass('category_select_active');
	        // 모든 region 라디오 버튼의 선택 해제 및 배경 색상 초기화
	        $("input[name='areaCode']").prop('checked', false);
	        $(".region_select_list_item").removeClass('selected');
	        // 모든 category 체크박스의 선택 해제 및 배경 색상 초기화
	        $("input[name='category']").prop('checked', false);
	        $(".category_select_list_item, .category_select_list_checkAll").removeClass('selected');
	    });
	
	    // 지역 선택 버튼 클릭
	    $(".region_select_list_item").click(function(){
	        // 라디오 박스 체크
	        $(this).find("input[type='radio']").prop("checked", true);
			//모든 region 항목 초기화
	        $(".region_select_list_item").removeClass("selected");
	        //선택한 region 항목 selected 추가
	        $(this).addClass("selected");
	     	// 카테고리 선택창 출력
	        $(".category_select").addClass('category_select_active');
	    });
	
	    // 카테고리 선택 버튼 클릭
	    $(".category_select_list_item").click(function(){
	        console.log('카테고리 버튼 클릭');
	        // 체크박스 상태를 토글 (현재 상태와 반대)
	        var checkbox = $(this).find("input[type='checkbox']");
	        checkbox.prop("checked", !checkbox.prop("checked"));
	        // 체크박스 상태에 따라 배경 색상 변경
	        if (checkbox.prop("checked")) {
	            $(this).addClass("selected");
	        } else {
	            $(this).removeClass("selected");
	        }
	        // 체크박스가 모두 체크 되면 전체 선택 버튼 자동 체크
	        var isAllChecked = true;
	        var checkboxes = $(".category_select_list_item").find("input[type='checkbox']");
	        checkboxes.each(function() {
	            if (!$(this).is(':checked')) {
	                isAllChecked = false;
	                return false; // 체크되지 않은 항목이 발견되면 반복문 종료
	            }
	        });
	        if(isAllChecked){
	        	$(".category_select_list_checkAll").addClass('selected');
	        	$(".category_select_list_checkAll").find("input[type='checkbox']").prop("checked", true);
	        }else{
	        	$(".category_select_list_checkAll").removeClass('selected');
	        	$(".category_select_list_checkAll").find("input[type='checkbox']").prop("checked", false);
	        }
	    });
	
	 	// 전체 선택 버튼 클릭 시 (카테고리만)
	    $("#category_checkAll").click(function(){
	    	console.log('전체 버튼 클릭');
	    	// 카테고리 전체 버튼 토글
	    	var checkAll = $(this).find("input[type='checkbox']");
	    	checkAll.prop("checked", !checkAll.prop("checked"));
	    	// 전체 버튼 토글 상태에 따른 색상변경 , 나머지 카테고리 체크 및 색상변경
	    	if(checkAll.prop("checked")){
	    		$(this).addClass("selected");
	    		$(".category_select_list_item").find("input[type='checkbox']").prop("checked", true);
	    		$(".category_select_list_item").addClass("selected");
	    	}else{
	    		$(this).removeClass("selected");
	    		$(".category_select_list_item").find("input[type='checkbox']").prop("checked", false);
	    		$(".category_select_list_item").removeClass("selected");
	    	}
	    });
	
	    // 카테고리 선택 창에서 '<-' 클릭
	    $(".select_back_button").click(function(){
	        $(".category_select").removeClass('category_select_active');
	        // 모든 체크박스의 선택 해제 및 배경 색상 초기화
	        $("input[name='category']").prop('checked', false);
	        $(".category_select_list_item, #category_checkAll").removeClass("selected");
	    });
	});

</script>
</head>

<body>
	<div class="select_container" id="select_container">
		<div class="select_bg" id="select_bg"></div>
		<form class="select_form" id="select_form" action="/mw/bolgguriSearch" method="get">
			<div class="region_select" id="region_select">
				<div class="select_close_button">
					<img src="${pageContext.request.contextPath}/resources/imgMw/iconBack.png">
				</div>
				<div class="region_select_title">
					<h2>가고 싶은 지역 선택</h2>
				</div>
				<div class="region_select_list_container">
					<div class="region_select_list_item">
						<label for="regionAll">전체</label>
						<input type="radio" name="areaCode" id="regionAll" value="">
					</div>
					<c:forEach var="mwBolgguriRegionDto" items="${mwBolgguriRegionDtos }">
						<div class="region_select_list_item">
							<label for="areaCode_${mwBolgguriDto.areaCode }">${mwBolgguriRegionDto.name }</label>
							<input type="radio" name="areaCode" id="areaCode_${mwBolgguriRegionDto.areaCode }" value="${mwBolgguriRegionDto.areaCode }">
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="category_select" id="category_select">
				<div class="select_back_button">
					<img src="${pageContext.request.contextPath}/resources/imgMw/iconBack.png">
				</div>
				<div class="category_select_title">
					<h2>하고 싶은 카테고리를 선택해주세요.</h2>
				</div>
				<div class="category_select_list_container">
					<div class="category_select_list_checkAll" id="category_checkAll">
						<label for="categoryAll">전체</label>
						<input type="checkbox" name="category" id="categoryAll" value="">
					</div>
					<c:forEach var="mwBolgguriCategoryDto" items="${mwBolgguriCategoryDtos }">
						<div class="category_select_list_item">
							<label for="cat1_${mwBolgguriCategoryDto.code }">${mwBolgguriCategoryDto.name }</label>
							<input type="checkbox" name="category" id="cat1_${mwBolgguriCategoryDto.code }" value="${mwBolgguriCategoryDto.code }">
						</div>
					</c:forEach>
				</div>
				<div class="selectButton_container">
					<input class="selectButton" id="selectButton" type="submit" value="클릭하고 여행가기">
				</div>
			</div>
		</form>
	</div>	
</body>
</html>