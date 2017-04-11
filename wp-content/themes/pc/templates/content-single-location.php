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
	<?php

		$page_id = get_the_id();
		$args = array(
			'post_type' => 'tenant',
			'posts_per_page' => -1,
			'meta_query'	=> array(
				'relation'		=> 'AND',
				array(
					'key'	 	=> 'location',
					'value'	  	=> $page_id,
					'compare' 	=> '=',
				)
			)
		);
		$loop = new WP_Query( $args );
		$location_has_marketplace_tenants = false;
		$location_has_non_marketplace_tenants = false;

		foreach ($loop->posts as $post) {
			if (get_field('marketplace', $post->id)) {
				$location_has_marketplace = true;
			}else{
				$location_has_non_marketplace_tenants = true;
			}
		}
	?>
	<?php if ($loop->have_posts()): ?>
		<?php if ($location_has_marketplace): ?>
			<section class="marketplace-tenants">
				<div class="content-container">
					<h2 class="section-title">Marketplace</h2>
					<ul>
					<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
						<?php if (get_field('marketplace', $post->id)): ?>
							<li>
								<?php the_title(); ?>
							</li>
						<?php endif ?> 
					<?php endwhile; ?>
					</ul>
				</div>
			</section>
		<?php endif ?>
		<?php if ($location_has_non_marketplace_tenants): ?>
			<section class="location-tenants">
				<div class="content-container">
					<h2 class="section-title">Tenants</h2>
					<ul>
					<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
						<?php if (!get_field('marketplace', $post->id)): ?>
							<li>
								<?php the_title(); ?>
							</li>
						<?php endif ?> 
					<?php endwhile; wp_reset_postdata(); ?>
					</ul>
				</div>
			</section>
		<?php endif ?>
	<?php endif ?>
<?php endwhile; ?>
