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
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100..900&display=swap"
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
	height: 100vh;
	max-width: 57rem;
	display: flex;
	justify-content: center;
	padding-top: 7rem;
	box-sizing: border-box;
}

/*인트로 CSS*/
.content_zone1 .reference_intro {
	width: 100%;
}

.content_zone1 .reference_intro .intro_title {
	font-family: "Black Han Sans", sans-serif;
	color: #007bff;
	font-size: 54px;
	text-align: center;
	margin-bottom: 20px;
}

.content_zone1 .reference_intro .intro_sub {
	text-align: center;
	font-size: 24px;
	font-weight: bold;
}

.content_zone1 .reference_intro .intro_sub span {
	color: #007bff;
	font-family: "Black Han Sans", sans-serif;
	font-size: 34px;
	font-weight: 100;
}

.content_zone1 .reference_intro .intro_sub2 {
	margin-bottom: 40px;
}

.content_zone1 .reference_intro .intro_img {
	width: 100%;
	position:relative;
}

.content_zone1 .reference_intro .intro_img .intro_img_wrap {
	width: 100%;
	max-width: 600px;
}

.content_zone1 .reference_intro .intro_img .intro_img_wrap img {
	width: 100%;
}

.content_zone1 .reference_intro .intro_img .earth_img{ 
width: 100%; max-width:500px; 
    position: absolute;
    right: 0;
    top: -50px;
}

.content_zone1 .reference_intro .intro_img .robot_img{ 
	width: 100%; max-width:400px; 
    position: absolute;
    left: 50px;
}





