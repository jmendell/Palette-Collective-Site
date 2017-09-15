<div class="hero-slider">
	<?php if( have_rows('hero_slider_home')): ?>
		<?php while( have_rows('hero_slider_home') ): the_row(); 

			$image = get_sub_field('slider_image');
			$credit = get_sub_field('image_credit');
			$creditLink = get_sub_field('image_credit_link');

			?>

			<div class="slide">
				<figure style="background-image:url(<?php echo $image['url']; ?>);"></figure>
				<div class="credit">
					<p class="font-primary"><a href="<?=$creditLink?>" class="credit-link" target="_BLANK">[ Photo Credit: <span id="credit"><?=$credit?></span> ]</a></p>
				</div>
			</div>
	
		<?php endwhile; ?>
	<?php endif; ?>
</div>