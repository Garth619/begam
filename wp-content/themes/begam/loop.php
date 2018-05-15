
<?php if ( ! have_posts() ) : ?>
	
	
	<div id="post-0" class="post error404 not-found">
		
		<h2>Not Found</h2>
		
		<div class="entry-content">
			<p>Apologies, but no posts have been created</p>
			
		</div><!-- .entry-content -->
	</div><!-- #post-0 -->


<?php endif; ?>


<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

	<div class="single_post_feed">
				
		<div class="meta">Posted On <span><?php $pfx_date = get_the_date(); echo $pfx_date ?></span></div>
				
			<h2 class="post_title"><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>
				
			<span class="post_content"> <?php echo wp_trim_words( get_the_content(), 110, '...' );?></span>
				
			<a class="read_more" href="<?php the_permalink();?>">Read More</a>
				
			<?php edit_post_link( __( 'Edit'), '', '' ); ?>
				
				
		</div><!-- single_post_feed -->
					
		
<?php endwhile; // end of loop ?>

<?php endif; ?>



<?php if (  $wp_query->max_num_pages > 1 ) : ?>
	
	<div id="nav_below" class="navigation">
		
		
		<?php if(get_next_posts_link()):?>
		
		<div class="nav_previous"><?php next_posts_link( __( '<span class="meta-nav"><span></span></span>' ) ); ?></div>
		
		<?php endif;?>
			
		<div class="nav_next"><?php previous_posts_link( __( '<span class="meta-nav"><span></span></span>') ); ?></div>
	
	</div><!-- #nav-below -->

<?php endif; ?>

