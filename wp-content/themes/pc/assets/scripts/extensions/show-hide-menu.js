(function ($) {
	$.hideShowMenu = function (element, options) {

		var $c = $(element),

			hideShowMenu = (function ($c, o) {
				var defaults = {
					
				}; 

				var _o = {},
					$hideShowMenu = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_TitleAtt = function () {
					$('.category').click(function(){
						var title = $(this).attr('data-title');
						$(this).parent().parent().parent().find('.dynamic-title').text(title);
					});
				},

				_BindEvents = function () {
					$('.down-arrow, .dynamic-title').click(function(){
						$(this).parent().siblings('.category-select').slideToggle();
					});
					_TitleAtt();
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
				})();
			}) ($c, options);
	};

	$.fn.hideShowMenu = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('hideShowMenu')) {
				var plugin = new $.hideShowMenu(this, options);
				$(this).data('hideShowMenu', plugin);
			}
		});
	};
})(jQuery);