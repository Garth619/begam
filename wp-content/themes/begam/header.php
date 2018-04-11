<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '|', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " | $site_description";

	// Add a page number if necessary:
	if ( ( $paged >= 2 || $page >= 2 ) && ! is_404() )
		echo esc_html( ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) ) );

	?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />

<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
				
<header id="header_trigger">
	
	<div class="header_left">
		
		<a class="logo" href="<?php bloginfo('url');?>">
			
			<?php echo file_get_contents("wp-content/themes/begam/images/new_logo.svg"); ?>
			
		</a>
		
	</div><!-- header_left -->
	
	<div class="header_right">
		
		
		<div class="phone_wrapper">
			
			<span class="free">Free Consultation</span><!-- free -->
			
			<a class="phone" href="tel:(602) 254-6071">(602) 254-6071</a><!-- phone -->
			
		</div><!-- phone_wrapper -->
		
		<div class="menu_wrapper">
			
			<span class="menu_bar"></span><!-- menu_bar -->
			<span class="menu_bar"></span><!-- menu_bar -->
			<span class="menu_bar"></span><!-- menu_bar -->
			<span class="menu_title">Menu</span><!-- menu_title -->
			
		</div><!-- menu_wrapper -->
		
		
	</div><!-- header_right -->
	
	<div class="mobile_nav">
		
		<div class="menu_wrapper">
			
			<span class="menu_bar"></span><!-- menu_bar -->
			<span class="menu_bar"></span><!-- menu_bar -->
			<span class="menu_bar"></span><!-- menu_bar -->
			<span class="menu_title">Menu</span><!-- menu_title -->
			
		</div><!-- menu_wrapper -->
		
		<div class="mobile_tel">
			
			<a href="">
				
				<?php echo file_get_contents("wp-content/themes/begam/images/new_phone.svg"); ?>
				
			</a>
			
		</div><!-- mobile_tel -->
		
		<div class="mobile_email">
			
			<?php echo file_get_contents("wp-content/themes/begam/images/new_email.svg"); ?>
			
		</div><!-- mobile_email -->
		
	</div><!-- mobile_nav -->
	
</header>

<?php // wp_nav_menu( array( 'container_class' => 'menu-header', 'theme_location' => 'main_menu' ) ); ?>
			