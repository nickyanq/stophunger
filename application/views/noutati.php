<div class="content">
	<section id="main">

		<article id="content-left" class="list">
			<div class="content_padding">
				<h2>Noutati</h2>
			</div>
			<ul class="content-list">
				<!-- element list -->
<?php foreach($news as $new): ?>
				<li class="clearfix">
					<div class="img">
						<a  href="<?=$this->config->base_url()?>noutate/<?=$new->id?>">
							<img src="<?=$this->config->base_url()?>assets/images/uploads/newsphotos/<?=$new->coverphoto?>" width="100%" alt="news cover">
						</a>
					</div>
					<div class="desc">
						<h3><a href="<?=$this->config->base_url()?>noutate/<?=$new->id?>"><?=$new->title?></a></h3>
						<span class="date-article"></span>
						<!--<span class="tags"><span>International</span><span>Servathon</span></span>-->
						<p><?= $new->intro?></p>
						<!--<p><?= $new->description?></p>-->
						<span class="arrow-more"><a href="<?=$this->config->base_url()?>noutate/<?=$new->id?>">Citeste mai mult</a></span></div>
				</li>
				
<?php endforeach;?>				
				<!-- element list -->
<!--				<li class="clearfix">
					<div class="img"><a  href="partnership.php"><img src="images/images/news/partner.jpg" alt="" ></a></div>
					<div class="desc">
						<h3><a  href="partnership.php">Stop Hunger partnership<br>with the World Food Programme</a></h3>
						<span class="date-article">03 March 2014</span><span class="tags"><span>International</span><span>Partnership</span></span>
						<p>Stop Hunger and the World Food Programme (WFP) have joined forces to develop<br> innovative and sustainable solutions for the fight against hunger. </p>
						<span class="arrow-more"><a  href="partnership.php">Read more</a></span></div>
				</li>-->
				<!-- element list -->

			</ul>
		</article>


		<!--				<aside id="content-right">
		<?php include 'include/en/map-aside.php' ?>
		<?php include 'include/en/tweet.php' ?>
		<?php include 'include/en/facebook.php' ?>
		<?php include 'include/en/donate.php' ?>
		
						</aside>-->
	</section>
	<!-- end main -->
</div>