$(".cases-map").ready(function(){
	var mapOptions = {
    	zoom: 14,
    	center: new google.maps.LatLng(41.308688, -72.928701)
  	};

  	map = new google.maps.Map(document.getElementById('map-canvas'),
  		mapOptions);

  	var points = new google.maps.MVCArray(crimeData);

  	heatmap = new google.maps.visualization.HeatmapLayer({
    data: points
  	});

  	heatmap.setMap(map);

});