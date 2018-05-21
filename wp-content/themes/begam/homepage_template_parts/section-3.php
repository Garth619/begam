<section id="section_three">
	
	<div class="sec_three_inner content">
		
		<h1><?php the_field( 'section_three_h1_header' ); ?></h1>
		
		
		<div class="sec_three_col_wrapper">
		
		<div class="sec_three_col">
			
			
		<?php the_field( 'section_three_column_one' ); ?>
		
					
		</div><!-- sec_three_col -->
		
		<div class="sec_three_col">
			
			
			<div class="aboutus_img_wrapper">
				
				<?php $section_three_about_image = get_field( 'section_three_about_image' ); ?>

				<?php if ( $section_three_about_image ) { ?>
	
					<img src="<?php echo $section_three_about_image['url']; ?>" alt="<?php echo $section_three_about_image['alt']; ?>" />

				<?php } ?>
				
				
				<div class="play_video wistia_embed wistia_async_<?php the_field( 'section_three_wistia_video_id' ); ?> popover=true popoverContent=html">
					
					<?php echo file_get_contents("wp-content/themes/begam/images/new_play.svg"); ?>
				
					<script src="https://fast.wistia.com/assets/external/E-v1.js" async></script>
				
				</div><!-- play_video -->
				
				<span class="about_title"><?php the_field( 'about_header' ); ?></span><!-- about_title -->
				
				<span class="about_content"><?php the_field( 'about_us_content' ); ?></span>
				
				
			</div><!-- aboutus_img_wrapper -->
			
			<?php the_field( 'section_three_column_two' ); ?>			
			
		</div><!-- sec_three_col -->
		
		
		</div><!-- sec_three_col_wrapper -->
				
	</div><!-- sec_three_inner -->
	
	
	
</section><!-- section_three -->