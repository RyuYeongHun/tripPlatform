<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/dc/css/nearBolgguri.css">
</head>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f0f2f5;
	color: #333;
	margin: 0;
	padding: 20px;
	box-sizing: border-box;
}

h1 {
	color: #4A90E2;
	text-align: center;
	margin-bottom: 20px;
}

button {
	background-color: #4A90E2;
	color: white;
	border: none;
	padding: 10px 20px;
	margin: 2px 0;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #357ABD;
}

input {
	display: inline-block;
}

input[type="text"] {
	padding: 7px;
	border: 1px solid #ddd;
	border-radius: 5px;
	margin: 2px 0;
	width: calc(100% - 24px);
	box-sizing: border-box;
}

#map {
	margin-top: 20px;
	border: 1px solid #ddd;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

#result {
	margin-top: 20px;
	font-size: 18px;
	color: #4A90E2;
}

hr {
	border: none;
	border-top: 1px solid #ddd;
	margin: 20px 0;
}

.coordinate-container {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	align-items: center;
	gap: 2px; /* 요소 간의 간격을 조절 */
	margin-bottom: 2px; /* 다른 요소들과의 간격을 조절 */
}

.coordinate-container input[type="text"] {
	flex: 1; /* 입력 필드가 충분한 공간을 차지하도록 설정 */
	max-width: 150px; /* 입력 필드의 최대 너비 설정 */
	text-align: right;
}

#selOriginBtn {
	width: 200px; /* 버튼 너비 설정 */
	/*height: 90px;*/ /* 버튼 높이 설정 */
}

.checkbox-container {
	display: flex;
}

input[type="checkbox"] {
	margin-right: 10px;
}

