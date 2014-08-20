

<div id="large-bottom" style='height: 42px;'>
	<div class="content">
		<div id="follow" class="clearfix">
			<span class="label">Follow us </span>
			<!-- btn twitter -->
			<a href="https://www.facebook.com/SodexoStopHunger?fref=ts" target="_blank"><img src="<?= $this->config->base_url(); ?>assets/images/images/fb.png" width="18" height="18" alt="partage sur facebook"></a>	
			<a href="https://twitter.com/STOPHungerUSA" target="_blank"><img src="<?= $this->config->base_url(); ?>assets/images/images/twitter.png" width="18" height="18" alt="partage sur twitter"></a>	
			<a href="http://www.youtube.com/user/SodexoSTOPHunger" target="_blank"><img src="<?= $this->config->base_url(); ?>assets/images/images/ytube.png" width="15" height="18" alt="youtube"></a>	
		</div>
	</div>
	<div style="height: 21px;display: block;background: #e4002d;z-index: 3;position: absolute;bottom: 0;width: 100%;"></div>
</div>
<footer id="footer">
	<div class="content footer-top">
		<div class="colone">
			<p>CINE SUNTEM</p>
			<ul>
				<li><a href="<?= $this->config->base_url() ?>despre-asociatia-stop-hunger">Despre noi</a></li>
				<li><a href="<?= $this->config->base_url() ?>contact">Contact</a></li>
			</ul>
		</div>
		<div class="colone">
			<p><a href="<?= $this->config->base_url(); ?>proiecte">Proiecte</a></p>
			<ul>
				<!--<li><a href="">In desfasurare</a></li>-->
				<!--<li><a href="">Trecute</a></li>-->
			</ul>
		</div>
		<div class="colone">
			<p><a href="">Noutati</a></p>
			<ul>
				<li><a href="http://www.sodexofoundation.org" target="_blank">Ultimele noutati</a></li>
			</ul>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="content">
			<ul>
				<li><a href="<?= $this->config->base_url() ?>contact">contact</a></li>
				<?php if (0) {// avec lien media ?>
					<li><a href="">Media</a></li>
				<?php } ?>
				<li><a href="<?= $this->config->base_url() ?>termeni-si-conditii">Detalii legalitate</a></li>
				<li><span>©STOP HUNGER 2014</span></li>                      
				<li><a href=""></a></li>                      
				<li><a href="<?= $this->config->base_url() ?>multumiri">Multumiri</a></li>
			</ul>
			<h3 class="footer-opti">Site oferit de <a href="http://www.opti.ro">OPTI SYSTEMS</a></h3>
		</div>            
	</div>
</footer>


<!--<script src="<?= $this->config->base_url(); ?>assets/script/library/jquery-1.11.0.min.js"></script>-->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript" src="<?= $this->config->base_url(); ?>assets/script/library/gmap3.js"></script>
<script type="text/javascript" src="<?= $this->config->base_url(); ?>assets/script/library/infobox_packed.js"></script>
<script type="text/javascript" src="<?= $this->config->base_url(); ?>assets/script/library/jquery.uniform.min.js"></script>
<script type="text/javascript" src="<?= $this->config->base_url(); ?>assets/script/library/jquery.doubletap.js"></script>
<script src="<?= $this->config->base_url(); ?>assets/script/slider.js"></script>
<script src="<?= $this->config->base_url(); ?>assets/script/main.js"></script>
</body>
</html>