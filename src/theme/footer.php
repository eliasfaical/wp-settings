<?php get_template_part( 'newsletter' ); ?>

<footer id="colophon" class="site-footer">
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <h4>Menu</h4>
        <?php
          // Menu footer
          default_theme_nav( 'header-menu', 'nav-navigation' );
        ?>
      </div>

      <div class="col-md-3">
        <h4>Atendimento</h4>
				<ul>
					<li><a href="#" title="">0800 718 3810</a></li>
					<li><a href="#" title="">(27) 3026-7785</a></li>
					<li><a href="#" title="">4062-0660 - Ramal: 0405</a></li>
				</ul>
        
        <div class="social-media">
          <a href="http://www.facebook.com/" title="Facebook" class="btn-socialMedia" target="_blank">
            <i class="fa fa-facebook" aria-hidden="true"></i>
          </a>
          <a href="https://www.instagram.com//" title="Instagram" class="btn-socialMedia" target="_blank">
            <i class="fa fa-instagram" aria-hidden="true"></i>
          </a>
        </div>
      </div>

      <div class="col-md-3">
        <h4>Localização</h4>
        <ul>
          <li>São Paulo</li>
          <li>Rio de Janeiro</li>
          <li>Espírito Santo</li>
          <li>Santa Catarina</li>
          <li>Paraná</li>
          <li>Rio Grande do Sul</li>
        </ul>
      </div>

      <div class="col-md-3">
        <h4>Contato</h4>
        <span>0800 718 3810</span>

        <div class="enderecoFooter">
          <address>Av. Dr Cardoso de Melo, 554, <br>Vila Olímpia - São Paulo | SP</address>
        </div>
      </div>
    </div>
	</div>
	
	<div class="site-info">
		<div class="container">
			<div class="row">
				<div class="col-11">
					<p>Copyright © 2018 Abracomex</p>
				</div>
				<div class="col-1">
					<a class="logo-dev" title="Developer - Elias Faiçal" href="http://eliasfaical.com.br" target="_blank">
						<img src="http://macrogestao.com/wp-content/themes/marcus_gestao/assets/images/logo_elias.svg" alt="Developer - Elias Faiçal" class="img-fluid">
					</a>
				</div>
			</div>
		</div>
	</div>
</footer>

<?php wp_footer(); ?>

</body>
</html>
