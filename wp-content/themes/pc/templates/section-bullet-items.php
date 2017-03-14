<?php if( have_rows('bullet_items')): ?>
	<?php $i = 0; ?>
	<section class="bullet-items">
		<div class="content-container">
			<ul>
			<?php while( have_rows('bullet_items') ): the_row(); 

				$image = get_sub_field('image');
				$title = get_sub_field('title');
				$copy = get_sub_field('copy');
				$i++;
				?>

				<li id="bullet-<?php echo $i; ?>">
					<div class="bullet-image">
						<img src="<?php echo $image; ?>" alt="icon">
					</div>
					<div class="content">
						<h4><?php echo $title; ?></h4>
						<p><?php echo $copy; ?></p>
					</div>
				</li>

			<?php endwhile; ?>
			</ul>
		</div>
	</section>
<?php endif; ?>