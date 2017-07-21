<?php
/**
 * Template Name: Events
 */

$eventArgs = array( 'post_type' => 'event', 'posts_per_page' => -1);
$eventLoop = new WP_Query( $eventArgs );

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
		<?php get_template_part('templates/section', 'events-hero') ?>
		<section class="event-content">
			<div class="content-container">
			<?php
				if ($eventLoop->have_posts()) :?>
				<div class="col-7">				
					<div class="event-list">
						<ul>
						<?php

						
						while ( $eventLoop->have_posts() ) : $eventLoop->the_post(); ?>
							<?php
								$img = get_the_post_thumbnail_url();
								$title = the_title('', '', false);
								$date = get_field('date');
								$time = get_field('time');
								$location = get_field('location');
								$location_address = get_field('coordinates', $location);
								$content = get_the_content();
								$ctaCopy = get_field('cta_website_button_copy');
								$ctaLink = get_field('cta_website_link');
								$ctaPhoneCopy = get_field('cta_phone_button_copy');
								$ctaPhone = get_field('cta_phone_number');
								$ctaEmailCopy = get_field('cta_email_button_copy');
								$ctaEmail = get_field('cta_email_adress');
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
									<?php if ($ctaLink || $ctaPhone || $ctaEmail): ?>
										<div class="contact-cta">
											<?php if ($ctaLink): ?>
													<a href="<?php echo $ctaLink; ?>" target="_BLANK" class="cta-button event-site"><?php echo $ctaCopy; ?></a>
											<?php endif ?>
											<?php if ($ctaPhone): ?>
												<a href="tel:<?php echo preg_replace('/[^\p{L}\p{N}\s]/u', '', $ctaPhone); ?>" class="cta-button event-phone"><?php echo $ctaPhoneCopy; ?></a>
											<?php endif ?>
											<?php if ($ctaEmail): ?>
												<a href="mailto:<?php echo $ctaEmail; ?>" class="cta-button event-email"><?php echo $ctaEmailCopy; ?></a>
											<?php endif ?>
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
				<?php endif ?>
				<?php if ($eventLoop->have_posts()): ?>
				<div class="col-5">
					<div class="form-track">
						<div class="form-wrap sticky-calc-cta" id="event-form-wrap" data-trigger=".trigger" data-duration="1050">
				<?php else: ?>
					<div class="col-5-no-post">
						<div class="form-track">
							<div class="form-wrap" data-trigger=".trigger" data-duration="1050">
				<?php endif ?>
							<div class="content-header">
								<h3>Host an Event</h3>
								<p>Palette is best experienced in person.</p>
								<p>Fill out your information to schedule a visit.</p>
							</div>
							<?php echo do_shortcode('[gravityform id=4 title=false description=false ajax=true tabindex=49]') ?>
						</div>
						<div class="trigger"></div>
					</div>
				</div>
			</div>
		</section>
	</section>
<?php endwhile; ?>