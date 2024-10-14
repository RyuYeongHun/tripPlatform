<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>여행 일정</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            color: #2c3e50;
        }
        h3 {
            color: #2980b9;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
        }
        strong {
            display: block;
            font-size: 16px;
            color: #e74c3c;
        }
        /* Tabs styling */
        .tabs {
            display: flex;
            cursor: pointer;
            margin-bottom: 20px;
        }
        .tab {
            flex: 1;
            padding: 10px;
            text-align: center;
            background-color: #f1f1f1;
            border: 1px solid #ddd;
            border-bottom: none;
            margin-right: 5px;
            user-select: none;
        }
        .tab.active {
            background-color: #ffffff;
            border-top: 2px solid #2980b9;
            font-weight: bold;
        }
        .tab-content {
            display: none;
            border: 1px solid #ddd;
            padding: 10px;
        }
        .tab-content.active {
            display: block;
        }
    </style>
    <!-- jQuery Library -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

    <h2>여행 일정</h2>

    <!-- 선택한 일정을 표시 -->
    <c:choose>
        <c:when test="${nights == 1}">
            <h3>선택된 일정: 당일여행</h3>
        </c:when>
        <c:when test="${nights == 2}">
            <h3>선택된 일정: 1박 2일</h3>
        </c:when>
        <c:when test="${nights == 3}">
            <h3>선택된 일정: 2박 3일</h3>
        </c:when>
        <c:otherwise>
            <h3>선택된 일정: ${nights}박 ${nights + 1}일</h3>
        </c:otherwise>
    </c:choose>

    <!-- Tabs for Days -->
    <div class="tabs">
        <c:forEach var="dayAssignment" items="${productDayRandomVo.dayAssignments}">
            <div class="tab" data-day="${dayAssignment.day}">
                Day ${dayAssignment.day}
            </div>
        </c:forEach>
        <div class="tab" data-day="all">
            전체 상품 목록
        </div>
    </div>

    <!-- Tab Contents -->
    <c:forEach var="dayAssignment" items="${productDayRandomVo.dayAssignments}">
        <div id="day-${dayAssignment.day}" class="tab-content">
            <h3>Day ${dayAssignment.day}</h3>
            <ul>
                <c:forEach var="product" items="${dayAssignment.products}">
                    <li>
                        <strong>${product.title}</strong>
                        상품 ID: ${product.bolgguri_id}<br>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </c:forEach>
    <div id="day-all" class="tab-content">
        <h3>전체 상품 목록</h3>
        <ul>
            <c:forEach var="dayAssignment" items="${productDayRandomVo.dayAssignments}">
                <c:forEach var="product" items="${dayAssignment.products}">
                    <li>
                        <strong>${product.title}</strong>
                        상품 ID: ${product.bolgguri_id}<br>
                        일정: Day ${dayAssignment.day}<br>
                    </li>
                </c:forEach>
            </c:forEach>
        </ul>
    </div>

    <script>
        $(document).ready(function() {
            // Function to show the tab content
            function showTabContent(day) {
                // Remove active class from all tabs and contents
                $('.tab').removeClass('active');
                $('.tab-content').removeClass('active');

                // Add active class to the selected tab
                $('.tab[data-day="' + day + '"]').addClass('active');

                // Show the corresponding tab content
                if (day === 'all') {
                    $('#day-all').addClass('active');
                } else {
                    $('#day-' + day).addClass('active');
                }
            }

            // Set default active tab
            showTabContent('all');

            // Tab click event handler
            $('.tab').click(function() {
                var day = $(this).data('day');
                showTabContent(day);
            });
        });
    </script>

</body>
</html>