@media ( max-width : 600px) {
	button, input[type="text"] {
		width: 49%;
		margin: 2px 0;
	}
	#map {
		height: 400px;
	}
	.button-coordinate {
		width: 32.5%;
	}
	.checkbox-container {
		display: flex;
		flex-wrap: wrap;
	}
	.checkbox-item {
		display: flex;
		align-items: center;
		margin-right: 10px; /* 체크박스 간 간격 조절 */
	}
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7faa1b5042e8cffab85500d73eb2605&libraries=services,clusterer,drawing"></script>
<script>
	var map = null;
	var startMarker = null; // 시작점 마커
	var coordinate = []; //주변 볼꺼리를 불러올 target 좌표
	var startMarkerinfo = null;
	var marker = null;//주변 관광지 마커
	var markerInfo = null;//주변 관광지마커인포윈도우
	var origin_lat = null;
	var origin_lng = null;
	var markers = [];// 지도에 표시된 마커 객체를 가지고 있을 배열
	var markerInfoWindows = [];//마커 인포윈도우 배열
	var circles = [];

	$(document).ready(function() {
		getUserLocation();
		$('#selOriginBtn').click(chkPosition);
		$('#showMap').click(showMap);
		$('#delMarker').click(delMarker);
		$('#zoomIn').click(zoomIn);
		$('#zoomOut').click(zoomOut);
		$('#myplace').click(getUserLocation);
	});
	function getUserLocation() {
		// Geolocation API를 지원하는지 확인
		if (navigator.geolocation) {
			const options = {
				enableHighAccuracy : true,
				timeout : 10000, // 10초 동안 위치를 가져오지 못하면 타임아웃 발생
				maximumAge : 0
			// 위치 정보를 캐싱하지 않음
			};

			navigator.geolocation.getCurrentPosition(
			// 위치 정보를 성공적으로 가져온 경우 실행되는 함수
			function(position) {
				origin_lat = position.coords.latitude; // 위도
				origin_lng = position.coords.longitude; // 경도
				const accuracy = position.coords.accuracy;//정확도 미터
				$("#startXlat").val(origin_lat);
				$("#startYlng").val(origin_lng);

				console.log('위도: ', origin_lat, ', 경도: ', origin_lng, ', 정확도: ', accuracy,'미터');
				showMap();
			},
			// 위치 정보를 가져오는 데 실패한 경우 실행되는 함수
			function(error) {
				switch (error.code) {
				case error.PERMISSION_DENIED:
					console.error("사용자가 위치 정보 제공을 거부했습니다.");
					alert("위치 정보 제공을 허용해주세요.");
					break;
				case error.POSITION_UNAVAILABLE:
					console.error("위치 정보를 사용할 수 없습니다.");
					alert("위치 정보를 사용할 수 없습니다. 다시 시도해주세요.");
					break;
				case error.TIMEOUT:
					console.error("위치 정보를 가져오는 시간이 초과되었습니다.");
					alert("위치 정보를 가져오는 데 시간이 너무 오래 걸립니다. 다시 시도해주세요.");
					break;
				default:
					console.error("알 수 없는 오류가 발생했습니다.");
					alert("위치 정보를 가져오는 도중 오류가 발생했습니다. 다시 시도해주세요.");
					break;
				}
			}, options);
		} else {
			console.error("이 브라우저는 Geolocation을 지원하지 않습니다.");
		}
	}
	function showFirstImage(element, firstimage) {
		if (firstimage && firstimage != 'undefined') {

			console.log("firstimage", firstimage);
			// 이미 존재하는 이미지가 있는지 확인
			var existingImg = element.parentNode.querySelector('img');
			if (existingImg) {
				return; // 이미 이미지가 존재하면 함수를 종료
			}

			// 이미지 태그 생성
			var img = document.createElement('img');
			img.src = firstimage;
			img.style.width = '200px'; // 이미지 크기 설정
			img.style.height = '150px';
			img.style.position = 'absolute'; // 이미지 위치를 절대값으로 설정
			img.style.top = '-150px'; // 이미지 위치 설정 (상단)
			img.style.left = '0%'; // 이미지 위치 설정 (링크 오른쪽)

			// 링크 태그 뒤에 이미지 추가
			element.parentNode.appendChild(img);
			// 마우스가 이미지에서 떠날 때 이미지를 제거하는 이벤트 추가
			element.addEventListener('mouseleave', function handler() {
				element.parentNode.removeChild(img);
				element.removeEventListener('mouseleave', handler); // 이벤트 핸들러 제거
			});
		} else {
			console.log("Invalid firstimage:", firstimage);
		}
	}
	function addMarker(position, title, contentid, cat1, firstimage) {
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : position
		});
		marker.setMap(map);// 마커가 지도 위에 표시되도록 설정합니다		
		markers.push(marker);// 생성된 마커를 배열에 추가합니다
		console.log("cat1:", cat1,contentid);
		if (cat1 == '자연') {
			/* var iwContent = '<a href="/" id="' + contentid + '" onmouseover="showFirstImage(this,"'+firstimage +'")>'
					+'<span class="info-cat1">'					
					+ title + '</span></a>'; */
			/* var iwContent = '<a href="/" id="' + contentid + '" onmouseover="showFirstImage(this,\'' + firstimage + '\')">'
			+ '<span class="info-cat1">'
			+ title + '</span></a>'; */
			iwContent = '<a href="/detail_view?bolgguri_id=' + contentid+'" id="' + contentid
					+ '" onmouseover="showFirstImage(this, \'' + firstimage + '\')">'
					+ '<span class="info-cat1">' + title + '</span></a>';
		} else {
			var iwContent = '<a href="/" id="' + contentid + '"><span class="info-cat2">'
					+ title + '</span></a>';
		}

		var customOverlay = new kakao.maps.CustomOverlay({// 커스텀 오버레이를 생성
			position : position,
			content : iwContent,
			xAnchor : 0,
			yAnchor : 1
		});
		markerInfoWindows.push(customOverlay);
		customOverlay.setMap(map);// 커스텀 오버레이를 지도에 표시

		/* 		markerInfo = new kakao.maps.InfoWindow({// 인포윈도우를 생성
		 position : position,
		 content : title
		 });
		 markerInfoWindows.push(markerInfo);
		 markerInfo.open(map, marker);// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시 */

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
		for (var i = 0; i < circles.length; i++) {
			circles[i].setMap(null);
		}
	}

	function showMap() {
		map = null;
		// 출발지와 목적지 좌표를 설정합니다
		//var origin = "127.1054328,37.3595963"; // 출발지 좌표
		/* origin_lat = $("#startXlat").val();
		origin_lng = $("#startYlng").val(); */
		var origin = origin_lng + "," + origin_lat; // 출발지 좌표
		console.log("origin :" + origin);

		// 지도를 생성합니다
		var mapContainer = document.getElementById('map'), mapOption = {
			center : new kakao.maps.LatLng(origin_lat, origin_lng), // 지도의 중심 좌표 (서울 시청 기준)
			level : 9
		};

		map = new kakao.maps.Map(mapContainer, mapOption);// 지도 생성		

		// 출발지와 목적지에 마커를 표시합니다
		startMarker = new kakao.maps.Marker({
			position : new kakao.maps.LatLng(origin_lat, origin_lng),
			map : map,
			title : "출발지",
			range : 1100,
			image : new kakao.maps.MarkerImage('/resources/dc/image/markerStar.png',
					new kakao.maps.Size(24, 35))
		});
		console.log("선택위치326:",origin_lat, origin_lng );
		var customOverlay = new kakao.maps.CustomOverlay(
				{// 커스텀 오버레이를 생성
					position : new kakao.maps.LatLng(origin_lat, origin_lng),
					content : '<span class="info-title" style=" background-color: violet;">선택 위치</span>',
					xAnchor : 0,
					yAnchor : 1
				});
		markerInfoWindows.push(customOverlay);
		customOverlay.setMap(map);// 커스텀 오버레이를 지도에 표시
		/* startMarkerinfo = new kakao.maps.InfoWindow({
			map : map,
			position : new kakao.maps.LatLng(origin_lat, origin_lng),
			content : '<div style="background-color: red;">선택 위치</div>'
		});
		startMarkerinfo.open(map, startMarker); */
		myAjaxFunction();

	}

	function chkPosition() {
		if (startMarker !== null) {
			startMarker.setMap(null); // 이전 마커 제거
			//startMarkerinfo.close();// 이전 인포윈도우 제거
		}
		var clickHandler = function(mouseEvent) {
			//alert('click: ' + mouseEvent.latLng.toString());
			var latlng = mouseEvent.latLng;
			$("#startXlat").val(latlng.getLat());
			$("#startYlng").val(latlng.getLng());

			startMarker = new kakao.maps.Marker({
				position : latlng,
				map : map,
				range : 1100,
				image : new kakao.maps.MarkerImage(
						'/resources/dc/image/markerStar.png', new kakao.maps.Size(24, 35))
			});
			console.log("선택위치364:",latlng.getLat(), latlng.getLng() );
			var customOverlay = new kakao.maps.CustomOverlay(
					{// 커스텀 오버레이를 생성
						position : new kakao.maps.LatLng(latlng.getLat(), latlng.getLng()),
						content : '<span class="info-title" style=" background-color: violet;">선택 위치</span>',
						xAnchor : 0,
						yAnchor : 1
					});
			markerInfoWindows.push(customOverlay);
			customOverlay.setMap(map);// 커스텀 오버레이를 지도에 표시
			/* 			startMarkerinfo = new kakao.maps.InfoWindow({
			 map : map,
			 position : new kakao.maps.LatLng(origin_lat, origin_lng),
			 content : '<div style="background-color: red;">선택 위치</div>'
			 });
			 startMarkerinfo.open(map, startMarker); */

			kakao.maps.event.removeListener(map, 'click', clickHandler);

			map.setLevel(9);
			map.panTo(new kakao.maps.LatLng(latlng.getLat(), latlng.getLng()));//해당 위치로 지도이동

			myAjaxFunction();

		};
		kakao.maps.event.addListener(map, 'click', clickHandler);
	}

	function myAjaxFunction() {
		coordinate = [];// 매번 배열을 초기화
		coordinate.push({
			title : $("#radius").val(), //radius
			x : $("#startXlat").val(),
			y : $("#startYlng").val()
		});
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

					addMarker(new kakao.maps.LatLng(point.x, point.y), point.title,
							point.contentid, point.cat1, point.firstimage);

					/* markerInfo = new kakao.maps.InfoWindow({// 인포윈도우를 생성
						position : new kakao.maps.LatLng(point.x, point.y),
						content : point.title
					});
					markerInfo.open(map, marker); */// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시
				});
				var circle = new kakao.maps.Circle({
					map : map,
					center : new kakao.maps.LatLng($("#startXlat").val(), $("#startYlng")
							.val()),
					radius : $("#radius").val() * 1100,
					strokeWeight : 1,
					strokeColor : '#00a0e9',
					strokeOpacity : 1,
					strokeStyle : 'solid', // 이와 같이 문자열로 작성한다.
					fillColor : '#00a0e9', // 채우기 색깔
					fillOpacity : 0.2
				// 채우기 불투명도
				});
				circles.push(circle);
				circle.setMap(map);
			}
		};
		// 서버로 배열을 JSON 형태로 전송
		xhr.send(JSON.stringify(coordinate));
	}
