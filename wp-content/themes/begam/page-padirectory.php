<?php 
	
	/* Template Name: PA Directory */
	
	get_header(); ?>




<div id="main" class="internal_main">
	
	<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
	
	<div class="pa_directory">
		
		<?php wp_nav_menu( array( 'container_class' => 'menu-header', 'theme_location' => 'pa_menu' ) ); ?>	
		
	</div><!-- pa_directory -->
	
	<img class="test_bgimage" src="<?php bloginfo('template_directory');?>/images/testbg.jpg"/>
	
	
	<img class="test_bgimage_two" src="<?php bloginfo('template_directory');?>/images/testbg.jpg"/>
		
</div><!-- internal_main -->

	



<?php get_footer(); ?>


