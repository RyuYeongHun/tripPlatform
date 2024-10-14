<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Nearby Locations</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7faa1b5042e8cffab85500d73eb2605&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
	function initMap() {
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표 (서울)
			level : 11
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		var gpsPoints = JSON.parse('${gpsPoints}');
		console.log(gpsPoints);

    gpsPoints.forEach(function(point) {
			console.log(point.x+":"+ point.y);
			var markerPosition = new kakao.maps.LatLng(point.x, point.y);
			var marker = new kakao.maps.Marker({
				position : markerPosition
				
			});

			marker.setMap(map);
		});
	}
</script>
</head>
<body onload="initMap()">
	<h1>GPS Points Map</h1>
	<div id="map" style="height: 500px; width: 100%;"></div>
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
