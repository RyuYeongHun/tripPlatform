<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 목록</title>
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
            list-style: none;
            margin: 0;
        }
        .content_section {
            width: calc(100% - 250px);
            margin-top: 4rem;
            margin-left: 250px;
        }
        .content_wrap {
            padding: 30px 40px;
        }
        .page_title {
            margin-bottom: 20px;
        }
        .page_sub {
            margin-bottom: 30px;
        }
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .pagination ul {
            list-style: none;
            padding: 0;
        }
        .pagination li {
            display: inline-block;
            margin: 0 5px;
        }
        .pagination li a {
            text-decoration: none;
            padding: 5px 10px;
            background-color: #f1f1f1;
            border: 1px solid #ddd;
            color: #333;
        }
        .pagination li.active a {
            background-color: #4CAF50;
            color: white;
        }
        .pagination li a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>

    <%@ include file="/WEB-INF/views/include/header_adm.jsp" %>
    
    <div class="content_section">
        <div class="content_wrap">
            <h1 class="page_title">사용자 목록 관리</h1>
            <p class="page_sub">전체 사용자 목록을 확인하세요.</p>
            
            <table border="1" cellspacing="0" cellpadding="10" width="100%">
                <thead>
                    <tr>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>이메일</th>
                        <th>회원 탈퇴</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.user_id}</td>
                            <td>${user.user_name}</td>
                            <td>${user.email}</td>
                            <td>
                            	<form action="${pageContext.request.contextPath}/userDelete" method="post" onsubmit="return confirm('정말 탈퇴시키겠습니까?');">
                   		 			<input type="hidden" name="user_id" value="${user.user_id}">
                    				<button type="submit" style="background-color: red; color: white; border: none; padding: 5px 10px; cursor: pointer;">탈퇴</button>
               					 </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="pagination">
                <c:if test="${totalPages > 1}">
                    <nav>
                        <ul class="pagination">
                            <c:if test="${currentPage > 1}">
                                <li><a href="?page=${currentPage - 1}&size=${size}">&lt;</a></li>
                            </c:if>

                            <c:forEach begin="1" end="${totalPages}" var="page">
                                <li class="${page == currentPage ? 'active' : ''}">
                                    <a href="?page=${page}&size=${size}">${page}</a>
                                </li>
                            </c:forEach>

                            <c:if test="${currentPage < totalPages}">
                                <li><a href="?page=${currentPage + 1}&size=${size}">&gt;</a></li>
                            </c:if>
                        </ul>
                    </nav>
                </c:if>
            </div>

        </div>
    </div>

</body>
</html>
