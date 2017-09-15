<?php
/**
 * Template Name: Home
 */
?>

<?php while (have_posts()) : the_post(); ?>
	<section class="root-container">
		<section class="hero">
			<?php get_template_part('templates/section', 'hero-slider') ?>
			<div class="content-container">
				<div class="content-inner">
					<h1 class="title">A place<br>to create</h1>
					<p>We are shrinking the brick and morter model in order to see the craft movement grow.</p>
					<a href="/about" class="cta-button">Learn More</a>
				</div>
			</div>
			<div class="pinned-bottom">
				<?php if( have_rows('bullet_navigation')): ?>
					<ul class="bullet-nav desktop">
					<?php while( have_rows('bullet_navigation') ): the_row(); 
				
						//declare variables
						$text = get_sub_field('text');
						$link = get_sub_field('link');
						$img = get_sub_field('background');
				
						?>
				
						<li>
							<a href="<?php echo $link; ?>">
								<h3><?php echo $text; ?></h3>
								<img src="<?php echo $img; ?>" class="nav-item-bg">
							</a>
						</li>
				
					<?php endwhile; ?>
					</ul>
				<?php endif; ?>
			</div>
		</section>
		<?php get_template_part('templates/section', 'sticky-footer') ?>
		<?php get_template_part('templates/section', 'form-modal') ?>
	</section>
<?php endwhile; ?>
