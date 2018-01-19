<?php
    // Register Custom Post Types
    function register_custom_posts_banner() {
        // Register Products
        $products_labels = array(
            'name'               => 'Banner',
            'singular_name'      => 'Banner',
            'menu_name'          => 'Banner'
        );
        $products_args = array(
            'labels'             => $products_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'menu_position'      => 4,
            'supports'           => array( 'title', 'editor', 'thumbnail' ),
            'taxonomies'         => array( )
        );
        register_post_type('banner', $products_args);
    }
    add_action('init', 'register_custom_posts_banner');
