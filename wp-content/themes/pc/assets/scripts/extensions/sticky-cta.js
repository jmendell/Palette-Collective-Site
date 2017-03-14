(function ($) {
	$(document).ready(function(){
		if ($('.sticky-cta').length !== 0) {
			var controller = new ScrollMagic.Controller();
			var scene = new ScrollMagic.Scene({triggerElement: ".location-content", duration: 200})
				.setPin(".sticky-cta")
				.addTo(controller);
		}
	});
})(jQuery);