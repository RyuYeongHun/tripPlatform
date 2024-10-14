<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

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

        /* 헤더 스타일 */
        .header_gnb {
            width: 100%;
            display: flex;
            justify-content: center;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            z-index: 100;
        }

        .header_gnb .header_wrap {
            width: 100%;
            height: 4rem;
            padding: 10px 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .header_gnb .header_container {
            width: 100%;
            padding: 0 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header_container .logo_img img {
            width: 150px;
        }

        .header_container .menu ul {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 100%;
        }

        .header_container .menu ul li {
            margin: 0 10px;
        }

        .header_container .menu ul li a {
            color: black;
            text-decoration: none;
            padding: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .header_container .menu ul li a:hover {
            background-color: #f0f0f0;
            color: #333;
        }

        .header_container .login a {
            font-size: 14px;
            color: black;
            margin-left: 20px;
        }

        /* 사이드바 스타일 */
        .sidebar {
            width: 250px;
            position: fixed;
            top: 4rem; /* 헤더 아래에 위치 */
            left: 0;
            bottom: 0;
            background-color: #f9f9f9;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            overflow-y: auto; /* 사이드바 내용이 길어질 경우 스크롤 */
            padding: 20px;
            z-index: 10; /* 헤더보다 아래에 위치 */
        }

        .sidebar_menu ul {
            padding: 0;
            margin: 0;
        }

        .sidebar_menu ul li {
            margin: 10px 0;
        }

        .sidebar_menu ul li > a {
            display: block;
            padding: 10px;
            color: black;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .sidebar_menu ul li > a:hover {
            background-color: #e0e0e0;
        }

        .sidebar_menu ul li.active > a {
            background-color: #cce5ff;
            font-weight: bold;
        }

        .sidebar_menu ul li ul {
            padding: 0;
            margin: 0;
            display: none; /* 기본적으로 서브 메뉴 숨기기 */
        }

        .sidebar_menu ul li.active > ul {
            display: block; /* 활성화된 메뉴의 서브 메뉴 보이기 */
        }

        .sidebar_menu ul li ul li > a {
            padding-left: 30px; /* 2depth 메뉴 왼쪽 여백 */
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .sidebar_menu ul li ul li.active > a {
            background-color: #b8daff;
        }

        .sidebar_menu ul li ul li ul {
            padding-left: 30px;
            display: none; /* 기본적으로 3depth 메뉴 숨기기 */
        }

        .sidebar_menu ul li ul li.active > ul {
            display: block; /* 활성화된 2depth 메뉴의 3depth 서브 메뉴 보이기 */
        }
    </style>
</head>
<body>
    <header class="header_gnb">
        <div class="header_wrap">
            <div class="header_container">
                <div class="logo_img">
                    <a href="#"> <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo"></a>
                </div>

                <div class="menu">
                    <ul>
                        <li><a href="#userAdm" data-sidebar="userAdm">회원 관리</a></li>
                        <li><a href="#productAdm" data-sidebar="productAdm">상품 관리</a></li>
                        <li><a href="#referAiListAdm" data-sidebar="referAiListAdm">AI 추천 관리</a></li>
                        <li><a href="#boardAdm" data-sidebar="boardAdm">게시판 관리</a></li>
                        <li><a href="#dataAdm" data-sidebar="dataAdm">공공데이타 관리</a></li>
                    </ul>
                </div>

                <div class="login">
                    <a href="/" class="user_page">홈페이지</a>
                    <a href="/logout" class="logout">로그아웃</a>
                </div>
            </div>
        </div>
    </header>

    <aside class="sidebar">
        <div class="sidebar_menu">
            <ul>
                <li data-sidebar="userAdm">
                    <a href="#">회원 관리</a>
                    <ul>
                        <li data-sidebar="userAdm1">
                            <a href="">회원 관리 </a>
                            <ul>
                                <li><a href="/usersSelect">사용자</a></li>
                                <li><a href="#">사업자</a></li>
                            </ul>
                        </li>
                        <!-- <li data-sidebar="userAdm2">
                            <a href="#">회원 관리 2</a>
                            <ul>
                                <li><a href="#">회원 관리 2-1</a></li>
                                <li><a href="#">회원 관리 2-2</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </li>
                <li data-sidebar="productAdm">
                    <a href="#">상품 관리</a>
                    <ul>
                        <li data-sidebar="productAdm1">
                            <a href="#">상품 관리 1</a>
                            <ul>
                                <li><a href="#">상품 관리 1-1</a></li>
                                <li><a href="/mw/mwAdminSearchUpdate">상품 조회/수정</a></li>
                            </ul>
                        </li>
                        <li data-sidebar="productAdm2">
                            <a href="/sh/admin/productOptionRegion">상품 옵션 관리</a>
                            <ul>
                                <li><a href="/sh/admin/productOptionRegion">상품 지역 관리</a></li>
                                <li><a href="/sh/admin/productOptionTheme">상품 테마 관리</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-sidebar="referAiListAdm">
                    <a href="#">AI 추천 관리</a>
                    <ul>
                        <li><a href="/sh/admin/referAiListAdm">AI 로직 관리 </a></li>
                        <li><a href="/sh/admin/referAiOptionListAdm">AI 옵션 관리</a></li>
                    </ul>
                </li>
                <li data-sidebar="boardAdm">
                    <a href="#">게시판 관리</a>
                    <ul>
                        <li><a href="/sh/admin/boardAdm">FAQ게시판</a></li>
                        <li><a href="/sh/admin/boardAdm2">공지사항</a></li>
                        <li><a href="/sh/admin/boardAdm3">문의함</a></li>
                    </ul>
                </li>
                <li data-sidebar="dataAdm">
                    <a href="#">공공데이타 관리</a>
                    <ul>
                        <li><a href="/bolgguri">볼꺼리 데이타(file) </a></li>
												<li><a href="/bolgguri2">볼꺼리 데이타(Proxy) </a></li>
												<li><a href="/jalgguri">잘꺼리 데이타(file)</a></li>
												<li><a href="/mukgguri">먹꺼리 데이타(file)</a></li>
												<li><a href="/cat_code">카테고리 코드(cat_code)</a></li>
												<li><a href="/area_code">지역코드(area_code)</a></li>
												<li><a href="/intro12">컨텐츠 소개정보(관광지) </a></li>
												<li><a href="/intro14">컨텐츠 소개정보(문화시설) </a></li>
												<li><a href="/contentImage">컨텐츠 이미지(content id별) </a></li>
												<li><a href="/api_common">공통정보(content id별) </a></li>
												<li><a href="/nearMukgguri">주변 먹꺼리 찾기</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // 사이드바의 1depth 메뉴 클릭 시
            $('.sidebar_menu > ul > li > a').on('click', function(e) {
                
                var $this = $(this);

                // 현재 클릭된 메뉴를 제외한 모든 메뉴에서 active 클래스 제거
                $('.sidebar_menu > ul > li').removeClass('active');
                $('.sidebar_menu ul li ul li').removeClass('active');

                // 클릭한 메뉴 항목에 active 클래스 추가
                $this.closest('li').addClass('active');

                // 2depth 메뉴의 서브 메뉴 보이기
                $this.closest('li').find('ul').slideDown();

                // 3depth 서브 메뉴 보이기
                $this.closest('li').find('ul li.active > ul').slideDown();
            });

            // 사이드바의 2depth 메뉴 클릭 시
            $('.sidebar_menu ul li > ul > li > a').on('click', function(e) {
                
                var $this = $(this);

                // 현재 클릭된 2depth 메뉴를 제외한 모든 2depth 메뉴에서 active 클래스 제거
                $('.sidebar_menu ul li ul li').removeClass('active');

                // 클릭한 2depth 메뉴 항목에 active 클래스 추가
                $this.closest('li').addClass('active');

                // 3depth 서브 메뉴 보이기
                $this.closest('li').find('ul').slideDown();
            });

            // 헤더 메뉴 클릭 시 사이드바 메뉴 필터링
            $('.header_container .menu ul li a').on('click', function(e) {
                
                var sidebarId = $(this).data('sidebar');

                // 모든 사이드바 메뉴와 서브 메뉴 숨기기
                $('.sidebar_menu ul li').removeClass('active');
                $('.sidebar_menu ul li ul').slideUp();

                // 클릭한 헤더 메뉴에 해당하는 사이드바 메뉴만 보이게 함
                $('.sidebar_menu ul li[data-sidebar="' + sidebarId + '"]').addClass('active');
                $('.sidebar_menu ul li[data-sidebar="' + sidebarId + '"] > ul').slideDown();
            });

            // 페이지 URL에 따라 사이드바 메뉴 초기 상태 설정
            var currentUrl = window.location.hash.substring(1);
            if (currentUrl) {
                $('.sidebar_menu ul li a').each(function() {
                    if ($(this).attr('href').substring(1) === currentUrl) {
                        $(this).closest('li').addClass('active');
                        $(this).closest('ul').slideDown();
                        $(this).closest('ul').find('li.active > ul').slideDown(); // 3depth 메뉴 보이기
                    }
                });

                $('.header_container .menu ul li a').each(function() {
                    if ($(this).attr('href').substring(1) === currentUrl) {
                        var sidebarId = $(this).data('sidebar');
                        $('.sidebar_menu ul li[data-sidebar="' + sidebarId + '"]').addClass('active');
                        $('.sidebar_menu ul li[data-sidebar="' + sidebarId + '"] > ul').slideDown();
                    }
                });
            }
        });
    </script>
</body>
</html>