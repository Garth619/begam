<?php 
	
/* Template Name: Contact */	

get_header(); ?>


<div id="main" class="internal_main">
	
		
	<div class="contact_wrapper">
		
		<div class="contact_left">
			
			<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
			
			<?php echo file_get_contents("wp-content/themes/begam/images/new_teal_pattern.svg"); ?>
			
			<a class="address" href="" target="_blank">
				11201 N. Tatum Blvd. 
				Suite #110<br/>
				Phoenix, AZ 85028
			</a>

			<a class="tel" href="tel" target="_blank">(602) 254-6071</a>
			
			<a class="get_directions" href="" target="_blank">Directions</a><!-- get_directions -->
			
		</div><!-- contact_left -->
		
		<div class="contact_right">
			
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3277.9257879339716!2d-111.9779523999095!3d33.587556062469!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b1223c0e9d0a1%3A0xb65d2f61505d793c!2sBegam+Marks+%26+Traulsen!5e0!3m2!1sen!2sus!4v1525109483303" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			
			<img class="contact_bg_one" src="<?php bloginfo('template_directory');?>/images/404bg.jpg"/>
			
			<img class="contact_bg_two" src="<?php bloginfo('template_directory');?>/images/404bg.jpg"/>
			
		</div><!-- contact_right -->
		
		
		
		
		
	</div><!-- contact_wrapper -->
		
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>

