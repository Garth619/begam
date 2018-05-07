<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

		<h1 class="default_intro"><?php the_title();?></h1>
		
		<div class="single_post_feed">
		
			<div class="meta">Posted On <span><?php $pfx_date = get_the_date(); echo $pfx_date ?></span></div>
				
				
				
				<span class="post_content"><?php the_content();?></span>
				
				
				
				<?php edit_post_link( __( 'Edit'), '', '' ); ?>
		
		</div>
	


<?php endwhile; // end of loop ?>

<?php endif; ?>