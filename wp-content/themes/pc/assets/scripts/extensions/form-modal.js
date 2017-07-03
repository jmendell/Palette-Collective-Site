(function ($) {
	$.formModal = function (element, options) {

		var $c = $(element),

			formModal = (function ($c, o) {
				var defaults = {
					
				}; 

				var _o = {},
					$formModal = null
				;

				var _InitObjects = function () {
					_o = $.extend({}, defaults, o);
				},

				_ShowModal = function () {
					$('.form-modal').fadeIn();
				},

				_HideModal = function () {
					$('.form-modal').fadeOut();
				},

				_BindEvents = function () {
					$('#join-sticky-footer').click(function(e){
						e.preventDefault();
						_ShowModal();
					});
					$('.escape').click(function(){
						_HideModal();
					});
					$(document).keyup(function(e) {
						if (e.keyCode === 27){
							_HideModal();
						}
					});
				},

				init = (function() {
					_InitObjects();
					_BindEvents();
				})();
			}) ($c, options);
	};

	$.fn.formModal = function (options) {
		return this.each(function () {
			if (undefined === $(this).data('formModal')) {
				var plugin = new $.formModal(this, options);
				$(this).data('formModal', plugin);
			}
		});
	};
})(jQuery);