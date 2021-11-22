

<%
String lat=request.getParameter("lat");
String lon=request.getParameter("lon");
%>
<h2>View Location</h2>



<form method="post" name="ff" action="index.jsp" >


<table>
<tr><input type="hidden" name="lat" value="<%=lat%>"> 
<tr><input type="hidden" name="lon"   value="<%=lon%>"> 


											 
</table>

</form>

<!DOCTYPE html>
<html>
<head>
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>



function initialize()
{
var lati=document.ff.lat.value;
var lon=document.ff.lon.value;
var myCenter=new google.maps.LatLng(lati,lon);
var mapProp = {
  center: myCenter,
  zoom:15,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
  title:'Click to zoom'
  });

marker.setMap(map);

// Zoom to 9 when clicking on marker
google.maps.event.addListener(marker,'click',function() {
  map.setZoom(9);
  map.setCenter(marker.getPosition());
  });
}
google.maps.event.addDomListener(window, 'load', initialize);









</script>
</head>
<body>
<br>
<div id="googleMap" style="width:700px;height:430px;"></div>
<br>
<br>
