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
			),
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

	<?php  
		$marketplace_categories = get_terms( 
			array(
		    	'taxonomy' => 'marketplace_categories',
		    	'hide_empty' => true,
		    	'orderby' => 'menu_order'
			)
		);
	?>

	<?php if ($loop->have_posts()): ?>
		<?php if ($location_has_marketplace): ?>
			<section class="marketplace-tenants">
				<div class="content-container">
					<div class="title-section">
					<h2 class="dynamic-title">Marketplace</h2>
					<img src="/wp-content/uploads/2017/08/down-arrow.png " alt="arrow" class="down-arrow">
				</div>
				<!-- <ul class="category-select">
					<li class="mix category" data-filter="all" data-title="Marketplace">All</li>
					<?php foreach ($marketplace_categories as $category): ?>
						<li class="mix category" data-filter=".<?php echo $category->slug ?>" data-title="<?php echo $category->name ?>"><?php echo $category->name ?></li>	
					<?php endforeach ?>
				</ul> -->
					<div class="marketplace-card-section">
						<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
							<?php $termFilter = ''; 
							$termName = '';
							?>
							<?php $terms = get_the_terms($post->ID, 'marketplace_categories');
							 ?>
							<?php if (get_field('marketplace', $post->ID)): ?>
								
								<?php if( have_rows('tenant_info')): ?>
									<?php while( have_rows('tenant_info') ): the_row(); 
								
										$phone = get_sub_field('phone_number');
										$email = get_sub_field('email');
										$website = get_sub_field('website');
										$fb = get_sub_field('facebook_link');
										$insta = get_sub_field('instagram_link');
										$twitter = get_sub_field('twitter_link');
										$linkedin = get_sub_field('linkedin');
										$linkedin = get_sub_field('linkedin');
										$suite = get_sub_field('suite_number');
										?>

										<?php foreach ($terms as $term) {
											$termFilter .= $term->slug . ' ';
										} 
										$termFilter = rtrim($termFilter, ' ');

										?>
							
									<div class="marketplace-tenant-card mix <?php echo $termFilter; ?>">
										<div class="tenant-info">
											<h4 class="name"><?php the_title(); ?></h4>
											<?php if ($terms): ?>
												<!-- <p class="category">
													<?php foreach ($terms as $term) {
														$termName .= $term->name . ', ';
														} 
														$termName = rtrim($termName , ', ');

														echo $termName;
													?>
												</p> -->
											<?php endif ?>
											<?php if ($phone): ?>
												<a href="<?php echo $phone; ?>"><?php echo $phone; ?></a>
											<?php endif ?>
											<?php if ($email): ?>
												<a href="<?php echo $email ?>"><?php echo $email ?></a>
											<?php endif ?>
											<?php if ($website): ?>
												<a href="<?php echo $website; ?>" target="_BLANK"><?php echo $website; ?></a>
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
											<?php if ($suite): ?>
												<p class="suite-num"><?php echo $suite; ?></p>
											<?php endif ?>
										</div>
									</div>
							
								<?php endwhile; ?>
							<?php endif; ?>

							<?php endif ?>
						<?php endwhile; ?>
					</div>
				</div>
			</section>
		<?php endif ?>

		<?php  
			$tenant_categories = get_terms( 
				array(
			    	'taxonomy' => 'tenant_categories',
			    	'hide_empty' => true,
			    	'orderby' => 'menu_order'
				)
			);
		?>

		<?php if ($location_has_non_marketplace_tenants): ?>
			<section class="location-tenants">
				<div class="content-container">
					<div class="title-section">
						<h2 class="dynamic-title">Tenants</h2>
						<img src="/wp-content/uploads/2017/08/down-arrow.png" alt="arrow" class="down-arrow">
					</div>
					<ul class="category-select">
						<div class="category-container">
							<li class="mix category" data-filter="all" data-title="Tenants">All</li>
							<?php foreach ($tenant_categories as $category): ?>
								<li class="mix category" data-filter=".<?php echo $category->slug ?>" data-title="<?php echo $category->name ?>"><?php echo $category->name ?></li>	
							<?php endforeach ?>
						</div>
					</ul>
					<div class="tenant-card-section">
						<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
							<?php $termFilter = ''; 
							$termName = '';
							?>
							<?php $terms = get_the_terms($post->ID, 'tenant_categories');
							 ?>
							<?php if (!get_field('marketplace', $post->ID)): ?>
								
								<?php if( have_rows('tenant_info')): ?>
									<?php while( have_rows('tenant_info') ): the_row(); 
								
										$phone = get_sub_field('phone_number');
										$email = get_sub_field('email');
										$website = get_sub_field('website');
										$fb = get_sub_field('facebook_link');
										$insta = get_sub_field('instagram_link');
										$twitter = get_sub_field('twitter_link');
										$linkedin = get_sub_field('linkedin');
										$linkedin = get_sub_field('linkedin');
										$suite = get_sub_field('suite_number');
										?>

										<?php foreach ($terms as $term) {
											$termFilter .= $term->slug . ' ';
										} 
										$termFilter = rtrim($termFilter, ' ');

										?>
									
										<div class="location-tenant-card mix <?php echo $termFilter; ?>">
											<div class="tenant-info">
												<h4 class="name"><?php the_title(); ?></h4>
												<?php if ($terms): ?>
													<p class="category">
														<?php foreach ($terms as $term) {
															$termName .= $term->name . ', ';
														} 
														$termName = rtrim($termName , ', ');

														echo $termName;
														?>
													</p>
												<?php endif ?>
												<?php if ($phone): ?>
													<a href="<?php echo $phone; ?>" class="phone"><?php echo $phone; ?></a>
												<?php endif ?>
												<?php if ($email): ?>
													<a href="<?php echo $email; ?>"><?php echo $email; ?></a>
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
												<?php if ($suite): ?>
													<p class="suite-num"><?php echo $suite; ?></p>
												<?php endif ?>
											</div>
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