<?php 
	
	/* Template Name: Attorney Overview */
	
	get_header(); ?>



<div id="main" class="internal_main">
	
		
	<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
	
	<div class="att_overview">
		
		
		<?php if(get_field('attorney_directory')): ?>
		 
			<?php while(has_sub_field('attorney_directory')): ?>
		 
						
			<?php $post_object = get_sub_field( 'attorney' ); ?>
		
				<?php if ( $post_object ): ?>
			
				<?php $post = $post_object; ?>
			
				<?php setup_postdata( $post ); ?> 
					
					
					
					<div class="single_att_overview">
			
						<a class="" href="<?php the_permalink();?>">
			
							<div class="single_att_inner">
			
								<?php $attorney_image = get_sub_field( 'attorney_image' ); ?>
		
								<?php if ( $attorney_image ) { ?>
			
									<img src="<?php echo $attorney_image['url']; ?>" alt="<?php echo $attorney_image['alt']; ?>" />
		
								<?php } ?>
			
							</div><!-- single_att_inner -->
			
						</a>
			
						<span class="att_name"><?php the_title();?></span><!-- att_title -->
			
						<span class="att_title"><?php the_field( 'position' ); ?></span><!-- att_title -->
			
					</div><!-- single_att_overview -->
					
					

				
				<?php wp_reset_postdata(); ?>
						
			<?php endif; ?>
						
			
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
		

		
		
	</div><!-- att_overview -->


</div><!-- internal_main -->

	



<?php get_footer(); ?>




