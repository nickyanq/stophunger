<div style='position: relative;'>
	<div class="profile-img" style='width: 200px;height: 200px;border: 0px solid red; float: right;'>
		<img src='<?= $this->config->base_url(); ?>assets/uploads/<?= $case->profile ?>' width="100%" alt='profile photo' class='profile-img'>
	</div>
	<form method="POST">
		<table class='caseTbl'>
			<tr>
				<td>Nume:</td>
				<td> 
					<input id="textinput" name="firstname" type="text" placeholder="Firstname" class="form-control input-md" value='<?= $case->firstname ?>'>
				</td>
			</tr>
			<tr>
				<td>Prenume: </td>
				<td>
					<input id="textinput" name="lastname" type="text" placeholder="Firstname" class="form-control input-md" value='<?= $case->lastname ?>'>
				</td>
			</tr>
			<tr>
				<td valign='top'>Descriere: </td>
				<td>  
					<textarea rows=6 class="form-control" id="textarea" name="description"><?= $case->description ?></textarea>
				</td>
			</tr>
			<tr>
				<td valign='top'>
					<button id="button1id" name="submit" value='updateInfo' class="btn btn-success">Salveaza</button>
				</td>
				<td></td>
			</tr>
		</table>
	</form>
	<br/>
	<strong>Files:</strong>
	<table class='caseTbl'>
<?php foreach ($files as $file) : ?>
		<tr>
			<td><?=$file->title?></td>
			<td><a download href='<?=$this->config->base_url()?>assets/uploads/<?=$file->filepath?>'>Download</a></td>
		</tr>
<?php endforeach;?>		
	</table>
	<br/>
	<form class="form-horizontal" enctype="multipart/form-data" method="POST">
		<fieldset>
			<!-- Form Name -->
			<legend>Adauga fisier</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nume fisier</label>  
				<div class="col-md-4">
					<input id="textinput" name="filename" type="text" placeholder="Numele fisierului..." class="form-control input-md">
					<!--<span class="help-block">help</span>-->  
				</div>
			</div>

			<!-- File Button --> 
			<div class="form-group">
				<label class="col-md-4 control-label" for="filebutton">File Button</label>
				<div class="col-md-4">
					<input id="filebutton" name="document" class="input-file" type="file">
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id">Double Button</label>
				<div class="col-md-8">
					<button id="button1id" name="submit" value='addFile' class="btn btn-success">Adauga</button>
				</div>
			</div>

		</fieldset>
	</form>

</div>