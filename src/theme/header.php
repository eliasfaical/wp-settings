<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

	<header id="masthead" class="site-header">
		<div class="toolbar-container">
			<div class="container">
				<span class="item-toolbar">
					Fale conosco:
				</span>
				<span class="item-toolbar">
					<i class="fa fa-phone" aria-hidden="true"></i> (27) 3329-9432
				</span>
				<span class="item-toolbar">
					<i class="fa fa-envelope" aria-hidden="true"></i> contato@abracomex.org
				</span>
			</div>
		</div>

		<div class="site-branding">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<?php if ( is_front_page() && is_home() ) : ?>
							<h1 class="site-title">
								<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
									<img src="<?php echo get_template_directory_uri() ;?>/images/logo-abracomex.png" class="img-fluid" alt="<?php bloginfo( 'name' ); ?>">
								</a>
							</h1>
						<?php else : ?>
							<p class="site-title">
								<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
									<img src="<?php echo get_template_directory_uri() ;?>/images/logo-abracomex.png" class="img-fluid" alt="<?php bloginfo( 'name' ); ?>">
								</a>
							</p>
						<?php endif; ?>
					</div>

					<div class="col-md-10">
						<?php
							// Menu principal
							default_theme_nav( 'header-menu', 'nav-navigation' );
						?>
					</div>
				</div>
			</div>
		</div>
	</header>
