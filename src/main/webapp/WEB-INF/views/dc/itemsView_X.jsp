<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Items List</title>
</head>
<body>
    <h1>Items List</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Sub Description</th>
                <th>Reference</th>
                <th>Rights</th>
                <th>Source</th>
                <th>Spatial</th>
                <th>Data Std Dt</th>
                <th>Data Offer Inst</th>
                <th>Restaurant Name</th>
                <th>Road Address</th>
                <th>Latitude</th>
                <th>Longitude</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${items}">
                <tr>
                    <td><c:out value="${item.title}"/></td>
                    <td><c:out value="${item.description}"/></td>
                    <td><c:out value="${item.subDescription}"/></td>
                    <td><c:out value="${item.reference}"/></td>
                    <td><c:out value="${item.rights}"/></td>
                    <td><c:out value="${item.source}"/></td>
                    <td><c:out value="${item.spatial}"/></td>
                    <td><c:out value="${item.dataStdDt}"/></td>
                    <td><c:out value="${item.dataOfferInst}"/></td>
                    <td><c:out value="${item.rstrNm}"/></td>
                    <td><c:out value="${item.rstrRoadAddr}"/></td>
                    <td><c:out value="${item.rstrLatPos}"/></td>
                    <td><c:out value="${item.rstrLotPos}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
