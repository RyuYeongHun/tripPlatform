<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GPS Points Map</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7faa1b5042e8cffab85500d73eb2605&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
var map;
var startMarker = null; // 시작점 마커
var endMarker = null; // 도착점 마커

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

		var mapContainer = document.getElementById('map'); // 지도를 표시할 div
		var mapOption = {
			//center : new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표 (서울)
			center : new kakao.maps.LatLng(${center_x}, ${center_y}), // 지도의 중심좌표 (서울)
			level : 12		// 지도의 확대 레벨
		};

		// 지도 생성
		map = new kakao.maps.Map(mapContainer, mapOption);
		//controller에서 받아오 데이터를 java객체를 json 객체로 변환
		var nearbyLocationsJson = JSON.parse('${nearbyLocationsJson}');
		console.log("nearbyLocationsJson: ",nearbyLocationsJson);
		
		// 주변 꺼리 좌표 가져와 화면에 표시
		nearbyLocationsJson.forEach(function(point) {
			console.log(point.x + ":" + point.y+ ":"+point.title);
			//마커 표시
			var markerPosition = new kakao.maps.LatLng(point.x, point.y);
			var marker = new kakao.maps.Marker({
				position : markerPosition
			});
			marker.setMap(map);
			var infowindow = new kakao.maps.InfoWindow({// 인포윈도우를 생성
				position : new kakao.maps.LatLng(point.x, point.y),
				content : point.title
			});
			infowindow.open(map, marker);// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시
		});
		//intermediatePoints
		// 중간 경로 좌표 화면에 표시
		var routePoint = JSON.parse('${routePoint}');
		console.log("routePoint: "+routePoint);
		
		//중간 경로지점 좌표 가져와 화면에 표시
		routePoint.forEach(function(point,index) {
			console.log(point.x + ":" + point.y+ ":"+point.title);
			//마커 표시
			var markerPosition = new kakao.maps.LatLng(point.x, point.y);
			var marker = new kakao.maps.Marker({
				position : markerPosition
			});
			marker.setMap(map);
			
			var infowindow = new kakao.maps.InfoWindow({// 인포윈도우를 생성
				position : new kakao.maps.LatLng(point.x, point.y),
				content : '<div style="background-color:red;">중간경로'+index+'</div>'
			});
			infowindow.open(map, marker);
		});
		
		//지도 네비게이션 경로 표시
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
		
		// 출발지 마커와 인포윈도우
	var startMarker = new kakao.maps.Marker({
    position: new kakao.maps.LatLng(origin_lat, origin_lng)
	});
	startMarker.setMap(map);
	var infowindow1 = new kakao.maps.InfoWindow({// 인포윈도우를 생성
		position : new kakao.maps.LatLng(origin_lat, origin_lng),
		content : '<div style="background-color: yellow;">출발지</div>'
	}); 
	infowindow1.open(map, startMarker);
	
	//목적지 마커와 인포윈도우
	var endMarker = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(destination_lat, destination_lng)
	});
	endMarker.setMap(map); 
	var infowindow = new kakao.maps.InfoWindow({// 인포윈도우를 생성
		position : new kakao.maps.LatLng(destination_lat, destination_lng),
		content : '<div style="background-color: yellow;">목적지</div>'
	}); 
	infowindow.open(map, endMarker);

//자동차 길찾기 API 호출
  var origin = origin_lng+","+origin_lat; // 출발지 좌표
  var destination = destination_lng+","+destination_lat; // 목적지 좌표

  // 자동차 길찾기 API 호출
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "https://apis-navi.kakaomobility.com/v1/directions?origin=" + origin + "&destination=" + destination, true);
  xhr.setRequestHeader("Authorization", "KakaoAK 70e9f6f25e81ba5f30cddeb16cc1f856");

  xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
          var response = JSON.parse(xhr.responseText);
          var routes = response.routes[0].sections[0].roads;
          
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
  				
					//경로 표시
          var linePath = [];

          // 경로 데이터를 지도에 표시할 수 있도록 변환
          for (var i = 0; i < routes.length; i++) {
              var road = routes[i];
              for (var j = 0; j < road.vertexes.length; j += 2) {
                  var lat = road.vertexes[j + 1];
                  var lng = road.vertexes[j];
                  linePath.push(new kakao.maps.LatLng(lat, lng));
              }
          }

          // 경로를 따라 선을 그립니다
          var polyline = new kakao.maps.Polyline({
              path: linePath, // 폴리라인 경로를 설정합니다
              strokeWeight: 5, // 선의 두께
              strokeColor: '#FF0000', // 선의 색깔
              strokeOpacity: 0.8, // 선의 불투명도
              strokeStyle: 'solid' // 선의 스타일
          });

          polyline.setMap(map); // 지도에 경로를 표시합니다
          
          
          // 출발지와 목적지에 마커를 표시합니다
          var startMarker = new kakao.maps.Marker({
              position: new kakao.maps.LatLng(origin_lat, origin_lng),
              map: map
          });

          var endMarker = new kakao.maps.Marker({
              position: new kakao.maps.LatLng(destination_lat, destination_lng),
              map: map
          });
          
        //지도 중심을 경로의 중간지점으로 이동합니다
          var bounds = new kakao.maps.LatLngBounds();
          bounds.extend(new kakao.maps.LatLng(origin_lat, origin_lng));
          bounds.extend(new kakao.maps.LatLng(destination_lat, destination_lng));
          map.setBounds(bounds);
      }
  };

  xhr.send();
	
} 
	
	
	
</script>
</head>
<body>
	<h1>경로 볼꺼리</h1>
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
	<button id="showMap">지도 보기</button>
	<hr>
	<div id="result"></div>
	<div id="map" style="height: 700px; width: 100%;"></div>
</body>
</html>