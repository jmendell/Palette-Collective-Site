<?php
/**
 * Template Name: Marketing Landing Page
 */
?>

<style>
body{
	max-width:1440px;
	margin:0 auto;
	background-color:#F1F1F1;
}
body header{
	background: none;
}

body header .nav-options{
	display: none;
}

body footer{
	display: none;
}
</style>

<?php while (have_posts()) : the_post(); ?>
	<section class="landing-page">
		<section class="hero">
			<?php site_background_image($background); ?>
			<?php if( have_rows('hero')): ?>
				<div class="content-container hero-content">
					<?php while( have_rows('hero') ): the_row(); 
				
						$tagline = get_sub_field('hero_tagline');
						$subtext = get_sub_field('hero_subtext');
						$secondSubtext = get_sub_field('second_hero_subtext');
						$buttonText = get_sub_field('hero_button_text');
				
						?>

						<h1 class="tagline uppercase"><?=$tagline?></h1>
						<div class="subtext-container">
							<h4 class="subtext"><?=$subtext?></h4>
							<?php if ($secondSubtext): ?>
								<h4 class="subtext secondary"><?=$secondSubtext?></h4>
							<?php endif ?>
						</div>
						<a href="/#js_contact" class="hero-cta uppercase"><?=$buttonText?></a>
				
					<?php endwhile; ?>
				</div>
			<?php endif; ?>
		</section>
<!-- About section -->
		<section class="what-is-palette">
			<div class="about-container flex-grid">
				<div class="about-palette flex-col-2">
					<h2 class="title-text uppercase"><?php the_field('about_palette_title'); ?></h2>
					<p class="palette-copy"><?php the_field('about_palette_copy'); ?></p>
				</div>
				<div class="about-image flex-col-2">
					<img src="<?php the_field('about_image'); ?>" alt="about-image" class="about-image">
				</div>
			</div>
		</section>
<!-- Amenities title copy -->
		<section class="amenities">
			<div class="content-container flex-grid-column">
				<div class="title-container">
					<h2 class="amenity-title uppercase"><?php the_field('amenity_title'); ?></h2>
				</div>
				<div class="copy-container">
					<p class="copy"><?php the_field('amenity_copy'); ?></p>
				</div>
			</div>
		</section>
<!-- Featured amenities block 1 -->
		<section class="featured-block-1 featured-block">
			<?php if( have_rows('featured_amenity_block_1')): ?>
				<?php while( have_rows('featured_amenity_block_1') ): the_row(); 
			
					$icon1 = get_sub_field('amenity_icon_1');
					$title1 = get_sub_field('amenity_title_1');
					$copy1 = get_sub_field('amenity_description_1');
					$icon2 = get_sub_field('amenity_icon_2');
					$title2 = get_sub_field('amenity_title_2');
					$copy2 = get_sub_field('amenity_description_2');
			
					?>
				
					<div class="amenity-container js_animation">
						<div class="top-half half flex-grid">
							<div class="icon flex-col-3">
							<!-- svg icon snippet -->
								<?=$icon1?>
							</div>
							<div class="content flex-col-8">
								<h5 class="amenity-title"><?=$title1?></h5>
								<p class="copy"><?=$copy1?></p>
							</div>
						</div>
						<div class="separator flex-grid-center">
							<div class="block flex-col-3"></div>
							<div class="line-block">
								<div class="line"></div>
							</div>
						</div>
						<div class="bottom-half half flex-grid">
							<div class="icon canvas flex-col-3">
							<!-- svg icon snippet -->
								<?=$icon2?>
							</div>
							<div class="content flex-col-8">
								<h5 class="amenity-title"><?=$title2?></h5>
								<p class="copy"><?=$copy2?></p>
							</div>
						</div>
					</div>

				<?php endwhile; ?>
			<?php endif; ?>
			<figure class="image js_fade_image js_image_mobile" style="background-image:url('<?php the_field('featured_amenity_background_image_1'); ?>');"></figure>
		</section>
