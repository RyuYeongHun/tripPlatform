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

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" />
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

/* 섹션 1 */
.content_zone1 {
	margin-top: 6rem;
}

.content_zone1 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone1 .image_slide_container {
	width: 100%;
	max-width: 1000px;
	overflow: hidden;
	/* overflow: hidden 추가 */
	position: relative;
}

.content_zone1 .content_zone_wrap .image_slide_container .image_slide_title
	{
	margin-bottom: 20px;
}

.content_zone1 .content_zone_wrap .image_slide_container .image_slide_title h1
	{
	color: #007bff;
	font-weight: 500;
	font-size: 20px;
}

.content_zone1 .image_slide_container .image_wrapper {
	border-radius: 30px;
	margin-bottom : 10px;
	overflow: hidden;
}

.content_zone1 .slide_group {

	display: flex;
	transition: transform 0.5s ease;
}

.content_zone1 .slide_item {
	min-width: calc(70%);
	/* Adjust for margin */
	box-sizing: border-box;
	margin-right: 60px;
	/* Add margin-right for spacing */
}

.content_zone1 .slide_item a {color:#007bff;}

.content_zone1 .slide_item a span {

    border: 1px solid #007bff;
    border-radius: 10px;
    padding: 0px 15px;
    box-sizing: border-box;

}

.content_zone1 .slide_item img {
	width: 100%;
	
	height: 400px;
}




.content_zone2 {
	margin-top: 20px;
}

.content_zone2 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone2 .content_zone_wrap .content_zone_box {
	width: 100%;
}

.content_zone2 .content_zone_wrap .thum_title {

    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items : center;
    margin-bottom : 20px;

}

.content_zone2 .content_zone_wrap .thum_title .like_view {display:flex;}

.content_zone2 .content_zone_wrap .thum_title .like_zone {display:flex; 
    margin-right: 20px;
}

.content_zone2 .content_zone_wrap  .phone_no {margin-bottom: 20px;}

.content_zone2 .content_zone_wrap .detail_summary {margin-bottom: 20px;}



/* 섹션 1 */
.content_zone3 {
	margin-top: 3rem;
}

.content_zone3 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}


.tabs-container {

    display: flex;
    position: relative;
    width: 100%;
    margin-bottom: 20px;
    

}



.tab {
    cursor: pointer;
    padding: 10px;
    border: 1px solid #007bff;
    color: #007bff;
    border-radius: 20px;
    margin-right: 20px; 
    text-align : center;
    width: 150px;
   background: white;
    
    
}

.tab.active {
    background: #007bff; /* 활성화된 탭의 배경색 */
    color: white; /* 활성화된 탭의 텍스트 색상 */
    
}

.tab:hover {
    background: #007bff;
    color: white;
}

.tab-content {
    height: auto; /* 높이 자동 조정 */
    margin-bottom: 30px;
}

.tab-content .head_txt {margin-bottom: 20px;}

.tab-content .detail_txt {

	white-space: normal; /* 기본 줄바꿈 */
    word-wrap: break-word; /* 긴 단어가 자동 줄바꿈되도록 */
    overflow-wrap: break-word; /* 모든 브라우저에서 줄바꿈을 적용 */
    word-break: keep-all; /* 한글과 같은 언어에서는 단어를 중간에 끊지 않음 */
    line-height: 1.5; /* 가독성을 위한 줄 간격 설정 */
    margin-bottom : 30px;
}

#map {width: 100%; height:600px; border: 1px solid black;}

.fixed {
    position: fixed;
    top: 5rem;
    width: 100%;
	max-width: 57rem;
    z-index: 1000;

}

.facilities_cont_box {display:flex; margin-bottom: 40px;}
.facilities_cont_box .facilities_cont { width:25%;}

.facilities_cont_box .facilities_cont img {width :100%; max-width : 110px; height: 110px; border: 1px solid black; margin-bottom: 10px;}
.facilities_cont_box .facilities_cont_txt h1{ font-size: 18px;}

.review_title_box {display:flex;  margin-bottom: 20px;}

.total_review {display:flex;  align-items: center;
    
}

