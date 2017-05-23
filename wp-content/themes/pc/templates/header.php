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
	<nav role="navigation">
		<?php
		if (has_nav_menu('primary_navigation')) :
			wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']);
		endif;
		?>
	</nav>
	<div class="menu-info">
		<div class="content-container">
			<a class="menu-brand" href="<?= esc_url(home_url('/')); ?>">
				<img src="<?php the_field('site_logo_dark', 'OPTIONS'); ?>" alt="">
			</a>
			<div class="connect">
				<a href="mailto:info@mypalettecollective.com" class="email">info@mypalettecollective.com</a>
				<p class="dash">-</p>
				<span class="tel">(480) 123-4567</span>
			</div>
			<div class="social">
				<?php get_template_part('templates/social', 'nav'); ?>
			</div>
		</div>
	</div>
</div>
</header>
