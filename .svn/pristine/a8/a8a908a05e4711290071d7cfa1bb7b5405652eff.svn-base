<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${board.title}</title>
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

        /*컨텐츠 section*/
        .content_zone {
            width: 100%;
            display: flex;
            justify-content: center;
        }

        .content_zone .content_zone_wrap {
            width: 100%;
            max-width: 57rem;
            margin-top: 7rem;
        }

        .post-title {
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .post-meta {
            color: gray;
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }

        .post-content {
            margin-top: 1rem;
            white-space: pre-wrap; /* Preserve line breaks in content */
            margin-bottom: 2rem;
        }

        .button-group {
            margin-top: 5px;
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .button-group button {
            padding: 0.5rem;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            width: 100px; /* 버튼의 너비를 100px로 설정 */
            transition: background-color 0.3s; /* 배경색 변화에 부드러운 효과 추가 */
        }

        .button-group button:hover {
            background-color: #0056b3;
        }

        /* 삭제 버튼 스타일 추가 */
        .change button {
            padding: 0.5rem;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            width: 100px; /* 버튼의 너비를 100px로 설정 */
            transition: background-color 0.3s; /* 배경색 변화에 부드러운 효과 추가 */
        }

        .change button:hover {
            background-color: #0056b3; /* 삭제 버튼 호버 색상 */
        }

        .left-wrap {
            display: flex;
            justify-content: left;
        }

        .left-wrap button {
            margin-right: 5px;
        }

        .heart-icon {
            cursor: pointer;
            color: grey; /* 기본 색상 */
        }

        .material-icons-outlined {
            color: red; /* 색칠된 상태 색상 */
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/views/include/header.jsp"%>

    <section class="content_zone">
        <div class="content_zone_wrap">
            <div class="post-title">
                <c:out value="${board.title != null ? board.title : '제목 없음'}" />
            </div>
            <hr>
            <div class="post-content">${board.content}</div>
            <div class="post-meta">작성자: ${board.writer} | 작성일:
                ${board.created_At.toString()} | 조회수: ${board.views} | 좋아요:
                ${board.likes}
                <span class="heart-icon material-symbols-outlined" id="like-icon" data-id="${board.id}">favorite</span>
            </div>

            <div class="button-group">
                <c:if test="${board.writer == sessionScope.user_id}">
                    <div class="left-wrap">
                        <button onclick="location.href='/freeboard/edit?id=${board.id}'">수정</button>
                        <form action="/freeboard/delete" method="post" style="display: inline;">
                            <input type="hidden" name="id" value="${board.id}">
                            <button type="submit">삭제</button>
                        </form>
                    </div>
                </c:if>

                <script>
                    document.getElementById('like-icon').addEventListener('click', function() {
                        this.classList.toggle('material-icons-outlined');
                        this.classList.toggle('material-symbols-outlined');

                        var boardId = this.getAttribute('data-id');
                        fetch('/freeboard/like', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/x-www-form-urlencoded',
                            },
                            body: new URLSearchParams({ id: boardId })
                        })
                        .then(response => response.text())
                        .then(data => {
                            if (data === 'success') {
                                alert('좋아요가 반영되었습니다.');
                                location.reload(); // 좋아요 수를 업데이트하기 위해 페이지를 새로고침
                            }
                        });
                    });
                </script>

                <div class="another">
                    <button onclick="location.href='/freeboard'">목록으로</button>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
    <%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
    <%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>
</body>
</html>
