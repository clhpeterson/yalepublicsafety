$(".cases-map").ready(function(){
	var mapOptions = {
    	zoom: 13,
    	center: new google.maps.LatLng(41.308688, -72.928701),
    	mapTypeId: google.maps.MapTypeId.SATELLITE
  	};

  	map = new google.maps.Map(document.getElementById('map-canvas'),
  		mapOptions);

});