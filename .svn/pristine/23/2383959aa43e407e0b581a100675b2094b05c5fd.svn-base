<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>볼꺼리 여행</title>
<style>
button {
	display: inline;
}

.info-title {
	display: block;
	background: #50627F;
	color: #fff;
	text-align: center;
	height: 24px;
	line-height: 22px;
	border-radius: 4px;
	padding: 0px 5px;
}

.icTable {
	border-collapse: collapse;
	border: 1px solid black;
}
.icTable th {
	background-color:lightgray;
}
.icTable th,
.icTable tr td:nth-child(1),
.icTable tr td:nth-child(2) {
    text-align: center;
}

td, th {
	border: 1px solid black;
	text-align: right;
}
</style>
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
	//var icInfo=[];
	var coordinate = [];
	var markers = [];// 지도에 표시된 마커 객체를 가지고 있을 배열
	var markerInfoWindows = [];//마커 인포윈도우 배열

	//let clickListener;

	$(document).ready(function() {
		getUserLocation();	
		$('#selOriginBtn').click(checkStart);
		$('#selEndBtn').click(checkEnd);
		$("#showMap").click(showMap);
		$('#delMarker').click(delMarker);
		$('#zoomIn').click(zoomIn);
		$('#zoomOut').click(zoomOut);

	});
	function getUserLocation() {
		// Geolocation API를 지원하는지 확인
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(
			// 위치 정보를 성공적으로 가져온 경우 실행되는 함수
			function(position) {
				const latitude = position.coords.latitude; // 위도
				const longitude = position.coords.longitude; // 경도
				$("#startXlat").val(latitude);
				$("#startXlng").val(longitude);

				console.log(`위도: ${latitude}, 경도: ${longitude}`);
				// 여기서 위도와 경도를 기반으로 다른 작업을 수행할 수 있음
				showMap();
			},
			// 위치 정보를 가져오는 데 실패한 경우 실행되는 함수
			function(error) {
				console.error("위치 정보를 가져오는 데 실패했습니다:", error);
			});
		} else {
			console.error("이 브라우저는 Geolocation을 지원하지 않습니다.");
		}
	}
	function addSecondsToCurrentTime(secondsToAdd) {
		// 현재 시간을 가져오기
		const currentTime = new Date();

		// 초를 현재 시간에 더하기
		currentTime.setSeconds(currentTime.getSeconds() + secondsToAdd);

		// 시간, 분, 초 추출
		const hours = currentTime.getHours();
		const minutes = currentTime.getMinutes();
		const seconds = currentTime.getSeconds();

		return hours + '시 ' + minutes + '분 ';
	}

	function secondsToHMS(seconds) {
		const hours = Math.floor(seconds / 3600);
		seconds %= 3600;
		const minutes = Math.floor(seconds / 60);
		seconds %= 60;
		if (hours == 0) {
			return minutes + '분 ';
		}
		return hours + '시간 ' + minutes + '분 ';
	}
	function delMarker() {
		setMarkers(null);
		/* 		startMarkerinfo.close();
		 markerInfo.close(); */
	}
	function setMarkers(map) {
		console.log("markers[]", delMarker);
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(map);
		}
		for (var i = 0; i < markerInfoWindows.length; i++) {
			markerInfoWindows[i].setMap(null);
		}
	}
	function zoomIn() {
		var level = map.getLevel();
		map.setLevel(level - 1);
		displayLevel();
	}
	function zoomOut() {
		var level = map.getLevel();
		map.setLevel(level + 1);
		displayLevel();
	}
	function addMarker(position, title, contentid) {
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : position
		});
		marker.setMap(map);// 마커가 지도 위에 표시되도록 설정합니다		
		markers.push(marker);// 생성된 마커를 배열에 추가합니다

		var customOverlay = new kakao.maps.CustomOverlay({// 커스텀 오버레이를 생성
			position : position,
			content : '<a href="/" id="' + contentid + '"><span class="info-title">' + title + '</span></a>',
			xAnchor : 0,
			yAnchor : 1
		});
		markerInfoWindows.push(customOverlay);
		// 커스텀 오버레이를 지도에 표시합니다
		customOverlay.setMap(map);
	}
	function myAjaxFunction() {

		console.log("coordinate", coordinate);
		// AJAX 요청
		const xhr = new XMLHttpRequest();
		xhr.open("POST", "/processArray", true);
		xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
		// 응답이 돌아왔을 때 처리하는 콜백 함수
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status === 200) {
				// 서버에서 받은 JSON 배열을 자바스크립트 변수로 저장
				const nearBolgguri = JSON.parse(xhr.responseText);
				console.log("Received nearBolgguri:", nearBolgguri);

				// 주변 꺼리 좌표 가져와 화면에 표시
				nearBolgguri.forEach(function(point) {
					console.log(point.x + ":" + point.y + ":" + point.title);

					addMarker(new kakao.maps.LatLng(point.x, point.y), point.title, point.contentid);

					/* markerInfo = new kakao.maps.InfoWindow({// 인포윈도우를 생성
						position : new kakao.maps.LatLng(point.x, point.y),
						content : point.title
					});
					markerInfo.open(map, marker); */// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시
				});
			}
		};
		// 서버로 배열을 JSON 형태로 전송
		xhr.send(JSON.stringify(coordinate));
	}

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
				coordinate = [];// ajax 요청할 ic 좌표 배열를  초기화
				var duration_sum = 0;//소요시간 합
				for (var i = 0, j = 1; i < icInfo.length; i++) {
					var ic = icInfo[i];
					console.log("ic" + ic);
					duration_sum += ic.duration;
					if (ic.name.includes("IC")) {
						console.log(ic.name, ic.x, ic.y);

						coordinate.push({
							title : $('#radius').val(), //radius
							x : ic.y,
							y : ic.x
						});

						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(j++));
						newRow.append($('<td></td>').text(ic.name));
						newRow.append($('<td></td>').text(ic.y));
						newRow.append($('<td></td>').text(ic.x));
						newRow.append($('<td></td>').text(ic.distance));
						newRow.append($('<td></td>').text(ic.duration));
						newRow.append($('<td></td>').text(duration_sum));
						newRow.append($('<td></td>').text(secondsToHMS(duration_sum)));
						newRow.append($('<td></td>').text(
								addSecondsToCurrentTime(duration_sum)));
						//addMarker(new kakao.maps.LatLng(ic.y, ic.x), ic.name);
						//마커,인포 윈도우 생성
						/* icMarker = new kakao.maps.Marker({
							position : new kakao.maps.LatLng(ic.y, ic.x),
							map : map,
							title : ic.name
						});
						icMarker.setMap(map); */
						/*   					icInfoWindow = new kakao.maps.InfoWindow({
						 position: new kakao.maps.LatLng(ic.y,ic.x),
						 content: ic.name
						 }); 
						 icInfoWindow.open(map,icMarker);  */

					}
					tableBody.append(newRow);

				}
				var duration_arrived = duration_sum;
				$('#arrivedTime').text(
						'소요시간: ' + secondsToHMS(duration_arrived) + '(도착시간:'
								+ addSecondsToCurrentTime(duration_arrived) + ')');
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
				var startMarker = new kakao.maps.Marker(
						{
							position : new kakao.maps.LatLng(origin_lat, origin_lng),
							map : map,
							title : "출발지",
							image : new kakao.maps.MarkerImage(
									'/resources/dc/image/markerStar.png', new kakao.maps.Size(24,
											35))
						});
				var customOverlay = new kakao.maps.CustomOverlay(
						{// 커스텀 오버레이를 생성
							position : new kakao.maps.LatLng(origin_lat, origin_lng),
							content : '<span class="info-title" style=" background-color: violet;">출발지</span>',
							xAnchor : 0,
							yAnchor : 1
						});
				markerInfoWindows.push(customOverlay);
				customOverlay.setMap(map);// 커스텀 오버레이를 지도에 표시

				var endMarker = new kakao.maps.Marker(
						{
							position : new kakao.maps.LatLng(destination_lat, destination_lng),
							map : map,
							title : "목적지",
							image : new kakao.maps.MarkerImage(
									'/resources/dc/image/markerStar.png', new kakao.maps.Size(24,
											35))
						});

				customOverlay = new kakao.maps.CustomOverlay(
						{// 커스텀 오버레이를 생성
							position : new kakao.maps.LatLng(destination_lat, destination_lng),
							content : '<span class="info-title" style=" background-color: violet;">목적지</span>',
							xAnchor : 0,
							yAnchor : 1
						});
				markerInfoWindows.push(customOverlay);
				// 커스텀 오버레이를 지도에 표시합니다
				customOverlay.setMap(map);

				// 지도 중심을 경로의 중간지점으로 이동합니다
				var bounds = new kakao.maps.LatLngBounds();
				bounds.extend(new kakao.maps.LatLng(origin_lat, origin_lng));
				bounds.extend(new kakao.maps.LatLng(destination_lat, destination_lng));
				map.setBounds(bounds);

				myAjaxFunction();
			}
		};

		xhr.send();

		//
	}
