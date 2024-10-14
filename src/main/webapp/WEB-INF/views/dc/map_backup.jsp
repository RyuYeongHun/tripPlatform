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
	function initMap() {

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			//center : new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표 (서울)
			center : new kakao.maps.LatLng(${center_x}, ${center_y}), // 지도의 중심좌표 (서울)
			level : 12
		// 지도의 확대 레벨
		};
		//console.log(${center_x}+":"+ ${center_y});

		// 지도 생성
		var map = new kakao.maps.Map(mapContainer, mapOption);
		//controller에서 받아오 데이터를 java객체를 json 객체로 변환
		var nearbyLocationsJson = JSON.parse('${nearbyLocationsJson}');
		//console.log("nearbyLocationsJson: "+nearbyLocationsJson);
		
		// 주변 꺼리 좌표 가져와 화면에 표시
		nearbyLocationsJson.forEach(function(point) {
			console.log(point.x + ":" + point.y+ ":"+point.title);
			//마커 표시
			var markerPosition = new kakao.maps.LatLng(point.x, point.y);
			var marker = new kakao.maps.Marker({
				position : markerPosition
			});
			marker.setMap(map);
			//마커에 인포윈도우 표시	
			var iwContent = point.title;//'<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>' // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			var iwPosition = new kakao.maps.LatLng(point.x, point.y); //인포윈도우 표시 위치

			var infowindow = new kakao.maps.InfoWindow({// 인포윈도우를 생성
				position : iwPosition,
				content : iwContent
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
			//마커에 인포윈도우 표시	
			var iwContent = '<div style="background-color:red;">중간경로'+index+'</div>' // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			var iwPosition = new kakao.maps.LatLng(point.x, point.y); //인포윈도우 표시 위치

			var infowindow = new kakao.maps.InfoWindow({// 인포윈도우를 생성
				position : iwPosition,
				content : iwContent
			});
			infowindow.open(map, marker);// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시
		});
		
		//지도 전체경로 표시
		// 출발지와 목적지 좌표
 	var startPosition = new kakao.maps.LatLng(37.5805775647, 126.6640687601);
 	var iwContent = '<div style="background-color: yellow;">출발지</div>';// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능
 	var iwPosition = new kakao.maps.LatLng(37.5805775647, 126.6640687601); 	//인포윈도우 표시 위치
	var startMarker = new kakao.maps.Marker({
    position: startPosition
	});
	startMarker.setMap(map);
	var infowindow1 = new kakao.maps.InfoWindow({// 인포윈도우를 생성
		position : iwPosition,
		content : iwContent
	}); 
	infowindow1.open(map, startMarker);
	
 	var endPosition = new kakao.maps.LatLng(35.1870282870, 129.0917658723);
 	var iwContent = '<div style="background-color: yellow;">목적지</div>';
 	var iwPosition = new kakao.maps.LatLng(35.1870282870, 129.0917658723);
	var endMarker = new kakao.maps.Marker({
	    position: endPosition
	});
	endMarker.setMap(map); 
	
	
//마커에 인포윈도우 표시	
	var infowindow = new kakao.maps.InfoWindow({// 인포윈도우를 생성
		position : iwPosition,
		content : iwContent
	}); 
	
	infowindow.open(map, endMarker);

	//infowindow.open(map, marker);// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시

//자동차 길찾기 API 호출
//출발지와 목적지 좌표
  var origin = "126.6640687601,37.5805775647"; // 출발지 좌표
  var destination = "129.0917658723,35.1870282870"; // 목적지 좌표

  // 자동차 길찾기 API 호출
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "https://apis-navi.kakaomobility.com/v1/directions?origin=" + origin + "&destination=" + destination, true);
  xhr.setRequestHeader("Authorization", "KakaoAK 70e9f6f25e81ba5f30cddeb16cc1f856");

  xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
          var response = JSON.parse(xhr.responseText);
          var routes = response.routes[0].sections[0].roads;

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
              position: new kakao.maps.LatLng(37.5805775647, 127.1054328),
              map: map
          });

          var endMarker = new kakao.maps.Marker({
              position: new kakao.maps.LatLng(37.4020733, 127.1088035),
              map: map
          });
          
        //지도 중심을 경로의 중간지점으로 이동합니다
          var bounds = new kakao.maps.LatLngBounds();
          bounds.extend(new kakao.maps.LatLng(37.3595963, 127.1054328));
          bounds.extend(new kakao.maps.LatLng(37.4020733, 127.1088035));
          map.setBounds(bounds);
      }
  };

  xhr.send();


	
	
	}
	
	
	
</script>
</head>
<body onload="initMap()">
	<h1>GPS Points Map</h1>
	<div id="map" style="height: 700px; width: 100%;"></div>
</body>
</html>