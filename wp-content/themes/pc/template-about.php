<?php
/**
 * Template Name: About
 */
?>

<?php while (have_posts()) : the_post(); ?>
	<section class="root-section">
		<?php get_template_part('templates/section', 'standard-hero') ?>
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
						$i++;
				
						?>
				
						<li>
							<a href="#bullet-<?php echo $i; ?>">
								<figure style="background-image:url(<?php echo $bg; ?>)"></figure>
								<img src="<?php echo $icon; ?>" alt="icon">
							</a>
						</li>
				
					<?php endwhile; ?>
				</ul>
			</section>
		<?php endif; ?>
		<?php get_template_part('templates/section', 'bullet-items') ?>
		<section class="locations-preview">
			<?php
					$args = array( 'post_type' => 'location', 'posts_per_page' => -1);
					$loop = new WP_Query( $args );
				?>
				<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>  
				<?php endwhile; 
				// Reset Post Data
				wp_reset_postdata();
				?>
		</section>
	</section>
<?php endwhile; ?>
