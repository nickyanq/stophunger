<form class="form-horizontal" method="POST">
	<fieldset>

		<!-- Form Name -->
		<legend>Adauga cont</legend>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Username</label>  
			<div class="col-md-4">
				<input id="textinput" name="username" placeholder="Username" class="form-control input-md" type="text">
				<!--<span class="help-block">help</span>-->  
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Parola</label>  
			<div class="col-md-4">
				<input id="textinput" name="password" placeholder="Parola" class="form-control input-md" type="text">
				<!--<span class="help-block">help</span>-->  
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Email</label>  
			<div class="col-md-4">
				<input id="textinput" name="email" placeholder="Email" class="form-control input-md" type="text">
				<!--<span class="help-block">help</span>-->  
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Nume</label>  
			<div class="col-md-4">
				<input id="textinput" name="firstname" placeholder="Nume" class="form-control input-md" type="text">
				<!--<span class="help-block">help</span>-->  
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Prenume</label>  
			<div class="col-md-4">
				<input id="textinput" name="lastname" placeholder="Prenume" class="form-control input-md" type="text">
				<!--<span class="help-block">help</span>-->  
			</div>
		</div>

		<!-- Multiple Radios (inline) -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="radios">Tip de cont</label>
			<div class="col-md-4"> 
				<label class="radio-inline" for="radios-0">
					<input name="level" id="radios-0" value="2" checked="checked" type="radio">
					Manager
				</label> 
				<label class="radio-inline" for="radios-1">
					<input name="level" id="radios-1" value="3" type="radio">
					Donator
				</label> 
			</div>
		</div>

		<!-- Button (Double) -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="button1id"></label>
			<div class="col-md-8">
				<button id="button1id" name="" class="btn btn-success">Salveaza</button>
				<!--<button id="button2id" name="" class="btn btn-danger">Sterge</button>-->
			</div>
		</div>

	</fieldset>
</form>