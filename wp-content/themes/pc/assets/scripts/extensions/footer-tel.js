(function ($) {
	$.telWrap = function (element, options) {

		var $c = $(element),

			telWrap = (function ($c, o) {
				var defaults = {
					
				}; 

				var _o = {},
					$telWrap = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_WrapTel = function () {
					if ($(window).width() < 768) {
						$('.tel').wrap('<a href="tel:4801234567"></a>');
					}
				},

				_BindEvents = function () {
					_WrapTel();					
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
				})();
			}) ($c, options);
	};

	$.fn.telWrap = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('telWrap')) {
				var plugin = new $.telWrap(this, options);
				$(this).data('telWrap', plugin);
			}
		});
	};
})(jQuery);

