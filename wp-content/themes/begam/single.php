<?php get_header(); ?>


<div id="main" class="internal_main default">
	
	<?php get_sidebar('blog'); ?>
	
	<div class="container content">
		
		<div class="post_wrapper">
			
			<?php get_template_part( 'loop', 'single' ); ?>
			
		</div><!-- post_wrapper -->
		
	
	</div><!-- container -->
	
	
</div><!-- internal_main -->

<?php get_footer(); ?>


	