</script>
</head>
<body>
	<h1>주변 볼꺼리 찾기</h1>
	<div class="coordinate-container">
		<button id="selOriginBtn" title="위치 선택 버튼을 누르고 지도상의 보고싶은 지점을 클릭하세요">위치 선택</button>
		검색 반경 <input type="text" id="radius" value="10"> km
		<div>
			위도(lat) <input type="text" id="startXlat" value="37.596690572396454"> 경도(lng) <input type="text" id="startYlng" value="126.67263577746134">
		</div>
	</div>
	<button id="showMap">주변 볼꺼리 찾기</button>
	<button id="myplace">내 위치 볼꺼리</button>
	<!-- 	<div class="button-coordinate"> -->
	<button id="delMarker" class="button-coordinate">마커 지우기</button>
	<button id="zoomOut" class="button-coordinate">축소</button>
	<button id="zoomIn" class="button-coordinate">확대</button>
	<br>
	<!-- </div> -->
	<div class="checkbox-container">
		<c:forEach items="${catList}" var="item">
			<div class="checkbox-item">
				<input type="checkbox" name="item" value="${item.code}" checked> ${item.name}<br>
			</div>
		</c:forEach>
	</div>


	<hr>
	<div id="result"></div>
	<div id="map" style="width: 100%; height: 600px;"></div>
	<hr>
	<hr>
</body>
</html>