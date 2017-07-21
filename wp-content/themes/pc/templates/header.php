<header class="banner" role="banner">
<div class="container">
	<a class="brand" href="<?= esc_url(home_url('/')); ?>">
		<img src="<?php the_field('site_logo', 'OPTIONS'); ?>" alt="">
	</a>
	<div class="nav-options">
		<div id="menu-toggle" class="menu-toggle">
			<div class="hamburger">
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
		<a href="/locations" class="cta-button white">Join the collective</a>
	</div>
</div>
<div class="full-width-menu open">
	<div class="escape"></div>
	<a class="menu-brand" href="<?= esc_url(home_url('/')); ?>">
		<img src="<?php the_field('site_logo_dark', 'OPTIONS'); ?>" class="menu-logo" alt="">
	</a>
	<nav role="navigation">
		<?php
		palettePrimary_nav();
		?>
	</nav>
	<div class="menu-info">
		<div class="content-container">
			<div class="connect">
				<a href="mailto:info@mypalettecollective.com" class="email">info@mypalettecollective.com</a>
				<p class="dash">-</p>
				<a href="tel:4801234567" class="phone">(480) 123-4567</a>
			</div>
			<div class="social">
				<?php get_template_part('templates/social', 'nav'); ?>
			</div>
		</div>
	</div>
</div>
</header>
