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
</div>
</header>
