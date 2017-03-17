<?php while (have_posts()) : the_post(); ?>
	<section class="hero">
		<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(null, 'full'); ?>);" class="background"></figure>
	</section>
	<section class="location-content">
		<div class="content-container">
			<div class="col">
				<div class="sticky-cta" data-trigger=".location-content" data-duration="200">
					<div class="info">
						<?php the_title('<h3>', '</h3>'); ?>
						<p class="address"><?php echo get_field('coordinates')['address']; ?></p>
						<p class="cta-text">Palette is best experienced in person. Fill out your information to schedule a visit.</p>
					</div>
					<?php echo do_shortcode('[gravityform id=2 title=false description=false ajax=true tabindex=49]
	') ?>
				</div>
			</div>
			<div class="col">
				<div class="content">
					<?php the_content(); ?>
				</div>
				<p class="map-title">Directions:</p>
				<div class="single-map" id="single-map" data-lat="<?php echo get_field('coordinates')['lat']; ?>" data-long="<?php echo get_field('coordinates')['lng']; ?>"></div>
				<a href="#" class="full-width-cta">Find a beauty professional</a>
			</div>
		</div>
	</section>
<?php endwhile; ?>