<!-- Testimonial quote block 1 -->
		<section class="quote-block-1 quote-section">
			<div class="quote-content-container flex-grid">
				<div class="quote-container js_quote_animation flex-grid flex-col-2">
					<?php if( have_rows('testimonial_quote_block_1')): ?>
						<?php while( have_rows('testimonial_quote_block_1') ): the_row(); 
					
							$quote = get_sub_field('testimonial');
							$name = get_sub_field('name');
							$bizName = get_sub_field('business_name');
							$social = get_sub_field('social');
							$link = get_sub_field('social_link');
					
							?>
					
							<div class="quote-block flex-col-2 flex-grid">
								<div class="quotation-mark">
									<?php get_template_part('templates/svg/landing-page-quote'); ?>
								</div>
								<p class="quote"><?=$quote?></p>
							</div>
							<div class="quote-info flex-col-4">
								<div class="quote-line"></div>
								<p class="name"><?=$name?></p>
								<h5 class="biz-name uppercase"><?=$bizName?></h5>
								<a href="<?=$link?>" target="_BLANK" class="social"><?=$social?></a>
							</div>
					
						<?php endwhile; ?>
					<?php endif; ?>
				</div>
				<div class="empty-block flex-col-2"></div>
			</div>
		</section>
<!-- Featured amenities block 2 -->
		<section class="featured-block-2 featured-block">
			<?php if( have_rows('featured_amenity_block_2')): ?>
				<?php while( have_rows('featured_amenity_block_2') ): the_row(); 
			
					$icon1 = get_sub_field('amenity_icon_1');
					$title1 = get_sub_field('amenity_title_1');
					$copy1 = get_sub_field('amenity_description_1');
					$icon2 = get_sub_field('amenity_icon_2');
					$title2 = get_sub_field('amenity_title_2');
					$copy2 = get_sub_field('amenity_description_2');
			
					?>
				
					<div class="amenity-container-2 js_animation_2">
						<div class="top-half half flex-grid">
							<div class="icon flex-col-3">
							<!-- svg icon snippet -->
								<?=$icon1?>
							</div>
							<div class="content flex-col-8">
								<h5 class="amenity-title"><?=$title1?></h5>
								<p class="copy"><?=$copy1?></p>
							</div>
						</div>
						<div class="separator flex-grid-center">
							<div class="block flex-col-3"></div>
							<div class="line-block">
								<div class="line"></div>
							</div>
						</div>
						<div class="bottom-half half flex-grid">
							<div class="icon canvas flex-col-3">
							<!-- svg icon snippet -->
								<?=$icon2?>
							</div>
							<div class="content flex-col-8">
								<h5 class="amenity-title"><?=$title2?></h5>
								<p class="copy"><?=$copy2?></p>
							</div>
						</div>
					</div>

				<?php endwhile; ?>
			<?php endif; ?>
			<figure class="image js_fade_2 js_image_mobile" style="background-image:url('<?php the_field('featured_amenity_background_image_2'); ?>');"></figure>
		</section>
<!-- Testimonial quote block 2 -->
		<section class="quote-block-2 quote-section">
			<div class="quote-content-container flex-grid-reverse">
				<div class="quote-container js_quote_animation flex-grid flex-col-2">
					<?php if( have_rows('testimonial_quote_block_2')): ?>
						<?php while( have_rows('testimonial_quote_block_2') ): the_row(); 
					
							$quote = get_sub_field('testimonial');
							$name = get_sub_field('name');
							$bizName = get_sub_field('business_name');
							$social = get_sub_field('social');
							$link = get_sub_field('social_link');
					
							?>
					
							<div class="quote-info flex-col-4">
								<div class="quotation-mark flex-col-4">
									<?php get_template_part('templates/svg/landing-page-quote'); ?>
								</div>
								<div class="line">
									<div class="quote-line"></div>
								</div>
								<p class="name"><?=$name?></p>
								<h5 class="biz-name uppercase"><?=$bizName?></h5>
								<a href="<?=$link?>" target="_BLANK" class="social"><?=$social?></a>
							</div>
							<div class="quote-block flex-col-2">
								<div class="quotation-mark-mobile">
									<?php get_template_part('templates/svg/landing-page-quote'); ?>
								</div>
								<p class="quote"><?=$quote?></p>
							</div>
					
						<?php endwhile; ?>
					<?php endif; ?>
				</div>
				<div class="empty-block flex-col-2"></div>
			</div>
		</section>
