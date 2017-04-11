(function ($) {
	$.locationSelector = function (element, options) {

		var $c = $(element),

			locationSelector = (function ($c, o) {
				var defaults = {
					selector : $c.find('select')
				}; 

				var _o = {},
					$locationSelector = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_Reset = function () {
					_o.selector.html('');
					_Populate();
				},

				_Populate = function () {
					var locations = $pc.locations;
					var locationCollection = '<option value="Any">Any</option>';

					$(locations).each(function(index, value ){
						locationCollection += '<option value="' + value + '">' + value + '</option>';
					});

					_o.selector.html(locationCollection);
				},

				_BindEvents = function () {
					
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
					_Reset();
				})();
			}) ($c, options);
	};

	$.fn.locationSelector = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('locationSelector')) {
				var plugin = new $.locationSelector(this, options);
				$(this).data('locationSelector', plugin);
			}
		});
	};
})(jQuery);