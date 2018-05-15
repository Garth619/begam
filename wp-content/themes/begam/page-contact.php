<?php 
	
/* Template Name: Contact */	

get_header(); ?>


<div id="main" class="internal_main">
	
		
	<div class="contact_wrapper">
		
		<div class="contact_left">
			
			<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
			
			<?php echo file_get_contents("wp-content/themes/begam/images/new_teal_pattern.svg"); ?>
			
			<a class="address" href="<?php the_field( 'address_link' ); ?>" target="_blank">
					<?php the_field( 'address' ); ?>
			</a>

			<a class="tel" href="tel:<?php the_field( 'phone' ); ?>" target="_blank"><?php the_field( 'phone' ); ?></a>
			
			<a class="get_directions" href="<?php the_field( 'address_link' ); ?>" target="_blank">Directions</a><!-- get_directions -->
			
		</div><!-- contact_left -->
		
		<div class="contact_right">
			
			<?php the_field( 'iframe_map' ); ?>
			
			<img class="contact_bg_one" src="<?php bloginfo('template_directory');?>/images/404bg.jpg"/>
			
			<img class="contact_bg_two" src="<?php bloginfo('template_directory');?>/images/404bg.jpg"/>
			
		</div><!-- contact_right -->
		
		
		
		
		
	</div><!-- contact_wrapper -->
		
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>

