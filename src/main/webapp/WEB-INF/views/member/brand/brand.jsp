<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/member/brand/Brand.css">
<style>
*{
    margin: 0;
    padding: 0;
    font-style:initial;
    color: #7B7C95;
    font-size: 15px;
    text-align: center;
}
h1{
    margin: 50px;
    font-size: 50px;
}
h3{
	text-align: center;
}
hr{
	margin-left: 50px;
    margin-right: 50px;
}
.section1 {
  text-align: center; 
}
.nav {
  width: 100%; 
  height: auto;
  background-color: #f6f6f6;
}
.brand2{
	margin: 50px;
	height: auto;
}
.brand2 > p{
	line-height: 30px;
	font-size: 20px;
}
#imgContainer{
	text-align: right;
	margin-right: 110px;
	margin-bottom: 30px;
}
#mapContainer{
	margin-top: 50px;
    padding-bottom: 80px;
    display:flex;
    justify-content:center;
}
</style>
</head>
<body>
	<c:import url="../../header.jsp"/>

<!-- 섹션1 -->
	<img src="images/brand1.png" width="100%">
	<div class="container-fluid">
	<div class="section1">
		<div class="brand1"><h1>회사소개</h1></div>
		<hr style="border: solid 2px;">
		<div class="brand2">
			<p>우리는 과장된 광고로 고객의 똑똑한 선택을 가로막지 않습니다.<br>
				모든제품은 반드시, 효과적이고 유익해야 합니다. 예외는 없습니다.<br><br>
				
				우리는 수많은 속설로부터 피부를 건강하네 지켜내기 위해 스킨케어에 대한 <br>
				진실을 밝히고 고객에게 정확하고 진실된 정보를 공유합니다.<br><br>
				
				우리는 모든 연령층과 피부 유형, 피부 고민을 아우를 수 있도록 가장 효과적인 <br>
				자연 유래 성분과 합성 성분만을 사용합니다.<br><br>
				
				우리는 지속적으로 새로운 데이터를 수집해 피부와 성분에 대한 연구를 합니다.
			</p>
		</div>
	</div>
</div>
<div class="container-fluid"><img src="images/brand2.png" width="1200px"/>
<div id="imgContainer"><img src="images/logo.png"></div>
<div class= "nav">
	<br>
	<h1>오시는길</h1>
	<hr style="border: solid 2px;">
	<div id="mapContainer">
		<div id="map" onclick="window.open('https://map.kakao.com/link/to/동보하우스,37.595022203507,127.08320164206')" style="width:1200px;height:950px;"></div>
	</div>
</div>
</div>
	<c:import url="../../footer.jsp"/>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=25535a9cd79a8fbd1d82ea3be8b37e6b"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.595022203507, 127.08320164206), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.595022203507, 127.08320164206); 
	
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
	
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	</script>
</body>
</html>