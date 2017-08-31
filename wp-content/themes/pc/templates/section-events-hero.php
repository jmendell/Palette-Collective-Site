<?php 

global $eventLoop;

?>

<section class="events-hero">
	<?php site_background_image($background); ?>
	<div class="content-container pinned-bottom">
		<?php
			$title = get_field('hero_title');
			$credit = get_field('background_image')[0]['credit'];
			$link = get_field('background_image')[0]['instagram_link'];
		?>
		<?php if (!empty($title)): ?>
			<h1 class="title"><?php echo $title; ?></h1>
			<?php if (!empty($credit)): ?>
				<a href="<?php echo $link; ?>" target="_BLANK" class="credit credit-link">[ Photo Credit: <?php echo $credit; ?> ]</a>
			<?php endif ?>
		<?php endif ?>
		<?php if ($eventLoop->have_posts()): ?>
			<a href="#event-form-wrap" class="cta-button event-button">Host An Event</a>
		<?php endif ?>
	</div>
</section>