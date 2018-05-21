<?php 
	
	/* Template Name: Attorney Bio */
	
	get_header(); ?>




<div id="main" class="internal_main">
	
	<div class="att_header_wrapper">
		
		<?php $attorney_image = get_field( 'attorney_image' ); ?>

			<?php if ( $attorney_image ) { ?>
	
				<img class="att_bio_img" src="<?php echo $attorney_image['url']; ?>" alt="<?php echo $attorney_image['alt']; ?>" />

			<?php } ?>
		
		
		<div class="att_header_center">
	
			<h1 class="attorney_bio_header"><?php the_title();?></h1><!-- attorney_bio_header -->
	
			<span class="att_bio_position"><?php the_field( 'position' ); ?></span><!-- att_bio_position -->
		
		</div><!-- att_header_center -->
		
		</div><!-- att_header_wrapper -->
		
		<div id="att_trigger" class="att_excerpt">
			
			<div class="att_excerpt_content">
				
				<div class="att_excerpt_content_inner">
				
					<?php echo file_get_contents("wp-content/themes/begam/images/new_teal_pattern.svg"); ?>
				
					<span><?php the_field( 'intro_block' ); ?></span>
				
				</div><!-- att_excerpt_content_inner -->
				
				<div class="att_bio_image">
			
				<?php $attorney_image = get_field( 'attorney_image' ); ?>

				<?php if ( $attorney_image ) { ?>
	
					<img src="<?php echo $attorney_image['url']; ?>" alt="<?php echo $attorney_image['alt']; ?>" />

				<?php } ?>
			
			</div><!-- att_bio_image -->
				
			</div><!-- att_excerpt_content -->
			
		
		</div><!-- att_excerpt -->
		
		
		<div class="att_bio_content">
			
			
			<div class="att_bio_content_inner content">
				
				
				<?php get_template_part( 'loop', 'page' ); ?>
				
								
			</div><!-- att_bio_content_inner -->
			
			<div class="att_bio_sidebar">
				
				<div class="sidebar_col">
					
					
					<?php if(get_field('column_one_accolades')): ?>
					 
						<?php while(has_sub_field('column_one_accolades')): ?>
						
						<div class="single_list">
							
							<span class="list_title"><?php the_sub_field( 'list_title' ); ?></span><!-- list_title -->
					 
							<?php if(get_sub_field('single_bullet')): ?>
							
								<ul>	
							 
								<?php while(has_sub_field('single_bullet')): ?>
							 
									<li><?php the_sub_field( 'single_bullet_text' ); ?></li>
							    
								<?php endwhile; ?>
								
								</ul>
							 
							<?php endif; ?>
							
						</div><!-- single_list -->
					    
						<?php endwhile; ?>
					 
					<?php endif; ?>
					
				
				</div><!-- sidebar_col -->
				
				<div class="sidebar_col">
					
					<?php if(get_field('column_two_accolades')): ?>
					 
						<?php while(has_sub_field('column_two_accolades')): ?>
						
						<div class="single_list">
							
							<span class="list_title"><?php the_sub_field( 'list_title' ); ?></span><!-- list_title -->
					 
							<?php if(get_sub_field('single_bullet')): ?>
							
								<ul>	
							 
								<?php while(has_sub_field('single_bullet')): ?>
							 
									<li><?php the_sub_field( 'single_bullet_text' ); ?></li>
							    
								<?php endwhile; ?>
								
								</ul>
							 
							<?php endif; ?>
							
						</div><!-- single_list -->
					    
						<?php endwhile; ?>
					 
					<?php endif; ?>
				
				</div><!-- sidebar_col -->
				
			</div><!-- att_bio_sidebar -->
			
		</div><!-- att_bio_content -->
		
	
	
	
</div><!-- internal_main -->

	



<?php get_footer(); ?>


