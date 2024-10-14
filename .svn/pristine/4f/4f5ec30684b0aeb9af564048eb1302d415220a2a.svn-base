<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>공지사항 상세</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Noto Sans KR", sans-serif;
        }

        body {
            background-color: #f4f4f4;
            color: #333;
        }

        .content_zone {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 20px;
        }

        .content_zone_wrap {
            width: 100%;
            margin-top: 30px;
            max-width: 57rem;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        #center-title {
            font-family: 'Jua', sans-serif;
            text-align: center;
            font-size: xx-large;
            margin-bottom: 20px;
        }

        .faq {
            border: 1px solid #ddd;
            background-color: #fff;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .faq p.question {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #007BFF;
        }

        .faq .answer pre {
            white-space: pre-wrap;
            word-break: break-word;
            background-color: #f7f7f7;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ddd;
            margin: 10px 0;
        }

        .actions {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .actions a, .actions .delete-button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            font-size: medium;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        .actions a:hover, .actions .delete-button:hover {
            background-color: #0056b3;
        }

        .delete-button {
            background-color: #dc3545;
            color: white;
            border: none;
        }

        .delete-button:hover {
            background-color: #c82333;
        }

        .actions .delete-button {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/views/include/header.jsp" %>

    <section class="content_zone content_zone1">
        <div class="content_zone_wrap">
            <div class="main">
                <div class="center">
                    <p id="center-title">공지사항 상세보기</p>

                    <div class="faq">
                        <p class="question">[${faq.category}] ${faq.question}</p>
                        <div class="answer">
                            <pre>${faq.answer}</pre>
                        </div>
                        <div class="actions">
                            <a href="update?id=${faq.id}" class="nav-button">수정</a>
                            <form action="delete" method="get" style="display:inline;">
                                <input type="hidden" name="id" value="${faq.id}">
                                <input type="submit" value="삭제" class="delete-button">
                            </form>
                            <a href="Uannouncement" class="nav-button">목록으로 돌아가기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/WEB-INF/views/include/normal_footer.jsp" %>
    <%@ include file="/WEB-INF/views/include/sitemap.jsp" %>
    <%@ include file="/WEB-INF/views/include/quick_footer.jsp" %>
</body>
</html>