<!-- Featured amenities block 3 -->
		<section class="featured-block featured-block-3">
			<?php if( have_rows('featured_amenity_block_3')): ?>
				<?php while( have_rows('featured_amenity_block_3') ): the_row(); 
			
					$icon1 = get_sub_field('amenity_icon_1');
					$title1 = get_sub_field('amenity_title_1');
					$copy1 = get_sub_field('amenity_description_1');
					$icon2 = get_sub_field('amenity_icon_2');
					$title2 = get_sub_field('amenity_title_2');
					$copy2 = get_sub_field('amenity_description_2');
			
					?>
				
					<div class="amenity-container js_animation">
						<div class="top-half half flex-grid">
							<div class="icon flex-col-3">
							<!-- svg icon snippet -->
								<?=$icon1?>
							</div>
							<div class="content flex-col-8">
								<h5 class="amenity-title"><?=$title1?></h5>
								<p class="copy"><?=$copy1?></p>
							</div>
						</div>
						<div class="separator flex-grid-center">
							<div class="block flex-col-3"></div>
							<div class="line-block">
								<div class="line"></div>
							</div>
						</div>
						<div class="bottom-half half flex-grid">
							<div class="icon canvas flex-col-3">
							<!-- svg icon snippet -->
								<?=$icon2?>
							</div>
							<div class="content flex-col-8">
								<h5 class="amenity-title"><?=$title2?></h5>
								<p class="copy"><?=$copy2?></p>
							</div>
						</div>
					</div>

				<?php endwhile; ?>
			<?php endif; ?>
			<figure class="image js_fade_image js_animation_mobile" style="background-image:url('<?php the_field('featured_amenity_background_image_3'); ?>');"></figure>
		</section>
<!-- pricing section start -->
		<section class="pricing" style="background-image:url('<?php the_field('pricing_section_background_image'); ?>');">
			<div class="content-container flex-grid">
				<div class="pricing-info flex-grid-column flex-col-8">
					<h1 class="pricing-title uppercase"><?php the_field('pricing_section_title'); ?></h1>
					<div class="pricing-content">
						<div class="price-copy-container">
							<h2 class="from">from</h2>
							<div class="suite-price"><?php the_field('suite_price'); ?><span class="week">/wk</span></div>
						</div>
						<div class="line"></div>
						<div class="feautres">
							<?php if( have_rows('suite_features')): ?>
								<?php while( have_rows('suite_features') ): the_row(); 
							
									$feature = get_sub_field('feature');
							
									?>
									
									<li class="suite-feature"><?=$feature?></li>
							
								<?php endwhile; ?>
							<?php endif; ?>
						</div>
						<div class="cta-container" href="/#js_contact">
							<a href="/#js_contact" class="pricing-cta uppercase"><?php the_field('suite_button_text'); ?></a>
						</div>
					</div>
				</div>
				<div class="pricing-quote flex-grid flex-col-3">
					<?php if( have_rows('suite_quote_block')): ?>
						<?php while( have_rows('suite_quote_block') ): the_row(); 
					
							$quote = get_sub_field('testimonial');
							$name = get_sub_field('name');
							$bizName = get_sub_field('business_name');
							$social = get_sub_field('social');
							$link = get_sub_field('social_link');
					
							?>
							<div class="pricing-quote-container js_quote_animation">
								<div class="quote-block flex-grid flex-col-2">
									<div class="pricing-quotation-mark">
										<?php get_template_part('templates/svg/landing-page-quote-reversed'); ?>
									</div>
									<p class="quote"><?=$quote?></p>
								</div>
								<div class="quote-info flex-col-4">
									<div class="quote-line"></div>
									<p class="name"><?=$name?></p>
									<h5 class="biz-name uppercase"><?=$bizName?></h5>
									<a href="<?=$link?>" target="_BLANK" class="social"><?=$social?></a>
								</div>
							</div>
					
						<?php endwhile; ?>
					<?php endif; ?>
				</div>
			</div>
		</section>
