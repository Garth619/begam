<footer id="footer_trigger">
	
	
	<div class="form_outer">
		
		<div class="form_inner">
			
			<span class="free_title">Free Consultation</span><!-- free_title -->
		
			<?php gravity_form(1, false, false, false, '', false, 12); ?>
			
			<span class="my_required"><span>*</span>Required</span><!-- my_required -->
			
		</div><!-- form_inner -->
		
	</div><!-- form_outer -->
	
	<div id="location_trigger" class="footer_location_wrapper">
		
		<div class="footer_location_inner">
			
			<div class="location_left">
				
				<div class="copyright_wrapper">
				
					<img class="att_image desktop" src="<?php bloginfo('template_directory');?>/images/footer-image-desktop.jpg"/>
					
					<img class="att_image mobile" src="<?php bloginfo('template_directory');?>/images/test_image.jpg"/>
				
					
					<div class="copyright_desktop">
					
						<a class="ilawyer" href="//ilawyermarketing.com" target="_blank">
					
							<?php echo file_get_contents("wp-content/themes/begam/images/new_ilawyer.svg"); ?>
					
						</a>
					
						<ul>
							<li>&copy;<?php echo date("Y"); ?> Begam Marks & Traulsen, P.A.<br/> All Rights Reserved.</li>
							<li><a href="">Privacy Policy</a></li>
							<li><a href="">Disclaimer</a></li>
						</ul>
					
					</div><!-- copyright_desktop -->
				
				</div><!-- copyright_wrapper -->
				
			</div><!-- location_left -->
			
			<div class="location_right">
				
				
				<?php echo file_get_contents("wp-content/themes/begam/images/new_teal_pattern.svg"); ?>
				
				<a class="address" href="" target="_blank">
					
					11201 N. Tatum Blvd. 
					Suite #110<br/>
					Phoenix, AZ 85028
				
				</a><!-- address -->
				
				<a class="tel" href="tel:(602) 254-6071">(602) 254-6071</a>
				
				<a class="directions" href="" target="_blank">Directions</a>
				
<!-- 				<div class=""></div> -->
				
			</div><!-- location_right -->
			
			
			
		</div><!-- footer_location_inner -->
		
	</div><!-- footer_location_wrapper -->
	
	<div class="social_wrapper">
				
				<div class="social_icons">
					
					<div class="tablet_center">
				
						<a class="" href="">
							
							<?php echo file_get_contents("wp-content/themes/begam/images/new_google.svg"); ?>
							
						</a>
						
						<a class="" href="">
							
							<?php echo file_get_contents("wp-content/themes/begam/images/new_facebook.svg"); ?>
							
						</a>
						
						<a class="" href="">
							
							<?php echo file_get_contents("wp-content/themes/begam/images/new_twitter.svg"); ?>
							
						</a>
						
						<a class="" href="">
							
							<?php echo file_get_contents("wp-content/themes/begam/images/new_linkedin.svg"); ?>
							
						</a>
					
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
