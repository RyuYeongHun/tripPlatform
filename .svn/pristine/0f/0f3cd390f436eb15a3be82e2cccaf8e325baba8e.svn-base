<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>${bolgguriDetails.title }</title>
			<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
			<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" />
			<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
			<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">	
			<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Jua&display=swap" rel="stylesheet">
			<style>
			@import
				url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
			
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
			
			.content_zone1 .content_zone_wrap .content_zone_box {
				width: 100%;
			}
			
			.content_zone1 .image_slide_container {
				width: 100%;
				max-width: 1000px;
				overflow: hidden;
				/* overflow: hidden 추가 */
				position: relative;
				display: flex;
				justify-content: center;
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
				margin-bottom: 10px;
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
			
			.content_zone1 .slide_item a {
				color: #007bff;
			}
			
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
				align-items: center;
				margin-bottom: 20px;
			}
			
			.content_zone2 .content_zone_wrap .thum_title h1 {
				font-family: "Jua", sans-serif;
				font-size: 32px;
				font-weight: bold;
			}
			
			.content_zone2 .content_zone_wrap .address {
			    font-size: 16px;
			    font-weight: 500;
			    margin-bottom: 5px;
			}
			.content_zone2 .content_zone_wrap .phone_no {
			    font-size: 16px;
			    font-weight: 500;
			    margin-bottom: 5px;
			}
			
			
			
			.content_zone2 .content_zone_wrap .thum_title .like_view {
				display: flex;
			}
			
			.content_zone2 .content_zone_wrap .thum_title .like_zone {
				display: flex;
				margin-right: 20px;
			    cursor: pointer;
				
			}
			
			.content_zone2 .content_zone_wrap  .phone_no {
				margin-bottom: 20px;
			}
			
			.content_zone2 .content_zone_wrap .detail_summary {
				margin-bottom: 0px;
			}
			
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
			
			.content_zone3 .content_zone_wrap .content_zone_box {
				width: 100%;
			}
			
			.tabs-container {
				display: flex;
				position: relative;
				width: 100%;
				margin-bottom: 40px;
			}
			
			.tab {
				cursor: pointer;
				padding: 10px;
				border: 1px solid #007bff;
				color: #007bff;
				border-radius: 20px;
				margin-right: 20px;
				text-align: center;
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
			
			.tab-content .head_txt {
				margin-bottom: 20px;
				font-size: 24px;
				font-weight : bold;
			}
			
			.tab-content .detail_txt {
				white-space: normal; 
				word-wrap: break-word; 
				overflow-wrap: break-word; 
				word-break: keep-all; 
				line-height: 1.5; 
				margin-bottom: 30px;
			}
			
			#map {
				width: 100%;
				height: 600px;
			}
			
			.fixed {
				position: fixed;
				top: 5rem;
				width: 100%;
				max-width: 57rem;
				z-index: 1000;
			}
			
			.facilities_cont_box {
				display: flex;
				margin-bottom: 40px;
			}
			
			.facilities_cont_box .facilities_cont {
				width: 25%;
			}
			
			.facilities_cont_box .facilities_cont img {
				width: 100%;
				max-width: 110px;
				height: 110px;
				margin-bottom: 10px;
			}
			
			.facilities_cont_box .facilities_cont_txt h1 {
				font-size: 18px;
			}
			
			.review_title_box {
				display: flex;
				margin-bottom: 20px;
			}
			
			.total_review {
				display: flex;
				align-items: center;
			}
			
			.total_review .star_icon {
				font-size: 34px;
			}
			
			.star {
				font-size: 24px;
				cursor: pointer;
				color: black; /* 빈 별 색상 */
			}
			
			.star.selected {
				color: #007bff; /* 채워진 별 색상 */
			}
			
			.review_title_box .review_head {
				margin-right: 20px;
				margin-bottom: 0px;
			}
			
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
			}
			
			.review_cont .review_cont_top .user_id {
				font-weight: 500;
				margin-right: 20px;
			}
			
			.review_cont .review_cont_top .user_star {
				display: flex;
			}
			
			.review_cont .review_cont_top .review_cont_one {
				display: flex;
				align-items: center;
			}
			
			.review_cont .review_cont_top .review_cont_two {
				font-size: 14px;
			}
			
			.review_cont .review_cont_bottom {
				display: flex;
				justify-content: space-between;
			}
			
			.review_cont .review_cont_bottom .heart-icon {
				color: #e76f8e;
			}
			.like_view .like_zone .heart-icon{
				color: #e76f8e;
			}
			
			.review_cont .review_cont_bottom .bottom_like {
				display: flex;
				cursor: pointer;
			}
			
			.review_cont_box {
				margin-bottom: 20px;
			}
			
			.review_regi {
				width: 100%;
				position: relative;
			}
			
			#submitReview {
			    background-color: #007bff;
			    color: white;
			    border: none;
			    padding: 10px 20px;
			    cursor: pointer;
			    border-radius: 4px;
			    height: 68%;
			}
			
			.review_regi .btn {
				position: absolute;
				right: 0;
				top: 30px;
				height: 67px;
			}
			
			.review_regi textarea {
				width: 99%;
				height: 70px;
			}
			
			.review_regi textarea:focus {
			    outline: none;
			    border-color: #66afe9;
			    box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
			}
			
			.delete-button {
			    background-color: #ff4d4d; 
			    color: white; 
			    border: none; 
			    border-radius: 5px; 
			    font-size: 14px; 
			    cursor: pointer; 
			    display: flex; 
			    align-items: center; 
			}
			
			.delete-button .material-icons {
			    font-size: 18px; 
			}
			
			.delete-button:hover {
			    background-color: #e60000; 
			}
			
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
				margin-bottom: 10px;
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
			
			.content_zone3 .slide_item a {
				color: #007bff;
			}
			
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
			
			.checked {
				color: orange;
			}
			
			.info-table {
				width: 100%;
			    border-collapse: collapse;
			    margin-bottom: 30px;
			}
			  
			.info-table th, .info-table td {
			    border: 1px solid #ddd;
			    padding: 10px;
			    text-align: left;
			}
			  
			.info-table th {
				background-color: #007bff;
			    color: white;
			    font-weight: 500;
			    width:20%;
			}
			  
			.info-table tr:nth-child(even) {
			    background-color: #f2f2f2;
			}
			/* 리뷰 페이지 넘버링 버튼 */
			/* 구역 디자인 */
			#pagination {
			    display: flex;                
			    justify-content: center;      
			    align-items: center;          
			    margin-top: 20px;             
			}
			/* 버튼디자인  */
			#pagination a {
				margin: 5px;                 
				padding: 5px 10px;           
				border-radius: 10px;         
				border: 1px solid #ddd;      
				background-color: white;     
				color: #007bff;              
				text-decoration: none;       
				cursor: pointer;             
				transition: background-color 0.3s ease, color 0.3s ease;
			}
			/* 마우스오버 */
			#pagination a:hover {
				background-color: #007bff;    
				color: white;                
			}
			/* 활성화 */
			#pagination a.active {
				background-color: #007bff;    
				color: white;                
				cursor: default;             
			}
			
			/* 모달 전체 화면 */
			.modal {
				display: none; 
			    position: fixed; 
			    z-index: 1000; 
			    padding-top: 50px; 
			    left: 0;
			    top: 0;
			    width: 100%; 
			    height: 100%; 
			    background-color: rgba(0, 0, 0, 0.8); /* 어두운 배경 */
			}
				
			/* 모달 닫기 버튼 */
			.modal .close {
			    position: absolute;
			    top: 20px;
			    right: 35px;
			    color: white;
			    font-size: 40px;
			    font-weight: bold;
			    cursor: pointer;
			}
				
			/* 모달 내 이미지 */
			.modal-content {
			    margin: auto;
			    display: block;
			    width: 50%;
			    height: 60%;
			    max-width: 1000px;
			    max-height: 800px;
			}
				
			/* 모달 창에서 이미지 중앙 정렬 */
			.modal-content {
			    animation-name: zoom;
			    animation-duration: 0.6s;
			}
				
			@keyframes zoom {
			    from {transform: scale(0)} 
			    to {transform: scale(1)}
			}
				
			/* 배경을 클릭해도 모달 창 닫기 */
			.modal:hover {
			    cursor: pointer;
			}
			/* 지도 */
			.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 16px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
			.wrap * {padding: 0;margin: 0;}
			.wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
			.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
			.info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
			.info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
			.info .close:hover {cursor: pointer;}
			.info .body {position: relative;overflow: hidden;}
			.info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
			.desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
			.desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
			.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
			.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
			.info .link {color: #5085BB;}
			
			/* 카카오맵 인포윈도우 스타일 덮어쓰기 */
		    .kakao-infoWindow, .kakao-infoWindow * {
		        background: none !important;  /* 배경 제거 */
		        border: none !important;      /* 테두리 제거 */
		    }
			
			</style>
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8db77e63fd9be76bae9b93b361608a25"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
			<script>
			
			let slideIndex1 = -1; // 초기 인덱스
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
			    
			    let slideLength = slides.length -1
			
			    if (slideIndex1  >= slideLength) {
			        slideIndex1 = -1;
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
				
				var isImageListEmpty = ${empty imageList ? "true" : "false"};
			    
			
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
			
				        console.log('Target:', target); // data-target 값 출력
				        console.log('Target Element:', $targetElement); // jQuery 객체 출력
						
				        // 모든 탭에서 active 클래스 제거
				        $('.tab').removeClass('active');
				        // 클릭된 탭에 active 클래스 추가
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
				        
				        // 현재 스크롤 위치가 탭 컨테이너의 원래 위치보다 아래인지 확인
				        if (scrollPosition > originalTop) {
				            tabsContainer.addClass('fixed');
				        } else {
				            tabsContainer.removeClass('fixed');
				        }
			
				        // 각 콘텐츠의 위치를 확인하여 활성화된 탭을 업데이트
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
				    
				    const bolgguri_id = '${bolgguriDetails.bolgguri_id}';
				    const user_id = '${user_id}';
				    /* let liked = ${liked};  // 서버에서 넘겨준 liked 상태 (true/false) */
			
				    $('#likeButton').click(function() {
				        // 로그인 여부 확인
				        if (!user_id) {
				            alert("로그인 후 이용 가능합니다.");
				            window.location.href = "/js/login";  // 로그인 페이지로 리다이렉트
				            return;
				        }
				        
					    let $this = $(this)
				        let liked = $(this).hasClass('material-icons-outlined');
				        const url = liked ? '/unlike' : '/like';
			
				        // Ajax 요청으로 좋아요/좋아요 취소 처리
				        $.ajax({
				            url: url,
				            type: 'GET',
				            data: { bolgguri_id: bolgguri_id, user_id: user_id },  
				            success: function(response) {
				                // 좋아요 카운트 갱신
				                $('#likesCount').text(response);  // 서버 응답에서 likesCount를 받아서 갱신
				                // 좋아요 상태 갱신
				                /* liked = !liked; */
					  		      if (liked) {
					  		    	$this.removeClass('material-icons-outlined').addClass('material-symbols-outlined');
					  	        } else {
					  	        	$this.removeClass('material-symbols-outlined').addClass('material-icons-outlined');
					  	        }
				            },
				            error: function(error) {
				                console.error("좋아요 처리 에러: " + error);
				            }
				        });
				    });
				
				    const stars = document.querySelectorAll('#star-rating .star');
				    const ratingInput = document.getElementById('rating-score');
			
				    stars.forEach(star => {
				        star.addEventListener('click', function() {
				            const score = this.getAttribute('data-score');
				            ratingInput.value = score; // 점수 저장
			
				            // 모든 별 초기화
				            stars.forEach(s => {
				                s.classList.remove('selected');
				                s.classList.add('material-symbols-outlined'); // 빈 별로 설정
				                s.classList.remove('material-icons-outlined');
				            });
			
				            // 클릭한 별과 이전 별에 색을 채움
				            for (let i = 0; i < score; i++) {
				                stars[i].classList.add('selected');
				                stars[i].classList.add('material-icons-outlined'); // 가득 찬 별로 설정
				                stars[i].classList.remove('material-symbols-outlined');
				            }
				        });
				    });
    
	
		    $("#submitReview").click(function() {
		    	if(!user_id) {
		    		alert("로그인 후 이용가능합니다.");
		    		window.location.href = "/js/login";
		    		return;
		    	}
		    	
		        let reply_content = $("#reply_content").val();
		        let score = $("#rating-score").val();
		        
		        if (reply_content.trim() === '') {
		            alert("리뷰 내용을 입력해주세요.");
		            return;
		        }
		        
		        if (score == 0) {
		            alert("별점을 선택해주세요.");
		            return;
		        }
		
		        $.ajax({
		            url: "/reviews",  
		            type: "POST",
		            data: { 
		            	reply_content: reply_content,
		            	user_id: user_id,
		            	bolgguri_id: bolgguri_id,
		            	score: score
		            	},
		            success: function(response) {
		                alert("리뷰가 등록되었습니다.");
		                $("#reviewModal").modal('hide');
		            },
		            error: function(error) {
		                alert("리뷰 등록 중 오류가 발생했습니다.");
		            }
		        });
		        window.location.reload();
		    });
		    
		    
			$(".like-button").click(function() {
				console.log('like-button click/user_id:',user_id);
		    	if(!user_id) {
		    		alert("로그인 후 이용가능합니다.");
		    		window.location.href = "/js/login";
		    		return;
		    	}
		        let review_id = $(this).data("review-id");
		        let isLiked = $(this).hasClass('material-icons-outlined');
		        let $this = $(this)
		        console.log(review_id);
				$.ajax({
				    url: "/review/like",
				    type: "GET",  
				    data: { review_id: review_id },
				    success: function(data) {
				    	console.log('reviewCount', data);
				        // 좋아요 수를 업데이트
				        $('#like-count-' + review_id).text(data);
				        // 버튼 상태 변경 (liked 클래스를 토글)
				        
				      if (isLiked) {
				    	$this.removeClass('material-icons-outlined').addClass('material-symbols-outlined');
			        } else {
			        	$this.removeClass('material-symbols-outlined').addClass('material-icons-outlined');
			        }
				    },
				    error: function(error) {
				        console.error("AJAX 에러:", error);
				        alert("좋아요 처리 중 오류가 발생했습니다.jsp");
				    }
				});
		    });   
			});
			
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
		
		<!-- 이미지 슬라이드 및 이미지 모달 -->
		<section class="content_zone content_zone1">
			<div class="content_zone_wrap">
				<div id="imageModal" class="modal">
					<span class="close">&times;</span>
					<img class="modal-content" id="modalImage">
				</div>
				<div class="image_slide_container">
					<div class="slide_group">
					
						 <c:if test="${empty imageList}">
							<!-- 이미지가 없을 때 기본 이미지 표시 -->
							<div class="slide_item">
								<a href="#">
									<div class="image_wrapper">
										<img src="/resources/imgMw/imgDefault.png">
									</div>
								</a>
							</div>
						</c:if> 
						<c:if test="${not empty imageList}">
							<!-- 이미지가 있을 때 imageList 반복 -->				
							<c:forEach var="image" items="${imageList}" varStatus="index">
							    <div class="slide_item">
							        <a href="javascript:void(0);" onclick="openModal('${image.originImgUrl}')">
							            <div class="image_wrapper">
							                <img src="${image.originImgUrl}">
							            </div>
							        </a>
							    </div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</section>
	
		<!-- 기본정보 -->
		<section class="content_zone content_zone2">
			<div class="content_zone_wrap">
				<div class="content_zone_box">
					<div class="thum_title">
						<h1>${bolgguriDetails.title}</h1>
						<div class="like_view">
							<div class="like_zone">
								<!-- <span class="material-icons-outlined"> favorite </span>  -->
								<span class="${liked ? 'heart-icon material-icons-outlined' : 'heart-icon material-symbols-outlined'}" id="likeButton">favorite</span>
	                        <p id="likesCount">${bolgguriDetails.likes}</p>
							</div>
							<div class="view_zone">
								<p><span>조회수 :</span> <span id="likeCount">${bolgguriDetails.view_count}</span> </p>
							</div>
						</div>
					</div>
					<p class="address"><span>주소 : </span> ${bolgguriDetails.addr1}</p>
					<p class="phone_no"><span>연락처 : </span> ${bolgguriDetails.tel}</p>
					<p class="detail_summary">${bolgguriDetails.bolgguri_desc}</p>
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
					
						<!-- 정보 -->
						<div id="info" class="tab-content">
							<table class="info-table">
								<tr>
									<th>홈페이지</th>
								    <td>
								      ${bolgguriDetails.website == null ? '제공하지 않음' : bolgguriDetails.website}
								    </td>
							  	</tr>
							  	<tr>
							    	<th>전화번호 문의 안내</th>
							    	<td>
							      		<c:choose>
							        		<c:when test="${bolgguriDetails.tel == null}">
							          			제공하지 않음
							        		</c:when>
							        		<c:otherwise>
							          			${bolgguriDetails.tel}
							        		</c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>이용 시간</th>
							    	<td>
							      		<c:choose>
							        		<c:when test="${bolgguriDetails.opening_hours == null}">
							          			제공하지 않음
							        		</c:when>
							        		<c:otherwise>
							          			${bolgguriDetails.opening_hours}
							        		</c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>휴무일</th>
							    	<td>
							      		<c:choose>
							        		<c:when test="${bolgguriDetails.holidays == null}">
							          			제공하지 않음
							        		</c:when>
							        		<c:otherwise>
							          			${bolgguriDetails.holidays}
							        		</c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>입장료/이용료</th>
							    	<td>
							      		<c:choose>
							        		<c:when test="${bolgguriDetails.fee == null}">
							          			제공하지 않음
							        		</c:when>
							        	<c:otherwise>
							          		${bolgguriDetails.fee != 0 ? bolgguriDetails.fee + ' (' + bolgguriDetails.chkcreditcard + ')' : '무료'}
							        	</c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>화장실 유무</th>
							    	<td>
							      		<c:choose>
							        		<c:when test="${bolgguriDetails.restroom_yn == null}">
							          			제공하지 않음
							        		</c:when>
									        <c:otherwise>
									          ${bolgguriDetails.restroom_yn == 'N' ? '없음' : '있음'}
									        </c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>주차안내</th>
							    	<td>
							      		<c:choose>
									        <c:when test="${bolgguriDetails.parking_cnt == 0 || bolgguriDetails.parking_cnt == null }">
									          ${bolgguriDetails.parking == null ? '제공하지 않음' : bolgguriDetails.parking}
									        </c:when>
							        		<c:otherwise>
							          			있음(${bolgguriDetails.parking_cnt}대)
							        		</c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>애완동물 동반가능</th>
							    	<td>
							      		<c:choose>
							        		<c:when test="${bolgguriDetails.pet_allow == 'N'}">
							         			 불가능
							        		</c:when>
							        		<c:when test="${bolgguriDetails.pet_allow == 'Y'}">
							          			가능
							        		</c:when>
							        		<c:otherwise>
							          			${bolgguriDetails.pet_allow == null ? '제공하지 않음' : bolgguriDetails.pet_allow}
							        		</c:otherwise>
							      		</c:choose>
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>사용가능 연령</th>
							    	<td>
							      		${bolgguriDetails.expagerange == null ? '제공하지 않음' : bolgguriDetails.expagerange}
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>체험안내</th>
							    	<td>
							      		${bolgguriDetails.expguide == null ? '제공하지 않음' : bolgguriDetails.expguide}
							    	</td>
							  	</tr>
							  	<tr>
							    	<th>특이사항</th>
							    	<td>
							      		${bolgguriDetails.special_note == null ? '제공하지 않음' : bolgguriDetails.special_note}
							    	</td>
							  	</tr>
							</table>	
						</div>
						
						<!-- 무장애 관광 정보 -->
						<div id="accessibility" class="tab-content">
							<h1 class="head_txt">무장애 관광 정보</h1>
							<div class="facilities_infor">
								<c:forEach var="facilCode" items="${accessFacilCode}" varStatus="status">
									<c:if test="${status.index % 4 == 0}">
										<div class="facilities_cont_box">
									</c:if>
	
									<div class="facilities_cont">
										<img src="${facilCode.image}" alt="${facilCode.image}">
										<div class="facilities_cont_txt">
											<h1>${facilCode.name}</h1>
											<p>${facilCode.image_cur}</p>
										</div>
									</div>
								<c:if test="${status.index % 4 == 3 || status.last}">
								</div>
								</c:if>
								</c:forEach>
						</div>					
					</div>
						
					<!-- 리뷰 -->
					<div id="reviews" class="tab-content">
						<div class="review_title_box">
							<h1 class="head_txt review_head">리뷰 내용</h1>
							<div class="total_review">
								<c:forEach var="i" begin="1" end="5">
									<c:choose>
										<c:when test="${i <= averageScore}">
											<span class="material-icons-outlined star_icon " style="color: #007bff;">star</span>
										</c:when>
										<c:otherwise>
											<span class="material-symbols-outlined star_icon" >star</span>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<span><c:out value="${averageScore}"/> / 5.0</span> <span>(${totalReviewCount})</span>
							</div>
						</div>
	
						<div class="review_cont_box">
							<c:forEach var="review" items="${reviewList}">
								<div class="review_cont">
									<div class="review_cont_top">
										<div class="review_cont_one">
											<p class="user_id">작성자 : ${review.write_user_id}</p>
											<p class="user_star">
												별점 :
												<c:forEach var="i" begin="1" end="5">
													<c:choose>
														<c:when test="${i <= review.score}">
															<span class="material-icons-outlined star_icon " style="color: #007bff;">star</span>
														</c:when>
														<c:otherwise>
															<span class="material-symbols-outlined star_icon">star</span>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</p>
										</div>
									<div class="review_cont_two">등록일 : <fmt:formatDate value="${review.c_date}" pattern="yyyy년 MM월 dd일"/></div>
									</div>
									<div class="review_cont_bottom">
										<div class="review_cont_txt">${review.reply_content}</div>
										<div class="bottom_like">
											<span class="heart-icon like-button ${review.isLiked ? 'material-icons-outlined' : 'material-symbols-outlined'}" data-review-id="${review.review_id}">favorite</span>
											<span id="like-count-${review.review_id}">${review.like_cnt}</span>
											<c:if test="${user_id == review.write_user_id}">
							                    <div class="review_actions">
							                        <button class="delete-button" onclick="deleteReview(${review.review_id})">
													    <span class="material-icons">삭제</span> 
													</button>
							                    </div>
							                </c:if>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
							
							<!-- 페이지네이션 버튼이 표시될 부분 -->
	
						<div id="pagination">
								<!-- 이전 페이지 -->
								<c:if test="${currentPage > 10}">	<!-- 현재 페이지가 10이 넘어가면 생성 -->
							        <a href="?bolgguri_id=${bolgguriDetails.bolgguri_id}&page=${startPage - 1}">&laquo;</a>
							    </c:if>
							    <c:if test="${currentPage > 1}">	<!-- 현재 페이지가 1이 넘어가면 생성 -->
							        <a href="?bolgguri_id=${bolgguriDetails.bolgguri_id}&page=${currentPage - 1}">이전</a>
							    </c:if>
							    <!-- 페이지 번호 -->
							    <c:forEach begin="${startPage}" end="${endPage}" var="i">
							        <a href="?bolgguri_id=${bolgguriDetails.bolgguri_id}&page=${i}" 
							           class="${i == currentPage ? 'active' : ''}">${i}</a>
							    </c:forEach>
								<!-- 다음 페이지 -->
							    <c:if test="${totalPages > currentPage}">	<!-- 현재 페이지가 전체 페이지수 보다 작으면 생성 -->
							        <a href="?bolgguri_id=${bolgguriDetails.bolgguri_id}&page=${currentPage + 1}">다음</a>
							    </c:if>
							    <c:if test="${endPage < totalPages}">	<!-- 페이지 그룹의 마지막번호가 총 페이지  수 보다 작으면 생성-->
							        <a href="?bolgguri_id=${bolgguriDetails.bolgguri_id}&page=${endPage + 1}">&raquo;</a>
							    </c:if>
						</div>
						<div class="review_regi">
							<div id="star-rating">
								<span class="star material-symbols-outlined" data-score="1">star</span>
								<span class="star material-symbols-outlined" data-score="2">star</span>
								<span class="star material-symbols-outlined" data-score="3">star</span>
								<span class="star material-symbols-outlined" data-score="4">star</span>
								<span class="star material-symbols-outlined" data-score="5">star</span>
							</div>
							<input type="hidden" id="rating-score" value="0">
							<form id="reviewForm">
								<textarea class="form-control" id="reply_content" rows="3" required></textarea>
							</form>
							<button type="button" class="btn btn-primary" id="submitReview">리뷰 등록</button>
						</div>
					</div>
						
					<!-- 주변관광지(지도) -->
					<div id="attractions" class="tab-content">
						<h1 class="head_txt">주변 관광지</h1>
						<div class="image_slide_container">
							<div class="slide_group">
								<div id="map" class="map">
									<iframe src="https://t1.daumcdn.net/mapjsapi/images/bg_tile.png"
									width="100%" height="100%" style="border: 0;"></iframe>
								</div>
								<div id="marker-pagination">
									<ul>
										<c:forEach var="i" begin="1" end="${totalMarkerPages}">
									    	<li class="<c:if test="${i == currentMarkerPage}">active</c:if>">
									        	<a href="javascript:goToMarkerPage(${i});">${i}</a>
									        </li>
									    </c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 리뷰 페이지넘버링 화면고정 -->
		<script>
		    // 페이지 이동 전 스크롤 위치 저장
		    document.querySelectorAll('#pagination a').forEach(function(link) {
		        link.addEventListener('click', function() {
		            localStorage.setItem('scrollPosition', window.scrollY);
		        });
		    });
		
		    // 페이지 로드 후 스크롤 위치 복원
		    window.addEventListener('load', function() {
		        var scrollPosition = localStorage.getItem('scrollPosition');
		        if (scrollPosition) {
		            window.scrollTo(0, scrollPosition);
		            localStorage.removeItem('scrollPosition'); // 복원 후 제거
		        }
		    });
		 	// 모달 열기
		    function openModal(imageUrl) {
		        var modal = document.getElementById("imageModal");
		        var modalImage = document.getElementById("modalImage");
	
		        modalImage.src = imageUrl;  // 선택한 이미지 경로 설정
		        modal.style.display = "block";  // 모달 창 표시
		    }
	
		    // 모달 닫기
		    var modal = document.getElementById("imageModal");
		    modal.onclick = function() {
		        modal.style.display = "none";  // 모달 창 숨김
		    }
	
		    // 닫기 버튼 클릭 시 모달 닫기
		    var closeBtn = document.querySelector(".modal .close");
		    closeBtn.onclick = function() {
		        modal.style.display = "none";  // 모달 창 숨김
		    }
		</script>
	
		<script>
			// 지도 스크립트
			const mapX = parseFloat('${bolgguriDetails.mapX}');
			const mapY = parseFloat('${bolgguriDetails.mapY}');
			const title = '${bolgguriDetails.title}';
			const mainImage = '${imageList[0] == null ? "/resources/imgMw/imgDefault.png" : imageList[0].originImgUrl}';
			const desc = '${bolgguriDetails.cat3_name}';
		
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    	mapOption = { 
		      		center: new kakao.maps.LatLng(mapY, mapX), // 지도의 중심좌표
		        	level: 6 // 지도의 확대 레벨
		    	};
		
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도생성
		
			// 사용자의 위치
			let userLocation = null;
		
			// Geolocation API(현재 위치)
			if (navigator.geolocation) {
		    	navigator.geolocation.getCurrentPosition(function(position) {
		        	userLocation = {
		            	lat: position.coords.latitude,
		            	lng: position.coords.longitude
		        	};
		    	}, function(error) {
		        	console.error("위치 정보를 사용할 수 없습니다.", error);
		    	});
			} else {
		    	console.error("Geolocation을 지원하지 않는 브라우저입니다.");
			}
		
			// nearbyLocations에서 마커 위치 정보 및 오버레이 데이터 설정
			var positions = [
		    	{
		        	title: title,
		        	latlng: new kakao.maps.LatLng(mapY, mapX),
		        	description: desc,
		        	imageSrc: mainImage,
		        	directionsUrl: 'https://map.kakao.com/link/to/' + title + ',' + mapY + ',' + mapX
		    	}
			];
		
			// nearbyLocations의 데이터를 positions에 추가
			<c:forEach var="location" items="${nearbyLocations}">
		    	if (!(parseFloat('${location.mapY}') === mapY && parseFloat('${location.mapX}') === mapX)) {
		        	positions.push({
		            	title: '${location.title}',
		            	latlng: new kakao.maps.LatLng('${location.mapY}', '${location.mapX}'),
		            	description: '<a href="http://localhost:8081/test?bolgguri_id=${location.bolgguri_id}">상세페이지</a>',  
		            	imageSrc: '${location.firstimage != null ? location.firstimage : "/resources/imgMw/imgDefault.png"}',  
		            	directionsUrl: 'https://map.kakao.com/link/to/${location.title},${location.mapY},${location.mapX}'
		        	});
		    	}
			</c:forEach>
		
			// 마커와 오버레이 생성
			for (var i = 0; i < positions.length; i++) {
			    	var imageSize = new kakao.maps.Size(24, 35); 
			    	var markerImage;
			    	if (i === 0) {
			        	markerImage = new kakao.maps.MarkerImage('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', imageSize); // 첫 번째 마커 이미지
			    	} else {
			        	markerImage = new kakao.maps.MarkerImage('/resources/imgMw/iconPin.png', imageSize); // 나머지 마커 이미지
			    	}
			
			    	var marker = new kakao.maps.Marker({
			        	map: map,
			        	position: positions[i].latlng,
			        	title: positions[i].title,
			        	image: markerImage
			    	});
			    	
			    	var content = '<div style="padding:5px; border-radius: 4px; padding: 0px 5px; background: #50627F; color: #fff; height: 24px;">' + positions[i].title + '</div>';

					// 커스텀 오버레이2
					var customOverlay2 = new kakao.maps.CustomOverlay({
					    map: map, 
					    position: marker.getPosition(), 
					    content: content, 
					    yAnchor: 2.5 // 오버레이위치 설정
					});
					
				    customOverlay2.setMap(map); 
		
			    	// 오버레이 내용 생성
				    var content = '<div class="wrap">' + 
				                  '    <div class="info">' + 
				                  '        <div class="title">' + 
				                  '            ' + positions[i].title + 
				                  '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
				                  '        </div>' + 
				                  '        <div class="body">' + 
				                  '            <div class="img">' +
				                  '                <img src="' + positions[i].imageSrc + '" width="73" height="70" alt="marker">' + 
				                  '            </div>' + 
				                  '            <div class="desc">' + 
				                  '                <div class="ellipsis">' + positions[i].description + '</div>' + 
				                  '					<div><a href="javascript:void(0);" onclick="findRoute(' + positions[i].latlng.getLat() + ', ' + positions[i].latlng.getLng() + ', \'' + positions[i].title + '\')" target="_blank" class="link">길찾기</a></div>' + 
				                  '            </div>' + 
				                  '        </div>' + 
				                  '    </div>' +    
				                  '</div>';
			
			    	var overlay = new kakao.maps.CustomOverlay({
			        	content: content,
			        	map: null, // 처음엔 오버레이 x
			        	position: marker.getPosition()       
			    	});
			
				    // 마커 클릭 시 오버레이 표시
				    kakao.maps.event.addListener(marker, 'click', (function(overlay) {
				        return function() {
				            closeAllOverlays(); // 모든 오버레이를 닫음
				            overlay.setMap(map); // 클릭한 마커의 오버레이를 지도에 표시
				        	};
				    	})(overlay));
				
				    	window["overlay" + i] = overlay; // 각 오버레이를 전역 객체에 저장
				}
		
			// 모든 오버레이 닫기
			function closeOverlay() {
			    closeAllOverlays(); 
			}
		
			function closeAllOverlays() {
			    for (var j = 0; j < positions.length; j++) {
			        if (window["overlay" + j]) {
			            window["overlay" + j].setMap(null); 
			        }
			    }
			}
		
			// 길찾기
			function findRoute(destLat, destLng, destTitle) {
			    if (userLocation) {
			        // 위치권환 있음
			        directionsUrl = 'https://map.kakao.com/link/from/' + '현위치,' + userLocation.lat + ',' + userLocation.lng + '/to/' + destTitle + ',' + destLat + ',' + destLng;
			    } else {
			        // 위치권한 없음
			        directionsUrl = 'https://map.kakao.com/link/to/' + destTitle + ',' + destLat + ',' + destLng;
			    }
			    window.open(directionsUrl, '_blank');
			}
			
			// 지도 타입 및 컨트롤 바
			var mapTypeControl = new kakao.maps.MapTypeControl();
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

			// 리뷰 삭제 함수
			function deleteReview(review_id) {
			    if (confirm('정말로 삭제하시겠습니까?')) {
			        // AJAX를 사용해 서버에 삭제 요청
			        $.ajax({
			            url: '/deleteReview', // 삭제 API 엔드포인트
			            type: 'GET',
			            data: { review_id: review_id },
			            success: function(response) {
			                if (response.success) {
			                    alert(response.message);
			                    location.reload(); // 삭제 후 페이지 새로고침
			                } else {
			                    alert('리뷰 삭제에 실패했습니다.');
			                }
			            },
			            error: function() {
			                alert('오류가 발생했습니다.');
			            }
			        });
			    }
			}
			</script>


		<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	
		<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	
		<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>
	</body>
</html>