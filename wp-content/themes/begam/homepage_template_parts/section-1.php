<section id="section_one">
	
	
	<div class="inner_section_one">
		
		
		<span class="sec_one_content"><?php the_field( 'section_one_verbiage' ); ?></span><!-- sec_one_content -->
		
		<div class="sec_one_form_wrapper">
			
			<span class="get_stared_here"><?php the_field( 'sec_one_get_started_verbiage' ); ?></span><!-- get_stared_here -->
			
			<div class="select_mock_wrapper">
				
				<div class="first_input_wrapper">
					
					<div class="input_left">
						
						<span class="input_left_select_copy"><?php the_field( 'select_tee_up' ); ?></span><!-- input_left_select_copy -->
						
					</div><!-- input_left -->
					
					<div class="input_right">
						
						
						
					</div><!-- input_right -->
					
					<div class="mock_dropdown">
						
						<ul>
							
							
							<?php if(get_field('select_options')): ?>
							 
								<?php while(has_sub_field('select_options')): ?>
							 
									<li><?php the_sub_field( 'option' ); ?></li>
							    
								<?php endwhile; ?>
							 
							<?php endif; ?>
							
						</ul>
						
					</div><!-- mock_dropdown -->
					
				</div><!-- first_input_wrapper -->
				
			</div><!-- select_mock_wrapper -->
			
		</div><!-- sec_one_form_wrapper -->
		
		
	</div><!-- inner_section_one -->
	
	
</section><!-- section_one -->

<div class="mobile_free_button">
	
	Free Consultation Here
	
</div><!-- mobile_free_button -->