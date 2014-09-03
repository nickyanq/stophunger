<div class="content">
	<section id="main">
		<article id="content-left" class="details-news1">
			<div class="content_padding">

			</div>
			<div class="content_padding">
				<h2><?= $project->title ?></h2>
			</div>

			<div class="img" style="width: 924px;height: 450px">
				<img style="float: left;width: 739px;height: 480px;" src="<?= $this->config->base_url(); ?>assets/images/uploads/projectPhotos/<?= $project->coverphoto ?>" alt="Project cover">
				<div style="width: 185px;height: 480px;background: red;float: right;">
					<div style="background: white;text-align: center;background: #e4002d;">
						<img src="<?= $this->config->base_url(); ?>assets/images/donati.png" alt="Doneaza" width="60%">
					</div>
					<div style="background:#3647A1;height: 344px;color: white;padding: 10px;">
						<!--						<h2 style="color : white; border-bottom: 0;margin-bottom: 5px;text-transform: initial;">400 de copii</h2>
												<h3 style='color : white;'>au nevoie de a primi un cadou.</h3>-->
					</div>
				</div>
			</div>
			<!-- AddThis Button BEGIN -->
			<div class="addthis_toolbox addthis_default_style addthis_20x16_style shared-img content_padding" style="margin-bottom: 25px;">
				<span>Distribuie :</span> 
				<a class="addthis_button_facebook"><img src="<?= $this->config->base_url(); ?>assets/images/images/shared-fb.png" alt="Facebook"></a>
				<a class="addthis_button_twitter"><img src="<?= $this->config->base_url(); ?>assets/images/images/shared-tw.png" alt="Twitter"></a>
				<a class="addthis_button_compact"><img src="<?= $this->config->base_url(); ?>assets/images/images/shared-multiple.png" alt="Adthis"></a>
				<a class="addthis_button_email"><img src="<?= $this->config->base_url(); ?>assets/images/images/shared-mail.png" alt="Mail"></a>
			</div>

			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5315d6c6288e86ca"></script>
			<!-- AddThis Button END --> 

		</article>
		<div class="content_padding" style="float: left;">
			<div style="float: left;width: 60%;padding-bottom: 15px;">

				<h2 style="color: black;font-size: 28px;"><?= $project->title ?></h2>
				<p style="font-size: 16px;"><?= $project->description ?></p>

				<div class="photo-container">
					<img src="<?= $this->config->base_url(); ?>assets/images/uploads/newsphotos/sodexo sprijina cu mandrie stop hunger.jpg" width="100%">
				</div>

			</div>
			<div style="width: 25%;background: blue;float: left;margin-top: -200px;margin-left: 7%;">
				<?php if ($project->photo_top) : ?>
					<img src="<?= $this->config->base_url(); ?>assets/images/uploads/projectPhotos/<?= $project->photo_top ?>" width="100%">
				<?php else: ?>
					<img src="<?= $this->config->base_url(); ?>assets/images/uploads/projectPhotos/vopsitor.jpg" width="100%">
				<?php endif; ?>

				<?php if ($project->photo_bottom) : ?>
					<img src="<?= $this->config->base_url(); ?>assets/images/uploads/projectPhotos/<?= $project->photo_bottom ?>" width="100%">
				<?php else: ?>
					<img src="<?= $this->config->base_url(); ?>assets/images/uploads/projectPhotos/vopsitor.jpg" width="100%">
				<?php endif; ?>
			</div>

			<?php if ($project->show_all_projects): ?>
				<aside id="content-right">
					<div class="chiffre-cle blue-tweet right" style="padding-top: 15px;">
						<h3 class="color-white">Proiectele noastre</h3>
						<?php foreach ($projects as $proj): ?>
							<p> &#8226; <?= $proj->title ?></p>
						<?php endforeach; ?>
					</div>
					<div class="chiffre-cle chiffre-cle-my blue-1">
						<h3 class="color-white" style="cursor: pointer" onclick="window.location.href = '<?= $this->config->base_url() ?>contact'">Vreau sa ma implic in acest proiect </h3>
					</div>
				</aside>
			<?php endif ?>

			<aside id="content-right">
<?php $i = 0; foreach ($testimonials as $testimonial):$i++ ?>
	<?php if($i%2 == 1) :?>
				<div class="chiffre-cle blue-tweet right" style="padding-top: 15px;">
					<p class="bottomless"> <?=$testimonial->description?></p>
				</div>
	<?php else : ?>
				<div class="chiffre-cle chiffre-cle-my blue-1">
					<p class="bottomless"> <?=$testimonial->description?></p>
				</div>
	<?php endif?>
<?php endforeach; ?>				

				
				
			</aside>

		</div>


	</section>
	<!-- end main --></div>