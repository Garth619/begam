<?php 
	
	/* Template Name: Video Center */
	
	get_header(); ?>



<div id="main" class="internal_main">
	
		
	<h1 class="no_banner_header"><?php the_title();?></h1><!-- no_banner_header -->
	
	<div class="video_center">
		
		<?php if(get_field('wistia_videos')): ?>
		 
			<?php while(has_sub_field('wistia_videos')): ?>
			
				
				
				<div class="single_video">
			
					<div class="video_thumb wistia_embed wistia_async_<?php the_sub_field( 'wistia_video_id' ); ?> popover=true popoverContent=thumbnail">
				
				
				
					</div><!-- video_thumb -->
			
				<div class="video_overlay">
				
				
				
			</div><!-- video_overlay -->
			
			<?php echo file_get_contents("wp-content/themes/begam/images/new_play.svg"); ?>
			
			<span class="video_title wistia_embed wistia_async_fvynu51wm6 popover=true popoverContent=html">Lorem ipsum dolor</span>
			
		</div><!-- single_video -->
		 
				
		    
			<?php endwhile; ?>
		 
		<?php endif; ?>
		
				
		
		
	</div><!-- video_center -->
	
	<script src="https://fast.wistia.com/assets/external/E-v1.js" async></script>

</div><!-- internal_main -->



<?php get_footer(); ?>
