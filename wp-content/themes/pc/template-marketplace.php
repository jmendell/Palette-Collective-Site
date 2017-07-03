<?php
/**
 * Template Name: Marketplace
 */
?>

<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/section', 'standard-hero') ?>
	<div class="marketplace-container"></div>
		<div class="marketplace-form-container">
			<h3 class="marketplace-form-title">Join The Marketplace</h3>
			<p class="subtext">PALETTE IS BEST EXPERIENCED IN PERSON. FILL OUT YOUR INFORMATION TO SCHEDULE A VISIT.</p>
			<?php echo do_shortcode('[gravityform id=4 title=false description=false ajax=true tabindex=49]') ?>
		</div>
	<section class="marketplace-section">
		<h1 class="tagline">The Marketplace page is Coming Soon!</h1>
	</section>
<?php endwhile; ?>