<?php
    // Register Custom Post Types
    function register_custom_posts_clientes() {
        // Register Products
        $clientes_labels = array(
            'name'               => 'Clientes',
            'singular_name'      => 'Clientes',
            'menu_name'          => 'Clientes'
        );
        $clientes_args = array(
            'labels'             => $clientes_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'menu_position'      => 5,
            'supports'           => array( 'title', 'editor', 'thumbnail' ),
            'taxonomies'         => array( )
        );
        register_post_type('cliente', $clientes_args);
    }
    add_action('init', 'register_custom_posts_clientes');
