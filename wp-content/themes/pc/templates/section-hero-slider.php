<div class="hero-slider">
	<?php if( have_rows('hero_slider')): ?>
		<?php while( have_rows('hero_slider') ): the_row(); 

			$image = get_sub_field('slider_image');
			$credit = get_sub_field('image_credit');

			?>

			<div class="slide" data-credit="<?php echo $credit; ?>">
				<figure style="background-image:url(<?php echo $image['url']; ?>);"></figure>
			</div>
	
		<?php endwhile; ?>
	<?php endif; ?>
</div>