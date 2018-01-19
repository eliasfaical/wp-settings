<?php
    // Register Custom Post Types
    function register_custom_posts_arquivos() {
        // Register Products
        $products_labels = array(
            'name'               => 'Arquivos',
            'singular_name'      => 'Arquivos',
            'menu_name'          => 'Arquivos'
        );
        $products_args = array(
            'labels'             => $products_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'menu_position'      => 2,
            'supports'           => array( 'title', 'editor', 'thumbnail' ),
            'taxonomies'         => array( )
        );
        register_post_type('arquivos', $products_args);
    }
    add_action('init', 'register_custom_posts_arquivos');
