<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
    <title>어드민 로그인</title>
    
    <!-- 구글 폰트 및 스타일링 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" />
    
    <!-- CSS 스타일 -->
    <style>
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

        ul,
        li {
            padding: 0;
            list-style: none;
            margin: 0;
        }

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

            align-items: center;
        }

        .content_zone1 {
            margin-top: 7rem;
        }



        .login_container {

            width: 100%;
            max-width: 350px;


        }

        .login_container h1 {
            display: flex;
            justify-content: center;
            text-align: center;
            margin-bottom: 20px;
        }

        button {
            width: 100%;

            margin: 5px 0;
            border: none;
            cursor: pointer;

        }

        #input_id {
            font-weight: bold;

        }

        #input_pw {
            font-weight: bold;

        }

        .login_container .text_deco {
            margin-bottom: 10px;
        }

        .login_container .put_user {
            width: 100%;
            margin-bottom: 20px;
            padding: 10px 10px;
            border-radius: 10px;
            border: 2px solid #007bff;
            box-sizing: border-box;

        }


        .tab_container {
            width: 100%;
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            text-align: center;

            margin-bottom: 15px;

        }

        .tab_btn {
            width: 100%;
            border: 1px solid #007bff;
            background-color: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin: 0 5px;
            border-radius: 10px;
            color: #007bff;
        }

        .tab_btn.active {
            background-color: #007bff;
            font-weight: bold;
            color: white;
        }

        .login_btn {
            width: 100%;
            background-color: #007bff;
            border: none;
            color: white;
            box-sizing: border-box;
            padding: 10px 0px;
            border-radius: 10px;
            margin-bottom: 5px;
            cursor: pointer;
        }

        .autoLogin_box {
            margin-bottom: 10px;
        }

        .autoLogin_box label {
            font-size: 14px;
        }

        .regi {
            width: 100%;
            border-bottom: 1px solid #b0b0b0;
            margin-top: 10px;
            padding: 0px 0px 10px 0px;
        }

        .regi a {
            color: black;
            font-size: 14px;
        }

        .login_form {
            margin-bottom: 20px;
        }

    </style>
    
    <!-- 자바스크립트 라이브러리 및 SDK -->
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
 
    </script>
</head>

<body>
    <section class="content_zone content_zone1">
        <div class="content_zone_wrap">
           <div class="login_container">
                <h1>관리자 로그인</h1>
                <!-- admin 폼 -->
                <div id="personalForm">
                    <form action="/admin_success" method="post">
                        <p id="input_id" class="text_deco" >아이디 </p>
                        <input class="put_user" type="text" placeholder="아이디 입력" name="user_id">
                        <p id="input_pw" class="text_deco">비밀번호 </p>
                        <input class="put_user" type="password" placeholder="비밀번호 입력" name="user_pw">
                        <input class="login_btn" type="submit" value="로그인">
                    </form>
                </div>

            </div>
        </div>
    </section>
</body>
</html>