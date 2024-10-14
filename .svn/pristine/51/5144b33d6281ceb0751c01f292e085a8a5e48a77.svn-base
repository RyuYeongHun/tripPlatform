<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카카오 길찾기 예제</title>
    <!-- 카카오 지도 API를 불러옵니다 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7faa1b5042e8cffab85500d73eb2605&libraries=services,clusterer,drawing"></script>
</head>
<body>
    <h1>카카오 길찾기 예제</h1>
    <div id="map" style="width:100%;height:400px;"></div>

    <script>
        // 지도를 생성합니다
        var mapContainer = document.getElementById('map'), 
            mapOption = { 
                center: new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심 좌표 (서울 시청 기준)
                level: 7 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 출발지와 목적지 좌표를 설정합니다
        var origin = "127.1054328,37.3595963"; // 출발지 좌표
        var destination = "127.1088035,37.4020733"; // 목적지 좌표

        // 자동차 길찾기 API를 호출합니다
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "https://apis-navi.kakaomobility.com/v1/directions?origin=" + origin + "&destination=" + destination, true);
        xhr.setRequestHeader("Authorization", "KakaoAK 70e9f6f25e81ba5f30cddeb16cc1f856");

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                var routes = response.routes[0].sections[0].roads;

                var linePath = [];

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
                    path: linePath, // 폴리라인 경로를 설정합니다
                    strokeWeight: 5, // 선의 두께
                    strokeColor: '#FF0000', // 선의 색깔
                    strokeOpacity: 0.8, // 선의 불투명도
                    strokeStyle: 'solid' // 선의 스타일
                });

                polyline.setMap(map); // 지도에 경로를 표시합니다

                // 출발지와 목적지에 마커를 표시합니다
                var startMarker = new kakao.maps.Marker({
                    position: new kakao.maps.LatLng(37.3595963, 127.1054328),
                    map: map
                });

                var endMarker = new kakao.maps.Marker({
                    position: new kakao.maps.LatLng(37.4020733, 127.1088035),
                    map: map
                });

                // 지도 중심을 경로의 중간지점으로 이동합니다
                var bounds = new kakao.maps.LatLngBounds();
                bounds.extend(new kakao.maps.LatLng(37.3595963, 127.1054328));
                bounds.extend(new kakao.maps.LatLng(37.4020733, 127.1088035));
                map.setBounds(bounds);
            }
        };

        xhr.send();
    </script>
</body>
</html>
