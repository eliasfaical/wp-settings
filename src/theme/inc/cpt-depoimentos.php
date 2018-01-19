<?php
    // Register Custom Post Types
    function register_custom_posts_depoimentos() {
        // Register Products
        $products_labels = array(
            'name'               => 'Depoimentos',
            'singular_name'      => 'Depoimentos',
            'menu_name'          => 'Depoimentos'
        );
        $products_args = array(
            'labels'             => $products_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'menu_position'      => 5,
            'supports'           => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
            'taxonomies'         => array( )
        );
        register_post_type('depoimento', $products_args);
    }
    add_action('init', 'register_custom_posts_depoimentos');
