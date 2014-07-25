<div id="admin-menu-container">
	<div class="panel panel-default">
		<div class="panel-heading"><b>Administrare</b></div>
		<!--		<div class="panel-body">
					Adauga conturi
				</div>-->
		<ul class="list-group">
			<li class="list-group-item selected">Adauga conturi</li>
			<li class="list-group-item">List item 2</li>
			<li class="list-group-item">List item 3</li>
			<li class="list-group-item">List item..</li>
			<li class="list-group-item">List item..</li>
		</ul>
	</div>
</div>
<div class="admin-menu-content">
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
					<input id="textinput" name="textinput" placeholder="Email" class="form-control input-md" type="text">
					<!--<span class="help-block">help</span>-->  
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nume</label>  
				<div class="col-md-4">
					<input id="textinput" name="textinput" placeholder="Nume" class="form-control input-md" type="text">
					<!--<span class="help-block">help</span>-->  
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Prenume</label>  
				<div class="col-md-4">
					<input id="textinput" name="textinput" placeholder="Prenume" class="form-control input-md" type="text">
					<!--<span class="help-block">help</span>-->  
				</div>
			</div>

			<!-- Multiple Radios (inline) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="radios">Tip de cont</label>
				<div class="col-md-4"> 
					<label class="radio-inline" for="radios-0">
						<input name="radios" id="radios-0" value="1" checked="checked" type="radio">
						Manager
					</label> 
					<label class="radio-inline" for="radios-1">
						<input name="radios" id="radios-1" value="2" type="radio">
						Donator
					</label> 
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<button id="button1id" name="button1id" class="btn btn-success">Salveaza</button>
					<button id="button2id" name="button2id" class="btn btn-danger">Sterge</button>
				</div>
			</div>

		</fieldset>
	</form>

</div>
