<?php 
	
	/* Template Name: Attorney Bio */
	
	get_header(); ?>




<div id="main" class="internal_main">
	
	<div class="att_header_wrapper">
		
		<div class="att_header_center">
	
			<h1 class="attorney_bio_header">Richard Traulsen</h1><!-- attorney_bio_header -->
	
			<span class="att_bio_position">Attorney/Partner</span><!-- att_bio_position -->
		
		</div><!-- att_header_center -->
		
		<div class="att_excerpt">
			
			<div class="att_excerpt_content">
				
				<div class="att_excerpt_content_inner">
				
					<?php echo file_get_contents("wp-content/themes/begam/images/new_teal_pattern.svg"); ?>
				
					<span>Stanley J. Marks is passionate about helping crash victims and their families, particularly those who have been seriously injured, due to deliberate or reckless actions by others.</span>
				
				</div><!-- att_excerpt_content_inner -->
				
				<div class="att_bio_image">
			
				<img src="<?php bloginfo('template_directory');?>/images/att-bio-temp.jpg"/>
			
			</div><!-- att_bio_image -->
				
			</div><!-- att_excerpt_content -->
			
			

		</div><!-- att_excerpt -->
		
	
	</div><!-- att_header_wrapper -->
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>


