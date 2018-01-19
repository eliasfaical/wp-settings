<?php

$functions_path = get_template_directory() . '/';
$location_path  = get_template_directory_uri() . '/assets/images/';

require get_template_directory() . '/inc/cpt-depoimentos.php';
require get_template_directory() . '/inc/cpt-banner.php';


if ( ! function_exists( 'abracomex_setup' ) ) :
	function abracomex_setup() {
		// custon action
    remove_action( 'wp_head', 'rsd_link' );
    remove_action( 'wp_head', 'wlwmanifest_link' );
    remove_action( 'wp_head', 'wp_generator' );
    remove_action( 'wp_head', 'feed_links', 2 );
    remove_action( 'wp_head', 'feed_links_extra', 3 );
    remove_action( 'wp_head', 'wp_shortlink_wp_head' );
    remove_action( 'wp_head', 'parent_post_rel_link' );
    remove_action( 'wp_head', 'start_post_rel_link' );
    remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head' );
    remove_action( 'wp_head', 'rss' );
    remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
		remove_action( 'wp_print_styles', 'print_emoji_styles' );

		add_filter( 'style_loader_src', 'at_remove_wp_ver_css_js', 9999 );
    add_filter( 'script_loader_src', 'at_remove_wp_ver_css_js', 9999 );
    add_filter( 'the_content', 'filter_ptags_on_images' );
    add_filter( 'body_class', 'add_slug_to_body_class' ); # Add slug to body class (Starkers build)
    add_filter( 'login_headerurl', 'custom_logo_login_url' );
    add_filter( 'login_headertitle', 'custom_logo_login_title' );
    add_filter( 'admin_footer_text', 'custom_admin_footer' );
    add_action( 'admin_bar_menu', 'remove_logo_toolbar', 999 );
    add_filter( 'show_admin_bar', '__return_false' );
    // add_filter( 'post_thumbnail_html', 'remove_thumbnail_dimensions', 10 ); # Remove width and height dynamic attributes to thumbnails
    // add_filter( 'image_send_to_editor', 'remove_thumbnail_dimensions', 10 ); # Remove width and height dynamic attributes to post imagesavealpha(image, saveflag)
    add_filter( 'tiny_mce_before_init', 'tinymce_remove_root_block_tag' );

    add_action( 'init', 'register_default_menu' );
    add_action( 'login_head', 'my_custom_login_logo' );
    add_action( 'widgets_init', 'remove_recent_comments_style' );
    add_action( 'admin_menu', 'remove_menu' );

		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on abracomex, use a find and replace
		 * to change 'abracomex' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'abracomex', get_template_directory() . '/languages' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'abracomex' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'abracomex_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'abracomex_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function abracomex_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'abracomex_content_width', 640 );
}
add_action( 'after_setup_theme', 'abracomex_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function abracomex_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'abracomex' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'abracomex' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'abracomex_widgets_init' );



# Remove css inline - recentcoments
# --------------------------------------------------
function remove_recent_comments_style() {
  global $wp_widget_factory;
  remove_action( 'wp_head', array( $wp_widget_factory->widgets['WP_Widget_Recent_Comments'], 'recent_comments_style' ) );
}


# Alterando logo do login
# --------------------------------------------------
function my_custom_login_logo() {
  global $location_path;
  echo '<style type="text/css">
    .login h1 a {
    background-image:url('.$location_path.'logo.png) !important;
    width: 260px;
    height: 78px;
    margin-bottom: 0;
    background-size: cover;
  }
  </style>';
}


# Remove tag <p> da imagem
# --------------------------------------------------
function filter_ptags_on_images($content) {
  return preg_replace('/<p>\s*(<a .*>)?\s*(<img .* \/>)\s*(<\/a>)?\s*<\/p>/iU', '\1\2\3', $content);
}

function tinymce_remove_root_block_tag( $init ) {
  $init['forced_root_block'] = false;
  return $init;
}


# Add page slug to body class, love this - Credit: Starkers Wordpress Theme
# --------------------------------------------------
function add_slug_to_body_class($classes) {
  global $post;
  if (is_home()) {
    $key = array_search('blog', $classes);
    if ($key > -1) {
    unset($classes[$key]);
  }
  } elseif (is_page()) {
    $classes[] = sanitize_html_class('page-' . $post->post_name);
  } elseif (is_singular()) {
    $classes[] = sanitize_html_class('page-' . $post->post_name);
  }
  return $classes;
}


# Customiza a URL da logo no login
# --------------------------------------------------
function custom_logo_login_url() {
  return home_url();
}


# Customiza o titulo da logo no login
# --------------------------------------------------
function custom_logo_login_title() {
  return get_bloginfo( 'name' );
}


# Customiza o rodapé no admin
# --------------------------------------------------
function custom_admin_footer() {
  echo '<a target="_blank" href="'.home_url().'">'.get_bloginfo( 'name' ).'</a> &copy; ' . date( 'Y' );
}


# Remove o logo do WordPress da barra de topo
# --------------------------------------------------
function remove_logo_toolbar( $wp_toolbar ) {
  global $wp_admin_bar;
  $wp_toolbar->remove_node( 'wp-logo' );
}


# Remove wp version param from any enqueued scripts
# --------------------------------------------------
function at_remove_wp_ver_css_js( $src ) {
  if ( strpos( $src, 'ver=' ) )
    $src = remove_query_arg( 'ver', $src );
    return $src;
}


# Remove wp version meta tag and from rss feed
# --------------------------------------------------
function at_remove_wp_ver_meta_rss() {
  return '';
}


# Registrar menu
# --------------------------------------------------
function register_default_menu() {
  register_nav_menus(array( // Using array to specify more menus if needed
    'header-menu'  => __('Header Menu', 'default_menu'), // Main Navigation
    'sidebar-menu' => __('Sidebar Menu', 'default_menu'), // Sidebar Navigation
    'extra-menu'   => __('Extra Menu', 'default_menu') // Extra Navigation if needed (duplicate as many as you need!)
  ));
}


function default_theme_nav( $menu_location, $menu_class ) {
  wp_nav_menu(
    array(
    'theme_location'  => $menu_location,
    'menu'            => '',
    'container'       => 'nav',
    'container_class' => $menu_class,
    'container_id'    => '',
    'menu_class'      => 'nav',
    'menu_id'         => '',
    'echo'            => true,
    'fallback_cb'     => 'wp_page_menu',
    'before'          => '',
    'after'           => '',
    'link_before'     => '',
    'link_after'      => '',
    'items_wrap'      => '<ul>%3$s</ul>',
    'depth'           => 0,
    'walker'          => ''
    )
  );
}


# Limit excerpt
# --------------------------------------------------
function string_limit_words($string, $word_limit) {
  $words = explode(' ', $string, ($word_limit + 1));
  if(count($words) > $word_limit)
  array_pop($words);
  return implode(' ', $words);
}


# Remove menu Post
# --------------------------------------------------
function remove_menu() {
  // remove_menu_page( 'index.php' );                  //Dashboard
  // remove_menu_page( 'edit.php' );                   //Posts
  // remove_menu_page( 'edit-comments.php' );          //Comments
  // remove_menu_page( 'upload.php' );                 //Media
  // remove_menu_page( 'edit.php?post_type=page' );    //Pages
  // remove_menu_page( 'themes.php' );                 //Appearance
  // remove_menu_page( 'plugins.php' );                //Plugins
  // remove_menu_page( 'users.php' );                  //Users
  // remove_menu_page( 'tools.php' );                  //Tools
  // remove_menu_page( 'options-general.php' );        //Settings
}


# Enqueue scripts and styles.
# --------------------------------------------------
function abracomex_scripts() {
  wp_enqueue_style( 'abracomex-fontawesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css', array() );
  wp_enqueue_style( 'abracomex-style', get_stylesheet_uri() );

  # Scripts
  wp_enqueue_script('header_js', get_template_directory_uri() . '/js/header-bundle.js', null, 1.0, false);
	wp_enqueue_script('footer_js', get_template_directory_uri() . '/js/footer-bundle.js', null, 1.0, true);

}
add_action( 'wp_enqueue_scripts', 'abracomex_scripts' );
