<section id="section_two">
	
	
	<div class="sec_two_slider">
		
		
		<?php if(get_field('section_two_selling_points')): ?>
		 
			<?php while(has_sub_field('section_two_selling_points')): ?>
		 
				<div class="sec_two_single <?php the_sub_field( 'sp_class' ); ?>">
			
					<a class="" href="<?php the_sub_field( 'selling_point_link' ); ?>">
						
					<?php $sp_svg = 'wp-content/themes/begam/images/' . get_sub_field( 'svg' ) . '' ?>
			
					<?php echo file_get_contents($sp_svg); ?>
				
					<span class="header"><?php the_sub_field( 'selling_point_title' ); ?></span><!-- header -->
				
					<?php echo file_get_contents("wp-content/themes/begam/images/new_pattern.svg"); ?>
				
					<span class="sec_two_content"><?php the_sub_field( 'selling_point_description' ); ?></span><!-- sec_two_content -->
				
					<span class="gold_link"><?php the_sub_field( 'selling_point_link_verbiage' ); ?></span><!-- gold_link -->
				
				</a>
			
				<div class="img_bg_wrapper">
				
					<img class="bg" src="<?php bloginfo('template_directory');?>/images/cr-bg-pattern-03.png"/>
				
				</div><!-- img_bg_wrapper -->
			
			</div><!-- sec_two_single -->
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
		
				
		
	</div><!-- sec_two_slider -->
	
	
</section><!-- section_two -->