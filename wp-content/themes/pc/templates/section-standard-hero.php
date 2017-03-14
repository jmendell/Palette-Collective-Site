<section class="hero">
	<?php site_background_image($background); ?>
	<div class="content-container pinned-bottom">
		<?php if (!empty(get_field('hero_title'))): ?>
			<h1 class="title"><?php the_field('hero_title'); ?></h1>
		<?php else: ?>
			<h1 class="title"><?php the_title(); ?></h1>
		<?php endif ?>
	</div>
</section>