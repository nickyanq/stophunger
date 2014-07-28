<form class="form-horizontal" enctype="multipart/form-data" method="POST">
	<fieldset>

		<!-- Form Name -->
		<legend>Adauga caz</legend>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Nume</label>  
			<div class="col-md-4">
				<input id="textinput" name="firstname" type="text" placeholder="Nume" class="form-control input-md">
				<span class="help-block">help</span>  
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Prenume</label>  
			<div class="col-md-4">
				<input id="textinput" name="lastname" type="text" placeholder="Prenume" class="form-control input-md">
				<span class="help-block">help</span>  
			</div>
		</div>

		<!-- Textarea -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textarea">Descriere</label>
			<div class="col-md-4">                     
				<textarea class="form-control" id="textarea" name="description">default text</textarea>
			</div>
		</div>

		<!-- File Button --> 
		<div class="form-group">
			<label class="col-md-4 control-label" for="filebutton">Poza profil</label>
			<div class="col-md-4">
				<input id="filebutton" name="profile" class="input-file" type="file">
			</div>
		</div>

		<!-- Button (Double) -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="button1id"></label>
			<div class="col-md-8">
				<button id="button1id" name="button1id" class="btn btn-success">Salveaza</button>
				<!--<button id="button2id" name="button2id" class="btn btn-danger">Scary Button</button>-->
			</div>
		</div>

	</fieldset>
</form>
