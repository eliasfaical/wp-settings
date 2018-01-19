<?php
    // Register Custom Post Types
    function register_custom_posts_servicos() {
        // Register Servicos
        $servicos_labels = array(
            'name'               => 'Serviços',
            'singular_name'      => 'Serviços',
            'menu_name'          => 'Serviços'
        );
        $servicos_args = array(
            'labels'             => $servicos_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'menu_position'      => 2,
            'supports'           => array( 'title', 'editor', 'thumbnail' ),
            'taxonomies'         => array( )
        );
        register_post_type('servico', $servicos_args);
    }
    add_action('init', 'register_custom_posts_servicos');
