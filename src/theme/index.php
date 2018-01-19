<?php get_header(); ?>

	<main id="main" class="site-main">

		<section id="carousel-home" class="owl-carousel owl-theme">
			<div class="item" style="background-image: url(<?php echo get_template_directory_uri(); ?>/images/banner-formacao.jpg)">
				<div class="slider-inner">
					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<h2>Cursos de Formação Profissional e Habilitação para trabalhar com Comércio Exterior</h2>
								<p>Conquiste sua habilitação para trabalhar com Comércio Exterior. São diversas oportunidades.</p>
								<a href="javascript:();" class="btn" title="Clique aqui e saiba mais">Saiba mais</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="item" style="background-image: url(<?php echo get_template_directory_uri(); ?>/images/banner-mba.jpg)">
				<div class="slider-inner">
					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<h2>MBA Global com exclusiva dupla certificação Brasil/EUA</h2>
								<p>Os cursos de MBA oferecidos pela ABRACOMEX diferenciam-se do mercado por proporcionar aos alunos uma habilitação profissional, para trabalhar nas diferentes áreas do comércio exterior.</p>
								<a href="javascript:();" class="btn" title="Clique aqui e saiba mais">Saiba mais</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section-action">
			<div class="container">
				<div class="row no-gutters">
					<!--
					<div class="col-12">
						<h3>Garanta sua empregabilidade no Comércio Exterior</h3>
					</div>
					 -->
					<div class="col-md-3">
						<div class="item-destaque item-detalhe1">
							<i class="fa fa-star" aria-hidden="true"></i>
							<p>Mais de 15 anos no mercado</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="item-destaque item-detalhe2">
							<i class="fa fa-sellsy" aria-hidden="true"></i>
							<p>Mais de 30 mil alunos formados</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="item-destaque item-detalhe3">
							<i class="fa fa-bar-chart" aria-hidden="true"></i>
							<p>Corpo Docente formado por referências da área</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="item-destaque item-detalhe4">
							<i class="fa fa-check-circle-o" aria-hidden="true"></i>
							<p>Reconhecido pelo MEC com certificação internacional</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section-cursos section-institucional">
			<div class="container">
				<div class="row">
					<div class="col-6">
						<div class="embed-responsive embed-responsive-16by9">
							<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Rknv9eat0uY" allowfullscreen></iframe>
						</div>
					</div>

					<div class="col-6">
						<h3 class="title-section">Abracomex Online</h3>
						<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa debitis suscipit praesentium similique accusantium sapiente quia iure dolores nisi aliquam, laborum voluptates, enim deserunt dolor vitae, inventore eveniet reprehenderit unde. Dolor sit amet consectetur adipisicing elit. Rem quidem, quas deserunt expedita numquam ea, repellat.</p>
					</div>
				</div>
			</div>
		</section>

		<section class="section-cursos cursos-mba">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="title-section">Cursos de MBA</h3>
					</div>

					<div class="col-md-4">
						<div class="item-curso">
							<a href="javascript:();" title="<?php the_title(); ?>">
								<img src="<?php echo get_template_directory_uri(); ?>/images/mba-marketing-1.jpg" alt="" class="img-fluid">
							</a>
							<div class="item-descricao">
								<h4>Gestão de Marketing com foco internacional</h4>
								<p>Especialmente indicado para profissionais que trabalham ou desejam entrar em empresas, cujos produtos e serviços são voltados para o exterior</p>
								<a href="javascript:();" title="<?php the_title(); ?>" class="btn btn-default">Saiba mais</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="item-curso">
							<a href="javascript:();" title="<?php the_title(); ?>">
								<img src="<?php echo get_template_directory_uri(); ?>/images/mba-logistica-1.jpg" alt="" class="img-fluid">
							</a>
							<div class="item-descricao">
								<h4>Gestão de Marketing com foco internacional</h4>
								<p>Especialmente indicado para profissionais que trabalham ou desejam entrar em empresas, cujos produtos e serviços são voltados para o exterior</p>
								<a href="javascript:();" title="<?php the_title(); ?>" class="btn btn-default">Saiba mais</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="item-curso">
							<a href="javascript:();" title="<?php the_title(); ?>">
								<img src="<?php echo get_template_directory_uri(); ?>/images/formacao-op-portuaria-1.jpg" alt="" class="img-fluid">
							</a>
							<div class="item-descricao">
								<h4>Gestão de Marketing com foco internacional</h4>
								<p>Especialmente indicado para profissionais que trabalham ou desejam entrar em empresas, cujos produtos e serviços são voltados para o exterior</p>
								<a href="javascript:();" title="<?php the_title(); ?>" class="btn btn-default">Saiba mais</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section-cursos cursos-formacao">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="title-section">Cursos de Formação</h3>
					</div>

					<?php for($i = 1; $i <= 4; $i++) { ?>
						<div class="col-md-3">
							<div class="item-curso">
								<a href="javascript:();" title="<?php the_title(); ?>">
									<img src="<?php echo get_template_directory_uri(); ?>/images/mba-marketing-1.jpg" alt="" class="img-fluid">
								</a>
								<div class="item-descricao">
									<h4>Gestão de Marketing com foco internacional</h4>
									<p>Gerir as rotinas e operações logísticas em portos e terminais portuários voltado para a movimentação interna</p>
									<a href="javascript:();" title="<?php the_title(); ?>" class="btn btn-default">Saiba mais</a>
								</div>
							</div>
						</div>
					<? } ?>

					<div class="col-12">
						<a href="#" title="Mais cursos" class="btn-default btn-more">Mai Cursos</a>
					</div>
				</div>
			</div>
		</section>

		<!-- depoimentos -->
    <section class="section-depoimentos">
			<div class="container">
				<div class="section-title-area">
					<h3 class="title-section">Depoimentos</h3>
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
										?>
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


		<section class="section-cursos action-utilidades">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="title-section">Utilidades</h3>
					</div>

					<div class="col-md-4">
						<div class="card">
							<a href="javascript:();" title="<?php the_title(); ?>">
								<img class="img-fluid card-img-top" src="<?php echo get_template_directory_uri(); ?>/images/blog-1.jpg" alt="">
							</a>
							<div class="card-block">
								<h4 class="card-title">
									Aumente o seu Network e parcitipce de debates com profissionais renomados no mercado
								</h4>
							</div>
							<a href="javascript:();" title="<?php the_title(); ?>" class="card-text">
								Confira nosso calendário de eventos
							</a>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card">
							<a href="javascript:();" title="<?php the_title(); ?>">
								<img class="img-fluid card-img-top" src="<?php echo get_template_directory_uri(); ?>/images/blog-2.jpg" alt="">
							</a>
							<div class="card-block">
								<h4 class="card-title">
									Oportunidades de trabalho em Comércio Exterior em todo o Brasil
								</h4>
							</div>
							<a href="javascript:();" title="<?php the_title(); ?>" class="card-text">
								Cadastre seu currículo e concorra a uma vaga
							</a>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card">
							<a href="javascript:();" title="<?php the_title(); ?>">
								<img class="img-fluid card-img-top" src="<?php echo get_template_directory_uri(); ?>/images/blog-3.jpg" alt="">
							</a>
							<div class="card-block">
								<h4 class="card-title">
									Materiais gratuitos para você acessar, assistir e baixar
								</h4>
							</div>
							<a href="javascript:();" title="<?php the_title(); ?>" class="card-text">
								Amplie seus conhecimentos e torne-se referência na área
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section-cursos section-posts">
			<div class="container">
				<h3 class="title-section">Últimas postagens</h3>

				<?php for($i = 1; $i <= 3; $i++) { ?>
					<div class="item-article">
						<div class="row">
							<div class="col-md-3">
								<a href="javascript:();" title="" class="link-thumb">
									<img class="img-fluid card-img-top" src="<?php echo get_template_directory_uri(); ?>/images/blog-3.jpg" alt="">
								</a>
							</div>

							<div class="col-md-9">
								<h4>
									<a href="javascript:();" title="" class="link-thumb">
										Após oito anos de déficits, Brasil volta a ter superávit no comércio com os EUA em 2017
									</a>
								</h4>
								<p>Por outro lado, as exportações americanas para o Brasil cresceram 4,39% e somaram US$ 24,847 bilhões. Os produtos industriali…</p>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</section>

		<section class="section-cursos action-newsletter">
			<div class="container">
				<h3 class="title-section">Assine nossa newsletter</h3>
				<?php echo do_shortcode( '[contact-form-7 id="20" title="Formulário Assinar Newsletter"]' ); ?>
			</div>
		</section>

	</main>

<?php get_footer(); ?>
