<section id="section_five">
	
	<div class="sec_five_top">
	
		<div class="sec_five_img_wrapper">
			
			
			<?php $section_five_image_desktop = get_field( 'section_five_image_desktop' ); ?>

			<?php if ( $section_five_image_desktop ) { ?>
			
				<img class="desktop_image" src="<?php echo $section_five_image_desktop['url']; ?>" alt="<?php echo $section_five_image_desktop['alt']; ?>" />

			<?php } ?>
			
			
			<?php $section_five_image_mobile = get_field( 'section_five_image_mobile' ); ?>

			<?php if ( $section_five_image_mobile ) { ?>
	
				<img class="laptop_image" src="<?php echo $section_five_image_mobile['url']; ?>" alt="<?php echo $section_five_image_mobile['alt']; ?>" />

			<?php } ?>
			
		
		</div><!-- sec_five_img_wrapper -->
		
		<div class="sec_five_blockquote">
			
			<?php echo file_get_contents("wp-content/themes/begam/images/new_gold_pattern.svg"); ?>
			
			
			<span><?php the_field( 'section_five_intro' ); ?></span>
			
		</div><!-- sec_five_blockquote -->
		
		
	
	</div><!-- sec_five_top -->
	
	<div class="sec_five_col_wrapper content">
			
			<?php the_field( 'section_five_content' ); ?>
			
	</div><!-- sec_five_col_wrapper -->
	
	
</section><!-- section_five -->