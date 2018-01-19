<?php
  // Register Custom Post Types
  // -------------------------------------------------------------
  function register_custom_posts_cursos() {
      // Register Products
      $products_labels = array(
          'name'               => 'Cursos',
          'singular_name'      => 'Cursos',
          'menu_name'          => 'Cursos'
      );
      $products_args = array(
          'labels'             => $products_labels,
          'public'             => true,
          'capability_type'    => 'page',
          'has_archive'        => true,
          'menu_position'      => 5,
          'supports'           => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
          'taxonomies'         => array( )
      );
      register_post_type('curso', $products_args);
  }
  add_action('init', 'register_custom_posts_cursos');


  // Register Custom Taxonomy
  // -------------------------------------------------------------
  function tipo_curso_taxonomy() {
    $labels = array(
      'name'                       => 'Tipo',
      'singular_name'              => 'Tipo',
      'menu_name'                  => 'Tipo'
    );
    $args = array(
      'labels'                     => $labels,
      'hierarchical'               => true,
      'public'                     => true,
      'show_ui'                    => true,
      'show_admin_column'          => true,
      'show_in_nav_menus'          => true,
      'show_tagcloud'              => true,
    );
    register_taxonomy( 'tipo', array( 'curso' ), $args );

  }
  add_action( 'init', 'tipo_curso_taxonomy', 0 );
