<?php 
	
	/* Template Name: Case Results */
	
	get_header(); ?>




<div id="main" class="internal_main">
	
	<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
	
	<?php echo file_get_contents("wp-content/themes/begam/images/new_pattern.svg"); ?>
	
	<span class="case_results_page_intro"><?php the_field( 'case_results_intro' ); ?></span><!-- case_results_page_intro -->
	
	<div class="case_results_page_wrapper">
		
		
		<?php if(get_field('case_results')): ?>
		 
			<?php while(has_sub_field('case_results')): ?>
		 
				
				
				<div class="case_results_page_single">
			
					<div class="cr_single_inner">
			
						<div class="svg_wrapper">
							
							
							<?php if( get_sub_field('select_svg') == 'Stethoscope' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_steth.svg"); ?>
							
							
							<?php endif; ?>
							
							<?php if( get_sub_field('select_svg') == 'Truck' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_truck.svg"); ?>
							
							
							<?php endif; ?>
							
							<?php if( get_sub_field('select_svg') == 'Cactus' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_cactus.svg"); ?>
							
							
							<?php endif; ?>
							
							<?php if( get_sub_field('select_svg') == 'Fire' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_fire.svg"); ?>
							
							
							<?php endif; ?>
							
							<?php if( get_sub_field('select_svg') == 'Sailboat' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_boat.svg"); ?>
							
							
							<?php endif; ?>
							
							<?php if( get_sub_field('select_svg') == 'Heart' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_heart.svg"); ?>
							
							
							<?php endif; ?>
							
							<?php if( get_sub_field('select_svg') == 'Bike' ): ?>
	
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_motorcycle.svg"); ?>
							
							
							<?php endif; ?>
			
							
			
						</div><!-- svg_wrapper -->
			
						<span class="amount"><?php the_sub_field( 'amount' ); ?></span><!-- amount -->
			
						<span class="case"><?php the_sub_field( 'case_result_name' ); ?></span><!-- type -->
			
						<span class="type"><?php the_sub_field( 'case_result_type' ); ?></span><!-- type -->
			
					</div><!-- cr_single_inner -->
			
					<div class="cr_bg_wrapper"></div><!-- cr_bg_wrapper -->
			
				</div><!-- case_results_page_single -->
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
		
	</div><!-- case_results_page_wrapper -->
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>