.total_review .star_icon {font-size:34px; color: #007bff;}

.review_title_box .review_head {margin-right: 20px; margin-bottom: 0px;}

.review_cont {
    width: 100%;
    border: 1px solid #e8e8e8;
    padding: 20px 20px;
    border-radius: 20px;
    box-sizing: border-box;
    margin-bottom: 15px;
    
}

.review_cont .review_cont_top {
    display: flex;
    justify-content: space-between;
    
    margin-bottom: 20px;
    
	
}

.review_cont .review_cont_top .user_id {font-weight: 500; margin-right:20px;}

.review_cont .review_cont_top .user_star {display:flex;}

.review_cont .review_cont_top .review_cont_one {display:flex; align-items :center;}
.review_cont .review_cont_top .review_cont_two {font-size: 14px;}
.review_cont_box {margin-bottom:20px;}
.review_regi {width: 100%;}

.review_regi textarea {width: 100%; height: 70px;}






.content_zone3 .image_slide_container {
	width: 100%;
	max-width: 910px;
	overflow: hidden;
	
	position: relative;
}

.content_zone3 .content_zone_wrap .image_slide_container .image_slide_title
	{
	margin-bottom: 20px;
}

.content_zone3 .content_zone_wrap .image_slide_container .image_slide_title h1
	{
	color: #007bff;
	font-weight: 500;
	font-size: 20px;
}

.content_zone3 .image_slide_container .image_wrapper {
	border-radius: 30px;
	margin-bottom : 10px;
	overflow: hidden;
}

.content_zone3 .slide_group {
	display: flex;
	transition: transform 0.5s ease;
}

.content_zone3 .slide_item {
	min-width: calc(33.33%);
	
	box-sizing: border-box;
	margin-right: 60px;
	
}

.content_zone3 .slide_item a {color:#007bff;}

.content_zone3 .slide_item a span {

    border: 1px solid #007bff;
    border-radius: 10px;
    padding: 0px 15px;
    box-sizing: border-box;

}

.content_zone3 .slide_item img {
	width: 100%;
	max-width: 300px;
	height: 200px;
}

.content_zone3 .slide_item h1 {
	font-size: 20px;
	color: black;
	font-weight: 500;
	margin-top: 0.5rem;
	text-align: left;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.content_zone3 .slide_item p {
	font-size: 14px;
	color: black;
	margin-top: 0.5rem;
	text-align: left;
} 





</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    let slideIndex1 = 0; // 초기 인덱스
    let slideIndex2 = 0; // 초기 인덱스
    let startPoint = 0;
    let endPoint = 0;
    let autoSlideInterval1, autoSlideInterval2; // 자동 슬라이드용 인터벌 변수
    let slideWidth = 0; // 슬라이드 너비를 전역 변수로 선언

    function showSlides1() {
        let slides = document.querySelectorAll('.content_zone1 .slide_item');
        let slideGroup = document.querySelector('.content_zone1 .slide_group');
        slideWidth = slides[0].offsetWidth + 60; // 슬라이드의 너비와 마진
        let initialOffset = -550; // 초기 위치를 -500px로 설정
        slideGroup.style.transition = 'transform 0.5s ease';
        slideGroup.style.transform = 'translateX(' + (initialOffset + (-slideWidth * slideIndex1)) + 'px)';

        slideIndex1++;

        if (slideIndex1 >= slides.length) {
            slideIndex1 = 0;
        }

        autoSlideInterval1 = setTimeout(showSlides1, 3000); // 3초마다 슬라이드 변경
    }

    function showSlides2() {
        let slides = document.querySelectorAll('.content_zone3 .slide_item');
        let slideGroup = document.querySelector('.content_zone3 .slide_group');
        let slideWidth2 = slides[0].offsetWidth + 60; // Adjusting for margin (20px added)
        slideGroup.style.transition = 'transform 0.5s ease';
        slideGroup.style.transform = 'translateX(' + (-slideWidth2 * slideIndex2) + 'px)';

        slideIndex2++;

        if (slideIndex2 >= slides.length) {
            slideIndex2 = 0;
        }

        autoSlideInterval2 = setTimeout(showSlides2, 3000); // Change slide every 3 seconds
    }

    document.addEventListener("DOMContentLoaded", function() {
        showSlides1();
        showSlides2();

        const slideGroup1 = document.querySelector('.content_zone1 .slide_group');

        // PC 클릭 이벤트 (드래그)
        slideGroup1.addEventListener('mousedown', (e) => {
            e.preventDefault(); // 기본 동작 방지
            clearTimeout(autoSlideInterval1); // 드래그 시작 시 자동 슬라이드 중지
            startPoint = e.pageX;
            slideGroup1.style.transition = 'none'; // 드래그 시에는 트랜지션 효과 제거

            function onMouseMove(event) {
                let currentPoint = event.pageX;
                let diff = currentPoint - startPoint;
                let newIndex = Math.round((-(diff + 550) / slideWidth) + slideIndex1);
                slideGroup1.style.transform = 'translateX(' + (-slideWidth * newIndex + 550) + 'px)';
            }

            function onMouseUp(event) {
                endPoint = event.pageX;
                slideGroup1.style.transition = 'transform 0.5s ease'; // 드래그 끝나면 트랜지션 효과 복원

                if (startPoint < endPoint) {
                    slideIndex1 = Math.max(slideIndex1 - 1, 0);
                } else if (startPoint > endPoint) {
                    slideIndex1 = Math.min(slideIndex1 + 1, document.querySelectorAll('.content_zone1 .slide_item').length - 1);
                }

                slideGroup1.style.transform = 'translateX(' + (-550 + (-slideWidth * slideIndex1)) + 'px)';
                autoSlideInterval1 = setTimeout(showSlides1, 3000); // 드래그 후 자동 슬라이드 재시작

                document.removeEventListener('mousemove', onMouseMove);
                document.removeEventListener('mouseup', onMouseUp);
                startPoint = 0; // 드래그 종료 후 시작 지점 초기화
            }

            document.addEventListener('mousemove', onMouseMove);
            document.addEventListener('mouseup', onMouseUp);
        });

        // 모바일 터치 이벤트 (스와이프)
        slideGroup1.addEventListener('touchstart', (e) => {
            e.preventDefault(); // 기본 동작 방지
            clearTimeout(autoSlideInterval1);
            startPoint = e.touches[0].pageX;
            slideGroup1.style.transition = 'none';

            function onTouchMove(event) {
                let currentPoint = event.touches[0].pageX;
                let diff = currentPoint - startPoint;
                let newIndex = Math.round((-(diff + 550) / slideWidth) + slideIndex1);
                slideGroup1.style.transform = 'translateX(' + (-slideWidth * newIndex + 550) + 'px)';
            }

            function onTouchEnd(event) {
                endPoint = event.changedTouches[0].pageX;
                slideGroup1.style.transition = 'transform 0.5s ease';

                if (startPoint < endPoint) {
                    slideIndex1 = Math.max(slideIndex1 - 1, 0);
                } else if (startPoint > endPoint) {
                    slideIndex1 = Math.min(slideIndex1 + 1, document.querySelectorAll('.content_zone1 .slide_item').length - 1);
                }

                slideGroup1.style.transform = 'translateX(' + (-550 + (-slideWidth * slideIndex1)) + 'px)';
                autoSlideInterval1 = setTimeout(showSlides1, 3000); // 드래그 후 자동 슬라이드 재시작

                document.removeEventListener('touchmove', onTouchMove);
                document.removeEventListener('touchend', onTouchEnd);
                startPoint = 0; // 스와이프 종료 후 시작 지점 초기화
            }

            document.addEventListener('touchmove', onTouchMove);
            document.addEventListener('touchend', onTouchEnd);
        });
    });

    $(document).ready(function() {
        // 탭 클릭 시 해당 콘텐츠로 스크롤
        $('.tab').on('click', function() {
            var target = $(this).data('target');
            var $targetElement = $(target);

            console.log('Target:', target);
            console.log('Target Element:', $targetElement);

            $('.tab').removeClass('active');
            $(this).addClass('active');

            if ($targetElement.length) {
                $('html, body').animate({
                    scrollTop: $targetElement.offset().top - 150
                }, 500);
            } else {
                console.error('Target element not found:', target);
            }
        });

        var tabsContainer = $('.tabs-container');
        var originalTop = tabsContainer.offset().top; // 탭 컨테이너의 원래 위치를 저장

        $(window).on('scroll', function() {
            var scrollPosition = $(window).scrollTop();

            if (scrollPosition > originalTop) {
                tabsContainer.addClass('fixed');
            } else {
                tabsContainer.removeClass('fixed');
            }

            $('.tab-content').each(function() {
                var $this = $(this);
                var contentTop = $this.offset().top - 150;
                var contentBottom = contentTop + $this.outerHeight();

                if (scrollPosition >= contentTop && scrollPosition < contentBottom) {
                    var targetSelector = '#' + $this.attr('id');
                    $('.tab').removeClass('active');
                    $('.tab[data-target="' + targetSelector + '"]').addClass('active');
                }
            });
        });
    });
</script>
</head>


<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="image_slide_container">
				<div class="slide_group">
					<c:forEach var="mwBolgguriDto" items="${mwBolgguriDtos }" varStatus="index">
						<div class="slide_item">
							<a href="/detail_view?bolgguri_id=${mwBolgguriDto.bolgguri_id }">
								<div class="image_wrapper">
									<!-- Added wrapper div -->
									<img src="${mwBolgguriDto.firstImage2}" alt="Item ${index.index + 1 }">
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone2">
		<div class="content_zone_wrap">
			<div class="content_zone_box">
				<div class="thum_title">
					<h1>금강 로하스 대청 공원</h1>
					<div class="like_view">
						<div class="like_zone">
							<span class="material-icons-outlined"> star </span> 
							<span class="material-symbols-outlined">star</span>
							<span class="material-icons-outlined"> favorite </span> 
							<span class="material-symbols-outlined"> favorite </span>
							<p>10</p>
						</div>
						<div class="view_zone">
							<p>조회수 : 1000 </p>
						</div>
					</div>
				</div>
				<p class="address"><span>주소 : </span> 전북특별자치도 부안군 변산면 격포항길 64-18</p>
				<p class="phone_no"><span>연락처 : </span> 032-0000-000</p>
				<p class="detail_summary">법적으로는 '공원녹지'에 해당하며, 관련법규로는 서울특별시 한강공원 보전 및 이용에 관한 기본조례, 서울특별시 한강공원 보전 및 이용에 관한 기본조례 시행규칙, 구리시 한강시민공원 이용시설의 설치 및 운영에 관한 조례, 구리시 한강시민공원 이용시설의 설치 및 운영에 관한 조례 시행규칙 등이 있다.</p>
				<div class="etc_infor">
					<p><span>입장료 :</span> 무료</p>
					<p><span>화장실 유무 :</span> 없음</p>
					<p><span>주차장 안내 :</span> 있음</p>
					<p><span>특이 사항 :</span> 없음</p>
				</div>
			</div>
		</div>
	</section>


	<section class="content_zone content_zone3">
		<div class="content_zone_wrap">
			<div class="content_zone_box">
				<div class="tabs-container">
					<div class="tab" data-target="#info">정보</div>
					<div class="tab" data-target="#accessibility">무장애 관광정보</div>
					<div class="tab" data-target="#reviews">리뷰</div>
					<div class="tab" data-target="#attractions">주변 관광지</div>
				</div>
				<div class="content-container">
					<div id="info" class="tab-content">
						<h1 class="head_txt">상세 정보 내용</h1>
						<p class="detail_txt">법적으로는 '공원녹지'에 해당하며, 관련법규로는 서울특별시 한강공원 보전 및 이용에 관한 기본조례,
							서울특별시 한강공원 보전 및 이용에 관한 기본조례 시행규칙, 구리시 한강시민공원 이용시설의 설치 및 운영에 관한
							조례, 구리시 한강시민공원 이용시설의 설치 및 운영에 관한 조례 시행규칙 등이 있다. 각종 체육시설과 휴게시설이
							있으며, 한강 유람선을 탈수 있는 선착장 등이 있다. 자전거도로도 잘 되어 있기 때문에 서울에서 자전거를 즐겨 타는
							사람이 자전거 산책용으로 즐겨 찾는 곳 중 하나이기도 하다. 하지만 제한 속도 20km/h를 넘는 로드바이크족들의
							과속으로 여유롭게 자전거 타기는 불가능하다. 행락객이 몰리는 주말과 공휴일은 충돌사고도 다반사다. 중간에는
							편의점[2]들이 있는데, 홍수 시 건물이 물에 뜨게 설계되어 있다. 영상 이곳에는 봉지라면을 즉석으로 끓여주는 기기가
							갖추어져 있어 이렇게 먹는 라면이 한강라면으로 유명해지기도 했다. 봉지라면을 뜯은 뒤에 은박지그릇(또는 종이그릇)에
							면과 스프를 넣고 물을 넣고 끓여서 먹는 방식이다. 맥주집도 들어서서 자전거를 옆에 두고 치맥을 즐기는 광경도 볼 수
							있다. 하지만 음주	 후 자전거를 몰고 타는 것은 삼가야 한다. 여름에는 서울시민들의 피서처로 각광 받는 곳이다.
							열대야가 되면 밤에는 텐트를 치고 잠을 자거나 치맥을 즐기는 시민들로 붐빈다. 그러나 한강 의대생 실종 사건이 발생한
							뒤, 밤 10시 이후에는 한강공원에서 음주를 할 수 없게 되었다. 한강 둔치에 위치한 공원은 한강공원 말고도 많지만
							서울특별시에서 한강종합개발계획으로 조성한 공원만 '한강공원'이라고 부른다. 때문에 경기도 한강 둔치에 위치한 구리
							한강시민공원이나 남양주 한강시민공원 등은 한강공원에 속하지 않는다. 한강 고수부지라는 단어를 주로 쓰던
							1980~90년대에는 불량배가 많이 있었다고 하며 개그맨 유재석이 어린 시절에 아이스크림, 돈, 신발, 양말을
							빼앗기고 버스 회수권만 돌려 받았다고 한다.</p>
						<div id="map" class="map"></div>	
					</div>
					<div id="accessibility" class="tab-content">
						<h1 class="head_txt">무장애 관광 정보</h1>
						<div class="facilities_infor">
							<div class="facilities_cont_box">
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>점자블록</h1>
										<p>점자블록 있음</p>
									</div>
								</div>
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>출입통로</h1>
										<p>휠채어 출입통로 있음</p>
									</div>
								</div>
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>접근로</h1>
										<p>접근로 있음</p>
									</div>
								</div>
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>장애인주차</h1>
										<p>장애인 주차구역 있음</p>
									</div>
								</div>
							</div>
							<div class="facilities_cont_box">
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>점자표지판</h1>
										<p>점자표지판있음</p>
									</div>
								</div>
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>안내원</h1>
										<p>안내원있음</p>
									</div>
								</div>
								<div class="facilities_cont">
									<img src="">
									<div class="facilities_cont_txt">
										<h1>안내견동반</h1>
										<p>안내견동반가능</p>
									</div>
								</div>
							</div>
						</div>
					
					</div>
					<div id="reviews" class="tab-content">
						<div class="review_title_box">
							<h1 class="head_txt review_head">리뷰 내용</h1>
							<div class="total_review">
								<span class="material-symbols-outlined star_icon"> star </span>
								<span>5.0</span> <span>(1500)</span>
							</div>
						</div>

						<div class="review_cont_box">
							<div class="review_cont">
								<div class="review_cont_top">
									<div class="review_cont_one">
										<p class="user_id">ghs123123</p>
										<p class="user_star">
											별점 : <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span>
										</p>
									</div>
									<div class="review_cont_two">등록일 : 2024-09-05</div>
								</div>
								<div class="review_cont_txt">아이가 엄청 좋아했어요</div>
							</div>
							<div class="review_cont">
								<div class="review_cont_top">
									<div class="review_cont_one">
										<p class="user_id">bjs123</p>
										<p class="user_star">
											별점 : <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span> <span class="material-symbols-outlined star_icon">
												star </span>
										</p>
									</div>
									<div class="review_cont_two">등록일 : 2024-09-05</div>
								</div>
								<div class="review_cont_txt">늦게 가니깐 안하는 놀이기구가 많아유유유</div>
							</div>
						</div>
						<div class="review_regi">
							<textarea></textarea>
						</div>

					</div>
					<div id="attractions" class="tab-content">
						<h1 class="head_txt">주변 관광지</h1>
						<div class="image_slide_container">
							<div class="slide_group">
								<c:forEach var="mwBolgguriDto" items="${mwBolgguriDtos }"
									varStatus="index">
									<div class="slide_item">
										<a
											href="/detail_view?bolgguri_id=${mwBolgguriDto.bolgguri_id }">
											<div class="image_wrapper">
												<!-- Added wrapper div -->
												<img src="${mwBolgguriDto.firstImage2}"
													alt="Item ${index.index + 1 }">
											</div> <span>${mwBolgguriDto.areaTitle}</span>
											<h1>${mwBolgguriDto.title }</h1>
											<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	



	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>

</body>
</html>