<!-- Form/contact section start -->
		<section class="contact" id="js_contact">
			<div class="content-container flex-grid">
				<div class="form-container flex-col-2 contact-column">
					<h1 class="form-title uppercase"><?php the_field('contact_form_title'); ?></h1>
					<div class="form">
						<?php 						
							$form = get_field('contact_form');
							gravity_form($form, false, true, false, '', true, 1);
						?>
					</div>
				</div>
				<div class="map-container flex-col-2 flex-grid contact-column">
					<h2 class="suite-availability"><?php the_field('contact_section_suite_countdown'); ?></h2>
					<p class="suite-availability-copy"><?php the_field('contact_section_countdown_copy'); ?></p>
					<a href="<?php the_field('contact_section_map_link') ?>" target="_BLANK" class="map-link">
						<img src="<?php the_field('contact_section_map_image'); ?>" alt="map" class="map">
					</a>
				</div>
			</div>
		</section>
<!-- footer start -->
		<section class="footer">
			<div class="footer-content flex-grid content-container">
				<div class="footer-contact address flex-col-4">
					<h4 class="contact-title">Contact</h4>
					<?php if( have_rows('footer_contact_info')): ?>
						<?php while( have_rows('footer_contact_info') ): the_row(); 
					
							$street = get_sub_field('street_address');
							$cityState = get_sub_field('city_state_zip');
							$phone = get_sub_field('phone_number');
					
							?>
					
							<ul class="contact-address">
								<li class="street"><?=$street?></li>
								<li class="city"><?=$cityState?></li>
								<li class="phone"><?=$phone?></li>
							</ul>
					
						<?php endwhile; ?>
					<?php endif; ?>
				</div>
				<div class="footer-social flex-col-4">
					<h4 class="social-title">Follow Us</h4>
					<?php if( have_rows('footer_social_info')): ?>
						<?php while( have_rows('footer_social_info') ): the_row(); 
					
							//declare variables
							$platform = get_sub_field('social_platform');
							$link = get_sub_field('social_link');
					
							?>
					
							<ul class="social-links">
								<li class="social-item"><a href="<?=$link?>" target="_BLANK" class="link"><?=$platform?></a></li>
							</ul>
					
						<?php endwhile; ?>
					<?php endif; ?>
				</div>
				<div class="footer-empty-block flex-col-2"></div>
			</div>
			<div class="footer-copyright">
				<span class="copyright-text">Palette Collective Salon Suites | <?php echo date('Y') ?> All Rights Reseved | Crafted by: <a href="http://www.sandovaldesign.com" target="_BLANK" class="sandoval">Sandoval Design</a></span>
			</div>
		</section>
	</section>
<?php endwhile; ?>

<script>
jQuery(document).ready(function($){
  $('a[href*=\\#]:not([href=\\#])').click(function(e) {
  	e.preventDefault();
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
  });
// when element is in view on scroll
	function isScrolledIntoView(elem) {
	    var docViewTop = $(window).scrollTop();
	    var docViewBottom = docViewTop + $(window).height();

	    var elemTop = $(elem).offset().top;
	    var elemBottom = elemTop + $(elem).height();

	    return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
	}

	$(window).scroll(function () {
	    $('.js_animation').each(function () {
	        if (isScrolledIntoView(this) === true) {
	            $(this).addClass('in-view');
	            $(this).siblings('.js_fade_image').addClass('image-in-view');
	        }
	    });
	    $('.js_animation_2').each(function () {
	        if (isScrolledIntoView(this) === true) {
	            $(this).addClass('in-view');
	            $(this).siblings('.js_fade_2').addClass('image-in-view');
	        }
	    });
	    $('.js_quote_animation').each(function () {
	        if (isScrolledIntoView(this) === true) {
	            $(this).children('.quote-info').addClass('in-view');
	            $(this).children('.quote-block').addClass('in-view');
	        }
	    });
	    $('.js_image_mobile').each(function () {
	        if (isScrolledIntoView(this) === true) {
	            $(this).children('.js_fade_image').addClass('image-in-view');
	            $(this).children('.amenity-container').addClass('in-view');
	        }
	    });
	});
});
</script>