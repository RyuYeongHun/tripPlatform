<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Nearby Locations</title>
</head>
<body>
    <h1>Nearby Locations</h1>
    <table border="1">
        <thead>
            <tr>
                <th>AREACODE</th>
                <th>SIGUNGUCODE</th>
                <th>TITLE</th>
                <th>ADDR1</th>
                <th>MAPX</th>
                <th>MAPY</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="location" items="${locations}">
                <tr>
                    <td>${location.areacode}</td>
                    <td>${location.sigungucode}</td>
                    <td>${location.title}</td>
                    <td>${location.addr1}</td>
                    <td>${location.mapx}</td>
                    <td>${location.mapy}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
