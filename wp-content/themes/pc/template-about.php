<?php
/**
 * Template Name: About
 */
?>

<?php while (have_posts()) : the_post(); ?>
	<section class="root-section">
		<?php get_template_part('templates/section', 'about-hero') ?>
		<section class="about-palette">
			<div class="content-container">
				<h3>About Palette</h3>
				<div class="content">
					<?php the_content(); ?>
				</div>
			</div>
		</section>
		<?php if( have_rows('bullet_items')): ?>
			<?php $i = 0; ?>
			<section class="bullet-images">
				<ul>
					<?php while( have_rows('bullet_items') ): the_row(); 
				
						$bg = get_sub_field('background');
						$icon = get_sub_field('image');
						$title = get_sub_field('title');
						$copy = get_sub_field('copy');
						$i++;
				
						?>
				
						<li>
							<div class="bullet-container">
								<figure style="background-image:url(<?php echo $bg; ?>)"></figure>
								<img src="<?php echo $icon; ?>" alt="icon" class="icon">	
								<div class="bullet-info">
									<h2 class="bullet-title"><?php echo $title; ?></h2>
									<p class="copy"><?php echo $copy; ?></p>
								</div>
							</div>
						</li>
				
					<?php endwhile; ?>
				</ul>
			</section>
		<?php endif; ?>
		<section class="additional-content">
				<?php if( have_rows('additional_content')): ?>
				<div class="content-container">
					<?php while( have_rows('additional_content') ): the_row(); 
				
						$title = get_sub_field('title');
						$copy = get_sub_field('copy');
				
						?>
				
						<div class="content">
							<h3 class="content-title"><?php echo $title; ?></h3>
							<p class="content-copy"><?php echo $copy; ?></p>
						</div>
				
					<?php endwhile; ?>
				</div>
				<?php endif; ?>
		</section>
		<section class="locations-preview">
			<figure class="bg" style="background-image:url(/wp-content/uploads/2017/05/dwntn-chandler.jpg)"></figure>
			<?php $loop = new WP_Query( array( 'post_type' => 'location', 'posts_per_page' => -1) ); ?>
			<div class="content-container">
				<div class="inner">
					<h2>Locations</h2>
					<ul>
					<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
						<?php
							$img = get_the_post_thumbnail_url();
						?>
						<li>
							<figure class="bg" style="background-image:url(<?php echo $img; ?>)"></figure>
							<a href="<?php the_permalink(); ?>">
								<span><?php the_title(); ?></span>
							</a>
						</li>
					<?php endwhile; wp_reset_postdata(); ?>
					</ul>
				</div>
			</div>
		</section>
		<?php get_template_part('templates/section', 'sticky-footer') ?>
		<?php get_template_part('templates/section', 'form-modal') ?>
	</section>
<?php endwhile; ?>
