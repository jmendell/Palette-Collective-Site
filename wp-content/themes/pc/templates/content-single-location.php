<?php while (have_posts()) : the_post(); ?>
	<section class="hero">
		<figure style="background-image:url(<?php echo get_the_post_thumbnail_url(null, 'full'); ?>);" class="background"></figure>
	</section>
	<section class="location-content">
	<?php get_template_part('templates/section', 'sticky-footer') ?>
	<?php get_template_part('templates/section', 'form-modal') ?>
		<div class="content-container">
			<div class="col desktop-form">
				<div class="sticky-cta" data-trigger=".location-content" data-duration="300">
					<div class="info">
						<?php the_title('<h3>', '</h3>'); ?>
						<p class="address"><?php echo get_field('coordinates')['address']; ?></p>
						<p class="cta-text">Palette is best experienced in person. Fill out your information to schedule a visit.</p>
					</div>
					<?php echo do_shortcode('[gravityform id=2 title=false description=false ajax=true tabindex=49]
	') ?>
				</div>
			</div>
			<div class="single-location-form">
				<div class="col form">
						<div class="info">
							<?php the_title('<h3>', '</h3>'); ?>
							<p class="address"><?php echo get_field('coordinates')['address']; ?></p>
							<p class="cta-text">Palette is best experienced in person. Fill out your information to schedule a visit.</p>
						</div>
						<?php echo do_shortcode('[gravityform id=2 title=false description=false ajax=true tabindex=49]') ?>
				</div>
			</div>
			<div class="col single-location-content">
				<div class="content">
					<h3 class="location-title"><?php the_title(); ?></h3>
					<?php the_content(); ?>
				</div>
				<p class="map-title">Directions:</p>
				<div class="single-map" id="single-map" data-lat="<?php echo get_field('coordinates')['lat']; ?>" data-long="<?php echo get_field('coordinates')['lng']; ?>"></div>
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
					<div class="tenant-card-section">
						
						<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
							<?php if (get_field('marketplace', $post->id)): ?>
								
								<?php if( have_rows('tenant_info')): ?>
									<?php while( have_rows('tenant_info') ): the_row(); 
								
										$categories = get_sub_field('tenant_categories');
										$phone = get_sub_field('phone_number');
										$email = get_sub_field('email');
										$website = get_sub_field('website');
										$fb = get_sub_field('facebook_link');
										$insta = get_sub_field('instagram_link');
										$twitter = get_sub_field('twitter_link');
										$linkedin = get_sub_field('linkedin');
										$suite = get_sub_field('suite_number');
								
										?>
								
										<div class="marketplace-tenant-card">
											<div class="tenant-info">
												
												<h4 class="name"><?php the_title(); ?></h4>
												<p class="category"><?php echo $categories; ?></p>
												<?php if ($phone): ?>
													<p class="phone"><?php echo $phone; ?></p>
												<?php endif ?>
												<?php if ($email): ?>
													<a href="mailto:<?php $email; ?>"><?php echo $email; ?></a>
												<?php endif ?>
												<?php if ($website): ?>
													<a href="<?php echo $website; ?>"><?php echo $website; ?></a>
												<?php endif ?>
												<div class="social">
													<?php if ($fb): ?>
														<li>
															<a href="<?php echo $fb; ?>" target="_BLANK" class="facebook icon" title="Facebook">
																<?php get_template_part('templates/svg/' . 'facebook'); ?>
															</a>
														</li>
													<?php endif ?>
													<?php if ($insta): ?>
														<li>
															<a href="<?php echo $insta; ?>" target="_BLANK" class="instagram icon" title="Instagram">
																<?php get_template_part('templates/svg/' . 'instagram'); ?>
															</a>
														</li>
													<?php endif ?>
													<?php if ($twitter): ?>
														<li>
															<a href="<?php echo $twitter; ?>" target="_BLANK" class="twitter icon" title="Twitter">
																<?php get_template_part('templates/svg/' . 'twitter'); ?>
															</a>
														</li>
													<?php endif ?>
													<?php if ($linkedin): ?>
														<li>
															<a href="<?php echo $linkedin; ?>" target="_BLANK" class="linkedin icon" title="Linkedin">
																<?php get_template_part('templates/svg/' . 'linkedin'); ?>
															</a>
														</li>
													<?php endif ?>
												</div>
											</div>
											<?php if ($suite): ?>
												<p class="suite-num"><?php echo $suite; ?></p>
											<?php endif ?>
										</div>
								
									<?php endwhile; ?>
								<?php endif; ?>

							<?php endif ?> 
						<?php endwhile; ?>
					</div>	
				</div>
			</section>
		<?php endif ?>
		<?php if ($location_has_non_marketplace_tenants): ?>
			<section class="location-tenants">
				<div class="content-container">
					<h2 class="section-title">Tenants</h2>
					<div class="location-tenant-card-section">
						
						<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
							<?php if (!get_field('marketplace', $post->id)): ?>
								
								<?php if( have_rows('tenant_info')): ?>
									<?php while( have_rows('tenant_info') ): the_row(); 
								
										$categories = get_sub_field('tenant_categories');
										$phone = get_sub_field('phone_number');
										$email = get_sub_field('email');
										$website = get_sub_field('website');
										$fb = get_sub_field('facebook_link');
										$insta = get_sub_field('instagram_link');
										$twitter = get_sub_field('twitter_link');
										$linkedin = get_sub_field('linkedin');
										$suite = get_sub_field('suite_number');
								
										?>
								
										<div class="location-tenant-card">
											<div class="tenant-info">
												
												<h4 class="name"><?php the_title(); ?></h4>
												<p class="category"><?php echo $categories; ?></p>
												<?php if ($phone): ?>
													<p class="phone"><?php echo $phone; ?></p>
												<?php endif ?>
												<?php if ($email): ?>
													<a href="mailto:<?php $email; ?>"><?php echo $email; ?></a>
												<?php endif ?>
												<?php if ($website): ?>
													<a href="<?php echo $website; ?>"><?php echo $website; ?></a>
												<?php endif ?>
												<div class="social">
													<?php if ($fb): ?>
														<li>
															<a href="<?php echo $fb; ?>" target="_BLANK" class="facebook icon" title="Facebook">
																<?php get_template_part('templates/svg/' . 'facebook'); ?>
															</a>
														</li>
													<?php endif ?>
													<?php if ($insta): ?>
														<li>
															<a href="<?php echo $insta; ?>" target="_BLANK" class="instagram icon" title="Instagram">
																<?php get_template_part('templates/svg/' . 'instagram'); ?>
															</a>
														</li>
													<?php endif ?>
													<?php if ($twitter): ?>
														<li>
															<a href="<?php echo $twitter; ?>" target="_BLANK" class="twitter icon" title="Twitter">
																<?php get_template_part('templates/svg/' . 'twitter'); ?>
															</a>
														</li>
													<?php endif ?>
													<?php if ($linkedin): ?>
														<li>
															<a href="<?php echo $linkedin; ?>" target="_BLANK" class="linkedin icon" title="Linkedin">
																<?php get_template_part('templates/svg/' . 'linkedin'); ?>
															</a>
														</li>
													<?php endif ?>
												</div>
											</div>
											<?php if ($suite): ?>
												<p class="suite-num"><?php echo $suite; ?></p>
											<?php endif ?>
										</div>
								
									<?php endwhile; ?>
								<?php endif; ?>

							<?php endif ?> 
						<?php endwhile; ?>
					</div>	
				</div>
			</section>
		<?php endif ?>
	<?php endif ?>
<?php endwhile; ?>