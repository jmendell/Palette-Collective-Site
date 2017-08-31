<?php
/**
 * Template Name: Locations
 */
?>

<?php while (have_posts()) : the_post(); ?>
	<section class="root-section">
		<?php get_template_part('templates/section', 'standard-hero') ?>
		<section class="location-feed">
			<div class="location-list">
				<?php
					$args = array( 'post_type' => 'location', 'posts_per_page' => -1);
					$loop = new WP_Query( $args );
				?>
				<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>  
					<a href="<?php the_permalink(); ?>" class="location-item-link">
						<div class="location-item" data-lat="<?php echo get_field('coordinates')['lat']; ?>" data-long="<?php echo get_field('coordinates')['lng']; ?>">
							<div class="location-image">
								<?php the_post_thumbnail(array(768, 408)); ?>
							</div>
							<div class="location-details">
								<div class="info">
									<div class="info-inner">
										<?php the_title('<h3>', '</h3>'); ?>
										<p><?php echo get_field('coordinates')['address']; ?></p>
									</div>
								</div>
								<a href="<?php the_permalink(); ?>" class="cta-button js-location-btn">Choose This Location</a>
							</div>
						</div>
					</a>
				<?php endwhile; 
				// Reset Post Data
				wp_reset_postdata();
				?>
			</div>
			<div class="map" id="map"></div>
		</section>
		<a href="/locations" class="sticky-button">Join The Collective</a>
	</section>
<?php endwhile; ?>


