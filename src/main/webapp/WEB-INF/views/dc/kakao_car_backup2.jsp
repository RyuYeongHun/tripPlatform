<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 길찾기 예제</title>
<!-- 카카오 지도 API를 불러옵니다 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7faa1b5042e8cffab85500d73eb2605&libraries=services,clusterer,drawing"></script>
<script>
	var map;
	var startMarker = null; // 시작점 마커
	var endMarker = null; // 도착점 마커
	var icMarker = null; //ic마커
	var icInfoWidow = null;
	var polyline = null; // 경로 폴리라인
	var routes = null;
	var response = null;
	//let clickListener;

	$(document).ready(function() {
		showMap();
		$('#selOriginBtn').click(checkStart);
		$('#selEndBtn').click(checkEnd);
		$("#showMap").click(showMap);

	});
	function checkStart() {
		if (startMarker !== null) {
			startMarker.setMap(null); // 이전 마커 제거
		}
		var clickHandler = function(mouseEvent) {
			alert('click: ' + mouseEvent.latLng.toString());
			var latlng = mouseEvent.latLng;

			startMarker = new kakao.maps.Marker({
				position : latlng,
				map : map
			});

			document.getElementById('origin').innerText = '시작점 좌표: 위도 '
					+ latlng.getLat() + ', 경도 ' + latlng.getLng();
			$("#startXlat").val(latlng.getLat());
			$("#startYlng").val(latlng.getLng());
			kakao.maps.event.removeListener(map, 'click', clickHandler);
		};
		kakao.maps.event.addListener(map, 'click', clickHandler);

	}

	function checkEnd() {
		if (endMarker !== null) {
			endMarker.setMap(null); // 이전 마커 제거
		}
		
		var clickHandler = function(mouseEvent) {
			alert('click: ' + mouseEvent.latLng.toString());
			var latlng = mouseEvent.latLng;

			startMarker = new kakao.maps.Marker({
				position : latlng,
				map : map
			});

			document.getElementById('destination').innerText = '도착점 좌표: 위도 '
					+ latlng.getLat() + ', 경도 ' + latlng.getLng();
			$("#endXlat").val(latlng.getLat());
			$("#endYlng").val(latlng.getLng());
			kakao.maps.event.removeListener(map, 'click', clickHandler);
		};
		kakao.maps.event.addListener(map, 'click', clickHandler);
	}

	function showMap() {
		// 지도를 생성합니다
		var mapContainer = document.getElementById('map'), mapOption = {
			center : new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심 좌표 (서울 시청 기준)
			level : 12
		// 지도의 확대 레벨
		};

		map = new kakao.maps.Map(mapContainer, mapOption);// 지도 생성

		// 출발지와 목적지 좌표를 설정합니다
		//var origin = "127.1054328,37.3595963"; // 출발지 좌표
		var origin_lat = $("#startXlat").val();
		var origin_lng = $("#startYlng").val();
		var origin = origin_lng + "," + origin_lat; // 출발지 좌표
		console.log("origin :" + origin);
		//var destination = "127.1088035,37.4020733"; // 목적지 좌표
		var destination_lat = $("#endXlat").val();
		var destination_lng = $("#endYlng").val();
		var destination = destination_lng + "," + destination_lat;
		console.log("destination :" + destination);

		// 자동차 길찾기 API를 호출합니다
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "https://apis-navi.kakaomobility.com/v1/directions?origin="
				+ origin + "&destination=" + destination + "&road_details=true", true);
		xhr.setRequestHeader("Authorization",
				"KakaoAK 70e9f6f25e81ba5f30cddeb16cc1f856");

		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status === 200) {
				response = JSON.parse(xhr.responseText);
				console.log("response", response);
				routes = response.routes[0].sections[0].roads;
				console.log("routes", routes);

				//IC 정보 가져오기
				var icInfo = response.routes[0].sections[0].guides;
				console.log("icInfo:", icInfo);
				var tableBody = $('#icTable tbody');
				tableBody.empty();
				console.log("icInfo.lenght", icInfo.length);
				for (var i = 0, j = 1; i < icInfo.length; i++) {
					var ic = icInfo[i];
					console.log("ic" + ic);
					if (ic.name.includes("IC")) {
						console.log(ic.name, ic.x, ic.y);
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(j++));
						newRow.append($('<td></td>').text(ic.name));
						newRow.append($('<td></td>').text(ic.y));
						newRow.append($('<td></td>').text(ic.x));
						newRow.append($('<td></td>').text(ic.distance));

						//마커,인포 윈도우 생성
						icMarker = new kakao.maps.Marker({
							position : new kakao.maps.LatLng(ic.y, ic.x),
							map : map,
							title : ic.name
						});
						icMarker.setMap(map);
						/*   					icInfoWindow = new kakao.maps.InfoWindow({
						 position: new kakao.maps.LatLng(ic.y,ic.x),
						 content: ic.name
						 }); 
						 icInfoWindow.open(map,icMarker);  */

					}
					tableBody.append(newRow);

				}

				var linePath = [];
				//debugger;
				// 경로 데이터를 변환하여 지도에 표시할 수 있도록 합니다
				for (var i = 0; i < routes.length; i++) {
					var road = routes[i];
					for (var j = 0; j < road.vertexes.length; j += 2) {
						var lat = road.vertexes[j + 1];
						var lng = road.vertexes[j];
						linePath.push(new kakao.maps.LatLng(lat, lng));
					}
				}

				// 경로를 따라 폴리라인을 그립니다
				var polyline = new kakao.maps.Polyline({
					path : linePath, // 폴리라인 경로를 설정합니다
					strokeWeight : 5, // 선의 두께
					strokeColor : '#FF0000', // 선의 색깔
					strokeOpacity : 0.8, // 선의 불투명도
					strokeStyle : 'solid' // 선의 스타일
				});

				polyline.setMap(map); // 지도에 경로를 표시합니다

				// 출발지와 목적지에 마커를 표시합니다
				var startMarker = new kakao.maps.Marker({
					position : new kakao.maps.LatLng(origin_lat, origin_lng),
					map : map,
					title : "출발지"
				});
				var startMarkerinfo = new kakao.maps.InfoWindow({
					map : map,
					position : new kakao.maps.LatLng(origin_lat, origin_lng),
					content : '<div style="background-color: yellow;">출발지</div>'
				});

				var endMarker = new kakao.maps.Marker({
					position : new kakao.maps.LatLng(destination_lat, destination_lng),
					map : map,
					title : "목적지"
				});
				var endMarkerinfo = new kakao.maps.InfoWindow({
					map : map,
					position : new kakao.maps.LatLng(destination_lat, destination_lng),
					content : '<div style="background-color: yellow;">목적지</div>'
				});

				// 지도 중심을 경로의 중간지점으로 이동합니다
				var bounds = new kakao.maps.LatLngBounds();
				bounds.extend(new kakao.maps.LatLng(origin_lat, origin_lng));
				bounds.extend(new kakao.maps.LatLng(destination_lat, destination_lng));
				map.setBounds(bounds);
			}
		};

		xhr.send();

		//
	}
</script>
</head>
<body>
	<h1>카카오 길찾기</h1>

	<h2>카카오 지도 시작점 선택</h2>
	<button id="selOriginBtn">출발지 선택</button>
	<div id="origin"></div>
	위도(lat)
	<input type="text" id="startXlat" value="37.596690572396454"> 경도(lng)
	<input type="text" id="startYlng" value="126.67263577746134">(기본값: 인천 서구 마전동 동아아파트)
	<br>

	<button id="selEndBtn">목적지 선택</button>
	<div id="destination"></div>
	위도(lat)
	<input type="text" id="endXlat" value="35.1870282870"> 경도(lng)
	<input type="text" id="endYlng" value="129.0917658723">(기본값: 부산)
	<br>
	<button id="showMap">경로 보기</button>
	<hr>
	<div id="result"></div>
	<div id="map" style="width: 100%; height: 500px;"></div>
	<hr>
	<table id="icTable" border=1>
		<thead>
			<tr>
				<th>index</th>
				<th>IC이름</th>
				<th>X</th>
				<th>Y</th>
				<th>distance</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>
