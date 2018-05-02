<?php get_header(); ?>


<div id="main" class="internal_main default">
	
	<?php get_sidebar('blog'); ?>
	
	<div class="container content">
		
		<h1 class="default_intro"><?php
				printf( __( '%s', 'twentyten' ), '<span>' . single_cat_title( '', false ) . '</span>' );?>
		</h1><!-- default_intro -->
		
		
		<div class="post_wrapper">
			
			<?php
					$category_description = category_description();
					if ( ! empty( $category_description ) )
						echo '<div class="archive-meta">' . $category_description . '</div>';

				/*
				
				 * include a file called loop-category.php and that will be used instead.
				 */
				get_template_part( 'loop', 'category' );
			?>
			
		</div><!-- post_wrapper -->
		
	
	</div><!-- container -->
	
	
</div><!-- internal_main -->

<?php get_footer(); ?>

