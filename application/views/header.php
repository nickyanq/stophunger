<html>
	<head>
		<title>STOP HUNGER | Enage. Invent. Share</title>
		<link rel="shortcut icon" type="image/x-icon" href="<?=$this->config->base_url();?>assets/images/images/favicon.ico">
		<meta name="viewport" content="width=device-width">
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/reset.css" />
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/maps.css" />
		<!--<link type="text/css" rel="stylesheet" href="http://fast.fonts.net/cssapi/cd753f17-f2d0-460f-b588-c68896a277cd.css"/>-->
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/main.css" />
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/common.css" />
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/page.css" />
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/list-detail.css" />
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/photos.css" />
		<link type="text/css" rel="stylesheet" href="<?=$this->config->base_url();?>assets/css/custom.css" />
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
	<body class="home <?=$this->uri->segment(1)=="contact" ? 'contact' : ''?>">

		<header id="header">
            <div class="content">
				<h1><a href="index.php"><img src="<?=$this->config->base_url();?>assets/images/images/logo.png" width="142" height="64" alt="stop hunger"></a></h1>
                <nav id="nav">
					<ul class="navi1">
						<li class="about-us <?= $this->uri->segment(1) == 'despre-asociatia-stop-hunger' ? 'active' : '' ?>"><a class="about-us <?= $this->uri->segment(1) == 'despre-asociatia-stop-hunger' ? 'actif-menu' : '' ?>" href="<?=$this->config->base_url();?>despre-asociatia-stop-hunger">Asociatia Stop Hunger</a>
                        </li>
                        <li class="in-action <?= $this->uri->segment(1) == 'proiecte' ? 'active' : '' ?>" ><a class="in-action" href="<?=$this->config->base_url();?>proiecte">Proiecte</a>
                        </li>
                        <li><a href="partenaires.php">Noutati</a></li>
                        <li><a href="<?=$this->config->base_url();?>contact">Contact</a></li>
						<li>
							<a href="faire-don.php" class="donate-nav">
								<img src='<?=$this->config->base_url();?>assets/images/donati.png' width='100%'>
							</a>
						</li>
                    </ul>
                </nav>
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
					<li class="image-container"><a href="notre-vision.php"><img src="<?=$this->config->base_url();?>assets/images/images/slide/slide1.jpg" width="1270" height="471" alt="A call for change"><span class="slide-title">Engage. Invent. Share.</span></a></li>
					<li class="image-container"><a href="nos-actions.php"><img src="<?=$this->config->base_url();?>assets/images/images/slide/slide2.jpg" width="1270" height="471" alt="A call for change"><span class="slide-title">3 Domaines <br />d'intervention,<br />6 actions communes</span></a></li>
				</ul>
				<div class="slider-controls" data-left=true data-right=true></div>
			</div>
			<!-- end slide-->  
		</div>
