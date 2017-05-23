<?php
/**
 * Template Name: Events
 */
?>
<!-- Adding the locations to the site object -->
<?php $loop = new WP_Query( array( 'post_type' => 'location', 'posts_per_page' => -1) ); $i = 0; ?>
<script>
	$pc.locations = [
<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
		"<?php echo the_title(); ?>",
<?php $i++; endwhile; wp_reset_postdata(); ?>
	];
</script>

<?php while (have_posts()) : the_post(); ?>
	<section class="root-container">
		<?php get_template_part('templates/section', 'standard-hero') ?>
		<section class="event-content">
			<div class="content-container">
				<div class="col-7">
					<div class="event-list">
						<ul>
						<?php

						$args = array( 'post_type' => 'event', 'posts_per_page' => -1);
						$loop = new WP_Query( $args );
						
						while ( $loop->have_posts() ) : $loop->the_post(); ?>
							<?php
								$img = get_the_post_thumbnail_url();
								$title = the_title('', '', false);
								$date = get_field('date');
								$time = get_field('time');
								$location = get_field('location');
								$location_address = get_field('coordinates', $location);
								$content = get_the_content();
							?>
							<li>
								<div class="col">
									<figure class="event-image" style="background-image:url(<?php echo $img; ?>);"></figure>
								</div>
								<div class="col">
									<div class="content-header">
										<h3><?php echo $title; ?></h3>
										<div class="details">
											<p class="detail">Date: <?php echo $date; ?></p>
											<p class="detail">Time: <?php echo $time; ?></p>
										</div>
										<p class="location">Location: <?php echo $location_address['address']; ?></p>
									</div>
									<?php if ($content): ?>
										<div class="content">
											<?php echo $content; ?>
										</div>
									<?php endif ?>
								</div>
							</li>
						<?php endwhile;
						wp_reset_postdata();
						?>
						</ul>
					</div>
				</div>
				<div class="col-5">
					<div class="form-track">
						<div class="form-wrap sticky-calc-cta" data-trigger=".trigger" data-duration="1050">
							<div class="content-header">
								<h3>Host an Event</h3>
								<p>Palette is best experienced in person.</p>
								<p>Fill out your information to schedule a visit.</p>
							</div>
							<?php echo do_shortcode('[gravityform id=3 title=false description=false ajax=true tabindex=49]') ?>
						</div>
						<div class="trigger"></div>
					</div>
				</div>
			</div>
		</section>
		<a href="/locations" class="sticky-button">Join The Collective</a>
	</section>
<?php endwhile; ?>