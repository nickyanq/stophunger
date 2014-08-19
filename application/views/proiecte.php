<div class="content">
   	<section id="main">
		<article id="content-left" class="list">
			<div class="content_padding">
				<h2>Proiecte</h2>
			</div>

<?php $i = 0; foreach($projects as $project) : $i++;?>
			<div class='news' onClick="linkto('<?=$this->config->base_url()?>proiect/<?=$project->slug?>')">
				<img src='<?=$this->config->base_url()?>assets/images/uploads/projectPhotos/<?=$project->coverphoto?>' width="100%">
				<div class='news-content <?= $i % 2 == 1 ? 'right' : 'left'?>'>
					<p><?=$project->title?></p>
					<!--<p class='date'><?=date('d.m.Y',strtotime($project->insertdate))?></p>-->
					<!--<p><?= $project->description?></p>-->
				</div>
			</div>
<?php endforeach;?>			

			<?php // include 'include/en/follow.php' ?>
		</article>
		<aside id="content-right">
			<div id="map-aside">
				<img src="assets/images/images/map.jpg" width="185" height="274" alt="Stop hunger dans le monde">
				<div class="map-search">
					<p>Alte Initiative Stop Hunger</p>
				</div>
			</div>
			<?php include 'dependencies/news.php' ?>
			


		</aside>
	</section>
	<!-- end main -->
</div>