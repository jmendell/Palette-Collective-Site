<?php
/**
 * Template Name: Marketplace
 */
?>

<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/section', 'standard-hero') ?>
	<section class="marketplace-section">
		<h1 class="tagline">The Marketplace page is Coming Soon!</h1>
	</section>
<?php endwhile; ?>