</script>
</head>
<body>
	<h1>볼꺼리 여행</h1>
	<button id="selOriginBtn">출발지 선택</button>
	위도(lat)
	<input type="text" id="startXlat" value="37.596690572396454"> 경도(lng)
	<input type="text" id="startYlng" value="126.67263577746134">(기본값: 인천 서구 마전동 동아아파트)
	<br>

	<button id="selEndBtn">목적지 선택</button>
	위도(lat)
	<input type="text" id="endXlat" value="38.07557169747447"> 경도(lng)
	<input type="text" id="endYlng" value="128.61887150148573">(기본값: 강원도 양양)
	<br> 검색 반경
	<input type="text" id="radius" value="5"> km
	<br>
	<button id="showMap">경로 보기</button>
	<div id='arrivedTime'></div>
	<hr>
	<button id="delMarker">마커 지우기</button>
	<button id="zoomIn">Zom In(확대)</button>
	<button id="zoomOut">Zoom Out(축소)</button>
	<div id="result"></div>
	<div id="map" style="width: 100%; height: 500px;"></div>
	<hr>
	<table id="icTable" class='icTable'>
		<thead>
			<tr>
				<th>index</th>
				<th>IC이름</th>
				<th>X</th>
				<th>Y</th>
				<th>distance</th>
				<th>duration</th>
				<th>duration_sum</th>
				<th>소요시간</th>
				<th>도착시간</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>
