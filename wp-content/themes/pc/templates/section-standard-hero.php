<section class="hero">
	<?php site_background_image($background); ?>
	<div class="content-container pinned-bottom">
		<?php
			$title = get_field('hero_title');
			$credit = get_field('background_image')[0]['credit'];
		?>
		<?php if (empty($title)): ?>
			<?php if (!empty($credit)): ?>
				<p class="credit">[ Photo Credit: <?php echo $credit; ?> ]</p>
			<?php endif ?>
			<h1 class="title title-mobile"><?php the_title(); ?></h1>
		<?php else: ?>
			<h1 class="title"><?php echo $title; ?></h1>
		<?php endif ?>
	</div>
</section>