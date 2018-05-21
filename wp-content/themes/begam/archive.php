<?php get_header(); ?>

<?php
	
	 if ( have_posts() )
		the_post();
?>

<div id="main" class="internal_main default">
	
	<?php get_sidebar('blog'); ?>
	
	<div class="container content">
		
		<h1 class="default_intro"><?php if ( is_day() ) : ?>
				<?php printf( __( '<span>%s</span>', 'twentyten' ), get_the_date() ); ?>
<?php elseif ( is_month() ) : ?>
				<?php printf( __( '<span>%s</span>', 'twentyten' ), get_the_date( _x( 'F Y', 'monthly archives date format', 'twentyten' ) ) ); ?>
<?php elseif ( is_year() ) : ?>
				<?php printf( __( '<span>%s</span>', 'twentyten' ), get_the_date( _x( 'Y', 'yearly archives date format', 'twentyten' ) ) ); ?>
<?php else : ?>
				<?php _e( 'Blog Archives', 'twentyten' ); ?>
<?php endif; ?>
</h1><!-- default_intro -->
		
		
		<div class="post_wrapper">
			
			
			<?php
	
				rewind_posts();

	
				get_template_part( 'loop', 'archive' );

			?>
			
		</div><!-- post_wrapper -->
		
	
	</div><!-- container -->
	
	
</div><!-- internal_main -->

<?php get_footer(); ?>

