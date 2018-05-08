<section id="section_four">
	
	<span class="sec_four_case_results"><?php the_field( 'section_four_header' ); ?></span><!-- sec_four_case_results -->
	
	
	<div class="outer_slider">
	
		
		<div class="back_button"></div><!-- back_button -->
		
		<div class="case_results_slider">
			
			
			<?php if(get_field('sec_four_case_results')): ?>
			 
				<?php while(has_sub_field('sec_four_case_results')): ?>
				
				
					<div class="case_results_single_slide <?php the_sub_field( 'slide_class' ); ?>">
						
						<?php $cr_svg = 'wp-content/themes/begam/images/'. get_sub_field('svg') .'';?>
				
						<?php echo file_get_contents($cr_svg); ?>
					
					<span class="case_amount"><?php the_sub_field( 'amount' ); ?></span><!-- case_amount -->
				
					<span class="case_cat"><?php the_sub_field( 'case_type' ); ?></span><!-- case_title -->
				
					<div class="hover_content">
					
						<span><?php the_sub_field( 'hover_description' ); ?>...</span>
					
					</div><!-- hover_content -->
				
			</div><!-- case_results_single_slide -->
			 
					
			    
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
						
			<div class="mobile_buttons">
			
				<div class="mobile_back_button"></div><!-- mobile_back_button -->
			
				<div class="mobile_next_button"></div><!-- mobile_next_button -->
			
			</div><!-- mobile_buttons -->

			<div class="view_more_wrapper">
			
				<a class="view_more" href="<?php the_field( 'section_four_view_more_link' ); ?>"><?php the_field( 'section_four_view_more_verbiage' ); ?></a><!-- view_more -->
			
			</div><!-- view_more_wrapper -->
			
				
		</div><!-- case_results_slider -->
		
		<div class="next_button"></div><!-- next_button -->
		
		
				
		</div><!-- outer_slider -->
	
	
	
	
</section><!-- section_four -->