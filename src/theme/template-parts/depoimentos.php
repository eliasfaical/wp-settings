<section class="section-depoimentos">
  <div class="container">
    <div class="section-title-area">
      <h2 class="section-title">Depoimentos</h2>
    </div>

    <div id="carousel-depoimentos" class="owl-carousel owl-theme">
      <?php
        $args = array(
          'post_type'      => 'depoimento',
          'posts_per_page' => -1
        );
        $query = new WP_Query( $args );

        if ( $query->have_posts() ) :
          while ( $query->have_posts() ) : $query->the_post();
      ?>

        <div class="item">
          <div class="card-depoimento">
            <div class="message">
              <?php the_content(); ?>
            </div>
            <div class="client-depoimento">
              <div class="quote">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <div class="client-info">
                <?php
                  the_title( '<h4>', '</h4>' );
                  the_excerpt();
                ?>
              </div>
              <div class="client-image">
                <?php the_post_thumbnail( 'thumbnail-post', array( 'class' => 'img-fluid' ) ); ?>
              </div>
            </div>
          </div>
        </div>

        <?php
          endwhile;
          else:
          echo "<div class='alert'><p>Nenhum trabalho relacionado</p></div>";
          endif;
        ?>
    </div>
  </div>
</section>
