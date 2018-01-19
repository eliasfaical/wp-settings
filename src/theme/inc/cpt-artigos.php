<?php
    // Register Custom Post Types
    function register_custom_posts_artigos() {
        // Register Products
        $products_labels = array(
            'name'               => 'Artigos',
            'singular_name'      => 'Artigos',
            'menu_name'          => 'Artigos'
        );
        $products_args = array(
            'labels'             => $products_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'menu_position'      => 5,
            'supports'           => array( 'title', 'editor', 'thumbnail' ),
            'taxonomies'         => array( 'category' )
        );
        register_post_type('artigo', $products_args);
    }
    add_action('init', 'register_custom_posts_artigos');
