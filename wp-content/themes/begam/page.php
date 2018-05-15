<?php get_header(); ?>


<div class="internal_banner">
	
	
	<div class="internal_banner_inner">
		
		<span class="banner_title"><?php the_field( 'banner_verbiage','option'); ?></span>
		
		<span class="internal_consult"><?php the_field( 'free_consultation_verbiage','option'); ?></span>
		
	</div><!-- internal_banner_inner -->
	
</div><!-- internal_banner -->

<div id="main" class="internal_main default">
	
	<?php get_sidebar(); ?>
	
	<div class="container content">
		
		<h1 class="default_intro"><?php the_title();?></h1><!-- default_intro -->
		
		<?php get_template_part( 'loop', 'page' ); ?>
		
	</div><!-- container -->
	
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>




