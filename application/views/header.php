<html>
	<head>
		<title>STOP HUNGER | Enage. Invent. Share</title>
		<link rel="shortcut icon" type="image/x-icon" href="<?= $this->config->base_url(); ?>assets/images/images/favicon.ico">
		<meta name="viewport" content="width=device-width">
		<meta charset="UTF-8">
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="<?= $this->config->base_url(); ?>assets/admin/js/admin.js"></script>
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/reset.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/maps.css" />
		<!--<link type="text/css" rel="stylesheet" href="http://fast.fonts.net/cssapi/cd753f17-f2d0-460f-b588-c68896a277cd.css"/>-->
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/main.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/common.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/page.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/list-detail.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/photos.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/css/custom.css" />
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets//admin/css/admin.css" />
		<!--[if IE]>
		<script src="script/library/html5shiv.js"></script>
        <![endif]-->

		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o),
						m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-49164435-1', 'stop-hunger.org');
			ga('send', 'pageview');

		</script>

	</head>
	<body class="home <?= $this->uri->segment(1) == "contact" ? 'contact' : '' ?>">
		
		<div class='error_notice'></div>
		<div class='success_notice'></div>
		<?php
		if ($error = $this->session->flashdata('error')) {
			?>		
			<script type='text/javascript'>admin.toggle_error_notice("<?= $error ?>")</script>	
			<?php
		}
		?>
		<?php
		if ($success = $this->session->flashdata('success')) {
			?>		
			<script type='text/javascript'>admin.toggle_success_notice("<?= $success ?>")</script>	
			<?php
		}
		?>
			
		<header style="margin-bottom:-1px;">
			<div id="header-menu" style="border-bottom:0;">
				<ul>
					<li>
						<img src="<?= $this->config->base_url(); ?>assets/images/stop-hunger-logo.jpg" alt="logo" onclick="linkto('<?=$this->config->base_url();?>')">
					</li>
					<li>
						<a href="<?= $this->config->base_url(); ?>despre-asociatia-stop-hunger">Asociatia Stop Hunger</a>
					</li>
					<li>
						<a href="<?= $this->config->base_url(); ?>proiecte">Proiecte</a>
					</li>
					<li>
						<a href="<?= $this->config->base_url(); ?>noutati">Noutati</a>
					</li>
					<li>
						<a href="<?= $this->config->base_url(); ?>contact">Contact</a>
					</li>
				</ul>

				<div id="right-header-menu">
					<table>
						<tr>
							<td style="vertical-align: middle;" onclick="linkto('<?=$this->config->base_url()?>admin')">Logare</td>
							<td onclick="linkto('<?=$this->config->base_url()?>doneaza')">
								<img src="<?= $this->config->base_url(); ?>assets/images/donati.png" alt="Donati">
							</td>
						</tr>
					</table>
				</div>
			</div>


		</header>
		<div id="large-top">
			<div class="border-red">
				<div class="border-red-left"></div>
				<div class="border-red-right"></div>
            </div>
			<!-- slide -->
			<div class="slider" data-slides=".image-container" data-controls=".slider-controls" data-time=600 data-indicators=true data-autoplay=true data-interval=6000>
				<ul class="center-images">
					<li class="image-container">
						<a href="<?=$this->config->base_url()?>proiect/sa-crestem-sanatosi">
							<img src="<?= $this->config->base_url(); ?>assets/images/images/slide/copii.jpg" width="1270" alt="A call for change">
							<span class="slide-title">Ghidul de nutritie pentru<br/> copii " Sa crestem sanatosi" (2008)</span>
						</a>
					</li>
					<li class="image-container">
						<a href="<?=$this->config->base_url()?>proiect/adopta-o-familie">
							<img src="<?= $this->config->base_url(); ?>assets/images/images/slide/fetita.jpg" width="1270"alt="A call for change">
							<span class="slide-title">Proiectul  "Adopta o Familie" <br/> (2011- prezent)</span>
						</a>
					</li>
					<li class="image-container">
						<a href="<?=$this->config->base_url()?>proiect/o-dorinta-de-craciun">
							<img src="<?= $this->config->base_url(); ?>assets/images/images/slide/tanara si bunic.jpg" width="1270" alt="A call for change">
							<span class="slide-title">Indeplineste o dorinta<br/> de Craciun (2013) </span>
						</a>
					</li>
				</ul>
				<div class="slider-controls" data-left=true data-right=true></div>
			</div>
			<!-- end slide-->  
		</div>
