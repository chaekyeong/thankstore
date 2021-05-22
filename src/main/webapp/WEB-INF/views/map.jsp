<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="kakaokey" value="d5d4850376504cbcd111fa1f434f605e"/>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" sizes="" href="">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>

<style>
body{background-color :lightyellow;}
#container{text-align: center;}
#map{display: inline-block;}
#headline{text-align: center;}

</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaokey }"></script>
<body>
	<h1 id="headline">카카오맵</h1>
	<div id=container>
		<div id="map" style="width:500px;height:400px;">
		</div>
	</div>
	
	<div>
		<button onclick="myGeoLocation()" >내 위치받기</button>
	    <ul>
	        <li>위도:<span id="latitude"></span></li>
	        <li>경도:<span id="longitude"></span></li>
	    </ul>
	</div>
	
	
	

	
</body>
</html>


<!--===================================================================================
										JS영역
====================================================================================-->
<!-- 카카오api 기본 설정 -->
<script>
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);
</script>
<!-- 카카오api 기본 설정 end -->

<!-- 내 위치 받아오는 js -->
<script>
    function myGeoLocation() {        
        // Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {
                $('#latitude').html(pos.coords.latitude);     // 위도
                $('#longitude').html(pos.coords.longitude); // 경도
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
    }
</script>
<!-- 내 위치 받아오는 js end-->

<!--===================================================================================
										JS영역 END
====================================================================================-->