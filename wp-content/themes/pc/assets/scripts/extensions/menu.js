(function ($) {
	$.menu = function (element, options) {

		var $c = $(element),

			menu = (function ($c, o) {
				var defaults = {
					
				}; 

				var _o = {},
					$menu = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_Open = function () {
					$('.full-width-menu').fadeIn();
				},

				_Close = function () {
					$('.full-width-menu').fadeOut();
				},

				_BindEvents = function () {
					$c.click(function(){
						_Open();
					});
					$('.escape').click(function(){
						_Close();
					});
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
				})();
			}) ($c, options);
	};

	$.fn.menu = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('menu')) {
				var plugin = new $.menu(this, options);
				$(this).data('menu', plugin);
			}
		});
	};
})(jQuery);