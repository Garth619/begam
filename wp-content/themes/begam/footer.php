<footer id="footer_trigger">
	
	
	<div class="form_outer">
		
		<div class="form_inner">
			
			<span class="free_title"><?php the_field( 'free_consultation_footer_verbiage','option'); ?></span><!-- free_title -->
		
			<?php gravity_form(1, false, false, false, '', false, 12); ?>
			
			<span class="my_required"><span>*</span>Required</span><!-- my_required -->
			
		</div><!-- form_inner -->
		
	</div><!-- form_outer -->
	
	<div id="location_trigger" class="footer_location_wrapper">
		
		<div class="footer_location_inner">
			
			<div class="location_left">
				
				<div class="copyright_wrapper">
					
					<?php $footer_image_desktop = get_field( 'footer_image_desktop','option'); ?>

					<?php if ( $footer_image_desktop ) { ?>
	
						<img class="att_image desktop" src="<?php echo $footer_image_desktop['url']; ?>" alt="<?php echo $footer_image_desktop['alt']; ?>" />

					<?php } ?>
				
					
					
					<?php $footer_image_tablet = get_field( 'footer_image_tablet','option'); ?>

					<?php if ( $footer_image_tablet ) { ?>
	
						<img class="att_image mobile" src="<?php echo $footer_image_tablet['url']; ?>" alt="<?php echo $footer_image_tablet['alt']; ?>" />

						<?php } ?>
				
					
					<div class="copyright_desktop">
					
						<a class="ilawyer" href="//ilawyermarketing.com" target="_blank">
					
							<?php echo file_get_contents("wp-content/themes/begam/images/new_ilawyer.svg"); ?>
					
						</a>
					
						<ul>
							<li>&copy;<?php echo date("Y"); ?> <?php the_field( 'copyright','option'); ?></li>
							
							<?php if(get_field('footer_links','option')): ?>
							 
								<?php while(has_sub_field('footer_links','option')): ?>
							 
									<li><a href="<?php the_sub_field( 'single_bullet_page_link'); ?>"><?php the_sub_field( 'single_bullet'); ?></a></li>
							    
								<?php endwhile; ?>
							 
							<?php endif; ?>
							
						</ul>
					
					</div><!-- copyright_desktop -->
				
				</div><!-- copyright_wrapper -->
				
			</div><!-- location_left -->
			
			<div class="location_right">
				
				
				<?php echo file_get_contents("wp-content/themes/begam/images/new_teal_pattern.svg"); ?>
				
				<a class="address" href="<?php the_field( 'address_link',18); ?>" target="_blank">
					
					<?php the_field( 'address',18); ?>
				
				</a><!-- address -->
				
				<a class="tel" href="tel:<?php the_field( 'phone',18); ?>"><?php the_field( 'phone',18); ?></a>
				
				<a class="directions" href="<?php the_field( 'address_link',18); ?>" target="_blank">Directions</a>
				
<!-- 				<div class=""></div> -->
				
			</div><!-- location_right -->
			
			
			
		</div><!-- footer_location_inner -->
		
	</div><!-- footer_location_wrapper -->
	
	<div class="social_wrapper">
				
				<div class="social_icons">
					
					<div class="tablet_center">
						
						<?php if(get_field('google_plus_link','option')) { ?>
				
							<a class="" href="<?php the_field( 'google_plus_link','option'); ?>" target="_blank">
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_google.svg"); ?>
							
							</a>
						
						<?php } ?>
						
						<?php if(get_field('facebook_link','option')) { ?>
						
							<a class="" href="<?php the_field( 'facebook_link','option'); ?>" target="_blank">
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_facebook.svg"); ?>
							
							</a>
						
						<?php } ?>
						
						<?php if(get_field('twitter_link','option')) { ?>
						
							<a class="" href="<?php the_field( 'twitter_link','option'); ?>" target="_blank">
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_twitter.svg"); ?>
							
							</a>
						
						<?php } ?>
						
						<?php if(get_field('linkedin_link','option')) { ?>
						
							<a class="" href="<?php the_field( 'linkedin_link','option'); ?>" target="_blank">
							
								<?php echo file_get_contents("wp-content/themes/begam/images/new_linkedin.svg"); ?>
							
							</a>
						
						<?php } ?>
					
					</div><!-- tablet_center -->
				
				</div><!-- social_icons -->
				
				<div class="scroll_to_top">
					
					<a class="scroll_link" href="#header_trigger">
					
						<?php echo file_get_contents("wp-content/themes/begam/images/new_arrow.svg"); ?>
					
					</a>
					
				</div><!-- scroll_to_top -->
				
			</div><!-- social_wrapper -->
			
			<div class="copyright_mobile">
				
				<div class="copyright_mobile_inner">
					
						<a class="ilawyer" href="//ilawyermarketing.com" target="_blank">
					
							<?php echo file_get_contents("wp-content/themes/begam/images/new_ilawyer.svg"); ?>
					
						</a>
					
						<ul>
							<li>&copy;<?php echo date("Y"); ?> Begam Marks & Traulsen, P.A.<br/> All Rights Reserved.</li>
							<li><a href="">Privacy Policy</a></li>
							<li><a href="">Disclaimer</a></li>
						</ul>
					
					</div><!-- copyright_mobile_inner -->
					
				</div><!-- copyright_mobile -->
	
</footer>

<?php wp_footer();?>


</body>
</html>
