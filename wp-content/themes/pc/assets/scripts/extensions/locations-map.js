(function ($) {
	$.gMap = function (element, options) {

		var $c = $(element),

			gMap = (function ($c, o) {
				var defaults = {
					'mapStyles' : [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#818181"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#333333"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#272727"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#1f1f1f"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#505050"},{"lightness":17}]}]
				}; 

				var _o = {},
					$gMap = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_InitMap = function () {
					var map;
					map = new google.maps.Map(document.getElementById('map'), {
						center: {lat :33.3840973, lng: -111.9914508},
						zoom: 11,
						scrollwheel: false,
						styles: _o.mapStyles
					});
					
					_AddMarkers(map);
				},

				_AddMarkers = function (map) {
					var bounds = new google.maps.LatLngBounds();

					$('.location-item').each(function(){
						var lat = $(this).attr('data-lat');
						var long = $(this).attr('data-long');

						var coords = new google.maps.LatLng(parseFloat(lat),parseFloat(long));
							bounds.extend(coords);
						var marker = new google.maps.Marker({
							position: coords,
							map: map
						});
						// marker.addListener('click', function() {
						// 	infowindow.open(map, marker);
						// });
					});

					map.fitBounds(bounds);
    				map.panToBounds(bounds);
				},

				_BindEvents = function () {
					
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
					_InitMap();
				})();
			}) ($c, options);
	};

	$.fn.gMap = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('gMap')) {
				var plugin = new $.gMap(this, options);
				$(this).data('gMap', plugin);
			}
		});
	};
})(jQuery);