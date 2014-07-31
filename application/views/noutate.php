<div class="content">
	<section id="main">
		<article id="content-left" class="details-news1">
<!--			<div class="content_padding">
				<ul class="fil-ariane">
					<li>News ></li>
					<li><a href="latest-news.php">Latest news ></a></li>
					<li>SERVATHON 2014: From the generosity of heart and sharing</li>
				</ul>
			</div>-->
			<div class="content_padding">
				<h2>Noutati <span class="arrow-more right-title"><a href="<?=$this->config->base_url()?>noutati">Toate noutatile</a></span></h2>
			</div>
			<div class="content_padding">
				<h3><?=$noutate->title?></h3>

				<p>
					<span class="date-article"><?=$noutate->date?></span>
					<!--<span class="tags"><span>International</span><span>Servathon</span></span>-->
				</p>

				<p><strong><?=$noutate->intro?></strong></p>

				<p><?=$noutate->description?></p>
			</div>
			<div class="img">
				<img style="width: 100%" src="<?=$this->config->base_url()?>/assets/images/uploads/newsphotos/<?=$noutate->coverphoto?>" alt="cover photo">;
			</div> 
			<!-- AddThis Button BEGIN -->
			<div class="addthis_toolbox addthis_default_style addthis_20x16_style shared-img content_padding">
				<span>Share:</span> 
				<a class="addthis_button_facebook"><img src="<?=$this->config->base_url()?>assets/images/images/shared-fb.png" alt="Facebook"></a>
				<a class="addthis_button_twitter"><img src="<?=$this->config->base_url()?>assets/images/images/shared-tw.png" alt="Twitter"></a>
				<a class="addthis_button_compact"><img src="<?=$this->config->base_url()?>assets/images/images/shared-multiple.png" alt="Adthis"></a>
				<a class="addthis_button_email"><img src="<?=$this->config->base_url()?>assets/images/images/shared-mail.png" alt="Mail"></a>
			</div>

			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5315d6c6288e86ca"></script>
			<!-- AddThis Button END --> 

			<?php // include 'include/en/follow.php' ?> 
		</article>
	</section>
	<!-- end main -->
</div>