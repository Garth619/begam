<?php 
	
	/* Template Name: Client Reviews */
	
	get_header(); ?>




<div id="main" class="internal_main">
	
	<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
	
	<div class="case_results_page">
		
		<div class="cr_col">
			
			
			<?php if(get_field('client_reviews_column_one')): ?>
			 
				<?php while(has_sub_field('client_reviews_column_one')): ?>
			 
					
					<div class="cr_single">
				
						<span class="cr_content"><?php the_sub_field( 'client_review' ); ?></span>
				
						<span class="cr_name"><?php the_sub_field( 'client_name' ); ?></span><!-- cr_name -->
				
					</div><!-- cr_single -->

			    
				<?php endwhile; ?>
			 
			<?php endif; ?>
						
		</div><!-- cr_col -->
		
		<div class="cr_col">
			
			
			
			<?php if(get_field('client_reviews_column_two')): ?>
			 
				<?php while(has_sub_field('client_reviews_column_two')): ?>
			 
					
					<div class="cr_single">
				
						<span class="cr_content"><?php the_sub_field( 'client_review' ); ?></span>
				
						<span class="cr_name"><?php the_sub_field( 'client_name' ); ?></span><!-- cr_name -->
				
					</div><!-- cr_single -->

			    
				<?php endwhile; ?>
			 
			<?php endif; ?>
			
			
			
		</div><!-- cr_col -->
		
		
		
		
		
	</div><!-- case_results_page -->
	
	<img class="test_bgimage" src="<?php bloginfo('template_directory');?>/images/testbg.jpg"/>
		
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>


