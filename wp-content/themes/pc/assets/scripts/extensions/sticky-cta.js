(function ($) {
	$(document).ready(function(){
		if ($('.sticky-cta').length !== 0) {

			var trigger = $('.sticky-cta').attr('data-trigger');
			var duration = $('.sticky-cta').attr('data-duration');

			var controller = new ScrollMagic.Controller();
			var scene = new ScrollMagic.Scene({triggerElement: trigger, duration: duration})
				.setPin(".sticky-cta")
				.addTo(controller);
		}
	});

	$(document).ready(function(){
		if ($('.sticky-calc-cta').length !== 0) {

			var duration = $('.event-content').height() - $('.sticky-calc-cta').height();
			var trigger = $('.sticky-calc-cta').attr('data-trigger');
			var width = $(window).width();

			function getDuration () {
				scene.duration = $('.event-content').height() - $('.sticky-calc-cta').height();
			}

			function checkWidth () {
				var width = $(window).width();

				if (width <= 900) {
					scene.destroy();
				}
			}

			if (width >= 900) {
				var controller = new ScrollMagic.Controller();
				var scene = new ScrollMagic.Scene({triggerElement: trigger, duration: duration})
					.setPin(".sticky-calc-cta")
					.addTo(controller);
			}

			$(window).resize(function(){
				checkWidth();
				getDuration();
			});
		}
	});
})(jQuery);