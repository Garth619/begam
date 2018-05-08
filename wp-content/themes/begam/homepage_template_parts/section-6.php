<section id="section_six">
	
	<div class="sec_six_inner">
		
		
		
		<span class="sec_six_title"><?php the_field( 'section_six_header' ); ?></span><!-- sec_six_title -->
		
		<div class="sec_six_boxes_wrapper">
			
			
			<div class="reviews_wrapper">
				
				<div class="reviews_slider">
					
					
					<?php if(get_field('section_six_reviews')): ?>
					 
						<?php while(has_sub_field('section_six_reviews')): ?>
					 
						
							<div class="reviews_single_slide">
						
								<span class="reviews_slide_content"><?php the_sub_field( 'reviews_content' ); ?></span><!-- reviews_slide_content -->
						
								<span class="client_name"><?php the_sub_field( 'reviews_name' ); ?></span><!-- client_name -->
						
							</div><!-- reviews_single_slide -->
						
					    
						<?php endwhile; ?>
					 
					<?php endif; ?>
					
					
					</div><!-- reviews_slider -->
				
				<div class="reviews_buttons">
					
					<div class="reviews_back"></div><!-- reviews_back -->
					
					<div class="reviews_next"></div><!-- reviews_next -->
					
				</div><!-- reviews_buttons -->
				
			</div><!-- reviews_wrapper -->
			
			<div class="reviews_img_wrapper">
				
				
				<?php $section_six_image_desktop = get_field( 'section_six_image_desktop' ); ?>

				<?php if ( $section_six_image_desktop ) { ?>
	
					<img class="desktop_image" src="<?php echo $section_six_image_desktop['url']; ?>" alt="<?php echo $section_six_image_desktop['alt']; ?>" />

				<?php } ?>
				
				
				<?php $section_six_image_tablet = get_field( 'section_six_image_tablet' ); ?>
				
				<?php if ( $section_six_image_tablet ) { ?>
	
				<img class="laptop_image" src="<?php echo $section_six_image_tablet['url']; ?>" alt="<?php echo $section_six_image_tablet['alt']; ?>" />

				<?php } ?>
				
				
				<?php $section_six_image_mobile = get_field( 'section_six_image_mobile' ); ?>
				
				<?php if ( $section_six_image_mobile ) { ?>
	
					<img class="tablet_image" src="<?php echo $section_six_image_mobile['url']; ?>" alt="<?php echo $section_six_image_mobile['alt']; ?>" />

				<?php } ?>
			
			
			</div><!-- reviews_img_wrapper -->
			
			<a class="review_view_more" href="<?php the_field( 'section_six_view_more_link' ); ?>"><?php the_field( 'section_six__view_more_verbiage' ); ?></a><!-- review_view_more -->
			
		</div><!-- sec_six_boxes_wrapper -->
		
		
	</div><!-- sec_six_inner -->
	
</section><!-- section_six -->