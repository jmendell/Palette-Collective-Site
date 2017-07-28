(function ($) {
	$.menuClick = function (element, options) {

		var $c = $(element),

			menuClick = (function ($c, o) {
				var defaults = {
					
				}; 

				var _o = {},
					$menuClick = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_BindClick = function () {
					$('.palette-nav-item').unbind().on('click', function(){
						var url = $(this).find('a').attr('href');
						window.location.href = url;
					});
				},

				_BindEvents = function () {
					$(document).ready(function(){
						_BindClick();
					});
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
				})();
			}) ($c, options);
	};

	$.fn.menuClick = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('menuClick')) {
				var plugin = new $.menuClick(this, options);
				$(this).data('menuClick', plugin);
			}
		});
	};
})(jQuery);