.content_zone1 .reference_intro .intro_btn_wrap {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone1 .reference_intro .intro_btn_wrap .intro_btn {
	width: 100%;
	max-width: 200px;
	text-align: center;
	padding: 10px 0px;
	border-radius: 20px;
	background-color: #007bff; /* 기본 배경색 */
	color: white;
	overflow: hidden; /* 내부 요소가 버튼을 벗어나지 않도록 설정 */
	position: relative;
	transition: background-color 0.3s ease, transform 0.3s ease; /* 부드러운 전환 효과 */
}

/* 빛이 흐르는 애니메이션을 위한 가상 요소 */
.content_zone1 .reference_intro .intro_btn_wrap .intro_btn::before {
	content: "";
	position: absolute;
	top: 0;
	left: -100%; /* 초기 위치를 버튼 밖으로 설정 */
	width: 100%;
	height: 100%;
	background: linear-gradient(120deg, rgba(255, 255, 255, 0.4), rgba(255, 255, 255, 0) 70%);
	transition: all 0.4s ease-in-out;
	transform: skewX(-30deg);
	z-index: 1;
}

/* 호버 효과 */
.content_zone1 .reference_intro .intro_btn_wrap .intro_btn:hover {
	background-color: #0056b3; /* 호버 시 배경색 변경 */
	transform: scale(1.02); /* 호버 시 약간 확대 */
}

/* 호버 시 빛이 흐르는 애니메이션 */
.content_zone1 .reference_intro .intro_btn_wrap .intro_btn:hover::before {
	left: 100%; /* 왼쪽에서 오른쪽으로 빛이 흐르는 효과 */
	transition: all 0.6s ease-in-out;
}





/*스탭 공통 css*/
.content_zone .step {
	width: 100%;
	padding: 0px 50px;
}

.content_zone .step .step_title {
	font-family: "Black Han Sans", sans-serif;
	color: #007bff;
	font-size: 54px;
	margin-bottom: 10px;
}

.content_zone .step .step_subtitle {
	margin-bottom: 50px;
}

.content_zone .step .step_contents {
	margin-bottom: 50px;
}

.content_zone .step .step_contents a {
	width: 100%;
	display: block;
	color: #007bff;
	border: 2px solid #007bff;
	padding: 30px 0px;
	margin-bottom: 20px;
	border-radius: 60px;
	font-size: 24px;
	font-weight: bold;
	text-align: center;
	transition: background-color 0.3s, color 0.3s;
}

.content_zone .step .step_contents a:hover {
	background-color: #007bff;
	color: white;
}

.content_zone .step .step_contents label {
	display: block;
	cursor: pointer;
	height: 100%;
}

.content_zone .step .step_btn ul {
	display: flex;
	justify-content: space-between;
	padding: 0;
}

.content_zone .step .step_btn ul li {
	width: 100%;
	max-width: 370px;
}

.content_zone .step .step_btn a {
	display: block;
	width: 100%;
	text-align: center;
	padding: 15px 0;
	border-radius: 20px;
	position: relative;
	font-size: 18px;
	font-weight: 500;
	transition: all 0.4s ease-in-out;
}

.content_zone .step .step_btn .prev {
	border: 2px solid #007bff;
	color: #007bff;
	box-sizing: border-box;
}

.content_zone .step .step_btn .next {
	background-color: #007bff;
	color: white;
	overflow: hidden; /* 내부 요소가 버튼을 벗어나지 않도록 설정 */
	position: relative;
	transition: background-color 0.3s ease, transform 0.3s ease; /* 부드러운 전환 효과 */
}

/* 빛이 흐르는 애니메이션을 위한 가상 요소 */
.content_zone .step .step_btn .next::before {
	content: "";
	position: absolute;
	top: 0;
	left: -100%; /* 초기 위치를 버튼 밖으로 설정 */
	width: 100%;
	height: 100%;
	background: linear-gradient(120deg, rgba(255, 255, 255, 0.4), rgba(255, 255, 255, 0) 70%);
	transition: all 0.4s ease-in-out;
	transform: skewX(-30deg);
	z-index: 1;
}

/* 호버 효과 */
.content_zone .step .step_btn .next:hover {
	background-color: #0056b3; /* 호버 시 배경색 변경 */
	transform: scale(1.02); /* 호버 시 약간 확대 */
}

/* 호버 시 빛이 흐르는 애니메이션 */
.content_zone .step .step_btn .next:hover::before {
	left: 100%; /* 왼쪽에서 오른쪽으로 빛이 흐르는 효과 */
	transition: all 0.6s ease-in-out;
}

.content_zone .step .step_btn a:hover {
	background-color: #007bff;
	color: white;
}

.content_zone .step .step_btn input[type="button"] {
	display: none;
}

.content_zone .step .step_btn a span {
	display: block;
}

.content_zone .step .step_contents input[type="checkbox"] {
	display: none;
}

.content_zone .step .step_contents input[type="radio"] {
	display: none;
}

/*첫번째 스텝*/
.content_zone2 .step .step_contents input[type="radio"]:checked+a {
	background-color: #007bff;
	color: white;
	border: none;
}

/* step 2번째 */
.content_zone3 .step .step_contents ul {
	display: flex;
	width: 100%;
	justify-content: space-between;
}

.content_zone3 .step .step_contents ul li {
	width: 100%;
	max-width: 360px;
}

.content_zone3 .step .step_contents input[type="checkbox"]:checked+a {
	background-color: #007bff;
	color: white;
	border: none;
}

/*step 3번째 */
.content_zone4 .step .step_contents input[type="radio"]:checked+a {
	background-color: #007bff;
	color: white;
	border: none;
}

/*step 4번째*/
.content_zone5 .step .step_contents ul {
	display: flex;
	width: 100%;
	justify-content: space-between;
}

.content_zone5 .step .step_contents ul li {
	width: 100%;
	max-width: 180px;
}

.content_zone5 .step .step_contents input[type="radio"]:checked+a {
	background-color: #007bff;
	color: white;
	border: none;
}


/* step 5번째 */
.content_zone6 .step .step_contents ul {
	display: flex;
	width: 100%;
	justify-content: space-between;
}

.content_zone6 .step .step_contents ul li {
	width: 100%;
	max-width: 360px;
}

.content_zone6 .step .step_contents input[type="checkbox"]:checked+a {
	background-color: #007bff;
	color: white;
	border: none;
}

/* 버튼 스타일 업데이트 */
.confirm {
    display: block;
    width: 100%;
    max-width: 370px; 
    margin: 0px; 
    padding: 12px 0; 
    border: none; 
    border-radius: 20px; 
    background-color: #007bff; 
    color: white; 
    font-size: 18px; 
    font-weight: bold; 
    text-align: center; 
    cursor: pointer; 
    transition: background-color 0.3s, transform 0.2s; 
}

.confirm:hover {
    background-color: #0056b3; /* 호버 시 배경색 변경 */
    transform: translateY(-2px); /* 약간 위로 이동하는 효과 */
}



/* Wave animation keyframes */
@keyframes wave {
  0% {
    transform: translateY(0);
  }
  20% {
    transform: translateY(-5px);
  }
  40% {
    transform: translateY(5px);
  }
  60% {
    transform: translateY(-5px);
  }
  80% {
    transform: translateY(5px);
  }
  100% {
    transform: translateY(0);
  }
}

/* Apply wave effect */
.wave {
  display: inline-block;
  animation: wave 2s infinite;
  animation-timing-function: ease-in-out;
}





</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script>
$(document).ready(function() {
    $('.content_zone').hide();
    $('.content_zone1').show();

    $('.intro_btn').on('click', function(e) {
        e.preventDefault();
        $('.content_zone1').hide();
        $('.content_zone2').show();
    });

    $('.content_zone2 .prev').on('click', function() {
        $('.content_zone2').hide();
        $('.content_zone1').show();
    });
    $('.content_zone2 .next').on('click', function() {
        if (validateStep2()) {
            $('.content_zone2').hide();
            $('.content_zone3').show();
        } else {
            alert('여행 목적을 선택해주세요.');
        }
    });

    $('.content_zone3 .prev').on('click', function() {
        $('.content_zone3').hide();
        $('.content_zone2').show();
    });
    $('.content_zone3 .next').on('click', function() {
        if (validateStep3()) {
            $('.content_zone3').hide();
            $('.content_zone4').show();
        } else {
            alert('연령대를 선택해주세요.');
        }
    });

    $('.content_zone4 .prev').on('click', function() {
        $('.content_zone4').hide();
        $('.content_zone3').show();
    });
    $('.content_zone4 .next').on('click', function() {
        if (validateStep4()) {
            $('.content_zone4').hide();
            $('.content_zone5').show();
        } else {
            alert('여행 기간을 선택해주세요.');
        }
    });

    $('.content_zone5 .prev').on('click', function() {
        $('.content_zone5').hide();
        $('.content_zone4').show();
    });
    $('.content_zone5 .next').on('click', function() {
        if (validateStep5()) {
            $('.content_zone5').hide();
            $('.content_zone6').show();
        } else {
            alert('여행 지역을 선택해주세요.');
        }
    });

    $('.content_zone6 .prev').on('click', function() {
        $('.content_zone6').hide();
        $('.content_zone5').show();
    });
    
    $('.content_zone6 .confirm').on('click', function(e) {
        
        if (!validateStep6()) {
        	e.preventDefault();
            alert('테마를 선택해주세요.');
        } else {
            alert('결과 페이지로 이동합니다.');
        }
    });
     
});
    
function validateStep2() {
    return $('.content_zone2 input:checked').length > 0;
}

function validateStep3() {
    return $('.content_zone3 input:checked').length > 0;
}

function validateStep4() {
    return $('.content_zone4 input:checked').length > 0;
}

function validateStep5() {
    return $('.content_zone5 input:checked').length > 0;
}

function validateStep6() {
    return $('.content_zone6 input:checked').length > 0; 
}

function setPeriodNights(radioButton) {
    // 현재 선택된 radio 버튼의 period_nights 값을 가져온다
    var periodNights = radioButton.getAttribute('data-period-nights');

    if (!periodNights) {
        console.error('No period_nights data found for this radio button.');
        return;
    }

    // 폼의 데이터를 업데이트
    var form = radioButton.closest('form');
    
    // 폼에 period_nights 값을 hidden input으로 추가
    var hiddenInput = form.querySelector('input[name="period_nights"]');
    if (!hiddenInput) {
        hiddenInput = document.createElement('input');
        hiddenInput.type = 'hidden';
        hiddenInput.name = 'period_nights';
        form.appendChild(hiddenInput);
    }
    hiddenInput.value = periodNights;
}
</script>
</head>

<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	<form action ="/sh/user/referenceAi" method ="post">
	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="bg_img"></div>
			<div class="reference_intro">
				<div class="intro_title">여행 추천 AI</div>
				<div class="intro_sub intro_sub1" >
					어디를 여행갈지 <span class="wave">고민</span>일 때?
				</div>
				<div class="intro_sub intro_sub2">
					여행지 <span class="wave">추천</span>받자
				</div>
				<div class="intro_img">
					<!-- <div class="intro_img_wrap"> -->
						<img class="robot_img"
							src="${pageContext.request.contextPath}/resources/img/robot2.png">	
					<!-- </div> -->
						<div class="earth_img_wrapper">
							<img class="earth_img"
								src="${pageContext.request.contextPath}/resources/img/earth_white.gif"
								alt="Earth Image"> 
						</div>
					</div>
				<div class="intro_btn_wrap">
					<a class="intro_btn" href="">시작하기 </a>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone2">
		<div class="content_zone_wrap">
			<div class="step first_step">
				<div class="step_title first_step_title">STEP.01 여행목적</div>
				<div class="step_subtitle first_step_subtitle">여행 목적을 선택해주세요.
					(단일 선택)</div>
				<div class="step_contents first_step_contents">
						<ul>
							<c:forEach items="${goalList}" var="goalList" varStatus="loop">
								<li>
									<input type="radio" id="goal_${loop.index}" name="goal_name" value="${goalList.goal_name}">
									<a href="javascript:void(0);" class="content content1">
										<label for="goal_${loop.index}">${goalList.goal_name}</label>
									</a>
								</li>
							</c:forEach>		
						</ul>
				</div>
				<div class="step_btn first_step_btn">
					<ul>
						<li><a href="javascript:void(0);" class="prev">이전<span></span></a>
						</li>
						<li><a href="javascript:void(0);" class="next">다음<span></span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone3">
		<div class="content_zone_wrap">
			<div class="step second_step">
				<div class="step_title second_step_title">STEP.02 연령대</div>
				<div class="step_subtitle second_step_subtitle">여행을 가는 분들의연령대를 선택해주세요. (다중 선택)</div>
					<div class="step_contents second_step_contents">
						<ul class="item-list">
							<c:forEach items="${ageList}" var="ageList" varStatus="loop">
								<!-- Limit to first 8 items -->
								<c:if test="${loop.index < 8}">
									<!-- List item -->
									<li>
										<input type="checkbox" id="age_${loop.index}" name="age_id" value="${ageList.age_id}"> 
										<a href="javascript:void(0);" class="content content1"> 
											<label for="age_${loop.index}">${ageList.age_name}</label>
										</a>
									</li>

									<!-- End ul after every 2 items or at the end -->
									<c:if test="${loop.index % 2 == 1 or loop.index == 7}">
										</ul>
										<c:if test="${loop.index < 7}">
											<ul class="item-list">
										</c:if>
									</c:if>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="step_btn second_step_btn">
					<ul>
						<li><a href="javascript:void(0);" class="prev">이전<span></span></a>
						</li>
						<li><a href="javascript:void(0);" class="next">다음<span></span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone4">
		<div class="content_zone_wrap">
			<div class="step third_step">
				<div class="step_title third_step_title">STEP.03 여행기간</div>
				<div class="step_subtitle third_step_subtitle">여행 기간을 선택해주세요.
					(단일 선택)</div>
				<div class="step_contents third_step_contents">
					<ul>
					    <c:forEach items="${periodList}" var="periodList" varStatus="loop">
						    <li>
						        <input type="radio" 
						               id="period_${loop.index}" 
						               name="period_id" 
						               value="${periodList.period_id}" 
						               data-period-nights="${periodList.period_nights}" 
						               onclick="setPeriodNights(this);">
						        <a href="javascript:void(0);" class="content content1">
						            <label for="period_${loop.index}">${periodList.period_name}</label>
						        </a>
						    </li>
						</c:forEach>
					</ul>
					
				</div>
				<div class="step_btn third_step_btn">
					<ul>
						<li><a href="javascript:void(0);" class="prev">이전<span></span></a>
						</li>
						<li><a href="javascript:void(0);" class="next">다음<span></span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone5">
		<div class="content_zone_wrap">
			<div class="step fourth_step">
				<div class="step_title fourth_step_title">STEP.04 여행 지역</div>
				<div class="step_subtitle fourth_step_subtitle">여행 지역을 선택해주세요.
					(단일 선택)</div>
				<div class="step_contents fourth_step_contents">
					<ul>
						<c:forEach items="${regionList}" var="regionList" varStatus="loop">
								<!-- Limit to first 8 items -->
							<c:if test="${loop.index < 16}">
									<!-- List item -->
								<li>
									<input type="radio" id="region_${loop.index}" name="name" value="${regionList.name}"> 
									<a href="javascript:void(0);" class="content content1">
										<label for="region_${loop.index}">${regionList.name}</label>
									</a>
								</li>
								
								<c:if test="${loop.index % 4 == 3 or loop.index == 15}">
									</ul>
									<c:if test="${loop.index < 16}">
											<ul class="item-list">
									</c:if>
								</c:if>
							</c:if>
						</c:forEach>
					</ul>
					

				</div>
				<div class="step_btn fourth_step_btn">
					<ul>
						<li><a href="javascript:void(0);" class="prev">이전<span></span></a>
						</li>
						<li><a href="javascript:void(0);" class="next">다음<span></span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone6">
		<div class="content_zone_wrap">
			<div class="step fifth_step">
				<div class="step_title fifth_step_title">STEP.05 선호 테마</div>
				<div class="step_subtitle fifth_step_subtitle">선호하는 테마를 선택해주세요. (다중 선택)</div>
				<div class="step_contents fifth_step_contents">
					<ul class="item-list">
						<c:forEach items="${themeList}" var="themeList" varStatus="loop">
								<!-- Limit to first 8 items -->
							<c:if test="${loop.index < 8}">
									<!-- List item -->
								<li>
									
									<input type="checkbox" id="theme_${loop.index}" name="code" value="${themeList.code}">
									<a href="javascript:void(0);" class="content content1">
										<label for="theme_${loop.index}">${themeList.name}</label>
									</a>
								</li>
								<!-- End ul after every 2 items or at the end -->
									<c:if test="${loop.index % 2 == 1 or loop.index == 7}">
										</ul>
										<c:if test="${loop.index < 7}">
											<ul class="item-list">
										</c:if>
									</c:if>
							</c:if>
						</c:forEach>
					</ul>
					
				</div>
				<div class="step_btn fifth_step_btn">
					<ul>
						<li><a href="javascript:void(0);" class="prev">이전<span></span></a>
						</li>
						<input type="submit" value="완료" class="confirm">
					</ul>
				</div>
			</div>
		</div>
	</section>
	</form>

	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>

</body>
</html>