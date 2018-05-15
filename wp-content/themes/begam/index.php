<?php get_header(); ?>


<div id="main" class="internal_main default">
	
	<?php get_sidebar('blog'); ?>
	
	<div class="container content">
		
		<h1 class="default_intro">Blog</h1><!-- default_intro -->
		
		
		<div class="post_wrapper">
			
			<?php get_template_part( 'loop', 'index' );?>
			
		</div><!-- post_wrapper -->
		
	
	</div><!-- container -->
	
	
</div><!-- internal_main -->

<?php get_footer(); ?>

