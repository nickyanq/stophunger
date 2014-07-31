<html>
	<head>
		<title>Stophunger - Admninistrare</title>

		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="<?= $this->config->base_url(); ?>assets/admin/js/admin.js"></script>
		
		<!-- OPEN SANS FONT -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<link type="text/css" rel="stylesheet" href="<?= $this->config->base_url(); ?>assets/admin/css/admin.css" />
	</head>
	<body>
		<div class='error_notice'></div>
		<div class='success_notice'></div>
<?php
	if( $error = $this->session->flashdata('error')){
?>		
		<script type='text/javascript'>admin.toggle_error_notice("<?=$error?>")</script>	
<?php
	}
?>
<?php
	if( $success = $this->session->flashdata('success')){
?>		
		<script type='text/javascript'>admin.toggle_success_notice("<?=$success?>")</script>	
<?php
	}
?>
		<header>
			<div id="header-menu">
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
						<a href="">Noutati</a>
					</li>
					<li>
						<a href="<?= $this->config->base_url(); ?>contact">Contact</a>
					</li>
				</ul>

				<div id="right-header-menu">
					<table>
						<tr>
							<td>
								<?= $user ? 'Bine ai venit, <b><i>' . $user->firstname . ' ' . $user->lastname . '</i></b> <br/> <a href="'.$this->config->base_url().'admin/logout'.'">Logout</a>' : 'Login'?>
							</td>
							<td>
								<img src="<?= $this->config->base_url(); ?>assets/images/donati.png" alt="Donati">
							</td>
						</tr>
					</table>
				</div>
			</div>


		</header>
		<div id="content">
