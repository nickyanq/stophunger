<style>
	.form-signin
	{
		max-width: 330px;
		padding: 15px;
		margin: 0 auto;
	}
	.form-signin .form-signin-heading, .form-signin .checkbox
	{
		margin-bottom: 10px;
	}
	.form-signin .checkbox
	{
		font-weight: normal;
	}
	.form-signin .form-control
	{
		position: relative;
		font-size: 16px;
		height: auto;
		padding: 10px;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	.form-signin .form-control:focus
	{
		z-index: 2;
	}
	.form-signin input[type="text"]
	{
		margin-bottom: -1px;
		border-bottom-left-radius: 0;
		border-bottom-right-radius: 0;
	}
	.form-signin input[type="password"]
	{
		margin-bottom: 10px;
		border-top-left-radius: 0;
		border-top-right-radius: 0;
	}
	.account-wall
	{
		margin-top: 20px;
		padding: 40px 0px 20px 0px;
		background-color: #f7f7f7;
		-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	}
	.login-title
	{
		padding-top: 25px;
		/*padding-left: 20px;*/
		color: #555;
		font-size: 18px;
		font-weight: bold;
		display: block;
	}
	.profile-img
	{
		width: 96px;
		height: 96px;
		margin: 0 auto 10px;
		display: block;
		-moz-border-radius: 50%;
		-webkit-border-radius: 50%;
		border-radius: 50%;
	}
	.need-help
	{
		margin-top: 10px;
	}
	.new-account
	{
		display: block;
		margin-top: 10px;
	}
	.ask-account{
		text-align: left;
		font-size: 16px;
		padding-left: 15px;
	}
	a.ask-account{
		font-weight: bold;
		border: 1px solid lightgray;
		padding: 15px;
		padding-top: 3px;
		padding-bottom: 3px;
		border-radius: 5px;
		background: white;
		box-shadow: 1px 1px .5px #555;
	}
</style>

<div class="table">
	<div class="td">

		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<h1 class="text-center login-title">Sectiune restrictionata</h1>
					<div class="account-wall">
<!--						<img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
							 alt="">-->
						<form class="form-signin" action="" method="POST">
							<input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
							<input type="password" name="password" class="form-control" placeholder="Parola" required>
							<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>

							<br/>

							<div class="alert alert-danger <?= empty($errors) ? 'hide' : ''?>">

								<a href="#" class="close" data-dismiss="alert">&times;</a>

								<strong>Eroare!</strong> <?= !empty($errors) ? $errors[0] : ''?>

							</div>
							

							<!--<a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>-->
						</form>
						
						<p class="ask-account">Vreau sa ma implic in proiectul <b>Adopta o Familie</b> si vreau sa vizualizez cazurile.</p>
						<a class="btn btn-lg btn-primary" href="<?=$this->config->base_url()?>adopta-o-familie">Cerere cont</a>
					</div>


					<!--<a href="#" class="text-center new-account">Create an account </a>-->
				</div>
			</div>
		</div>

	</div>
</div>