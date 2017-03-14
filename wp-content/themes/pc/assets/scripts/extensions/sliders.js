jQuery('.hero-slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
	var slide = '[data-slick-index="' + nextSlide + '"]';
	var credit = jQuery(slide).attr('data-credit');
	jQuery('#credit').html(credit);
});

(function($){
	$('.hero-slider').slick({
		infinite: true,
		slidesToShow: 1,
		fade:true,
		pauseOnHover:false,
		autoplay:true,
		autoplaySpeed:6000,
		arrows:false
	});
})(jQuery);