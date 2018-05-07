<?php get_header(); ?>


<div class="internal_banner">
	
	
	<div class="internal_banner_inner">
		
		<span class="banner_title">Need To Say Something Here</span>
		
		<span class="internal_consult">Free Consultation</span>
		
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




