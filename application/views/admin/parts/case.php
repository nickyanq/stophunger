<div style='position: relative;'>
	<div class="profile-img" style='height: 200px;border: 0px solid red; text-align: center;'>
		<img src='<?= $this->config->base_url(); ?>assets/uploads/<?= $case->profile ?>' height="100%" alt='profile photo' class='profile-img'>
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
				<td>Varsta: </td>
				<td>
					<input id="textinput" name="age" type="text" placeholder="Varsta" class="form-control input-md" value='<?= $case->age ?>'>
				</td>
			</tr>
			<tr>
				<td>Localitate: </td>
				<td>
					<input id="textinput" name="city" type="text" placeholder="Localitate" class="form-control input-md" value='<?= $case->city ?>'>
				</td>
			</tr>
			<tr>
				<td valign='top'>Nevoi ale familiei: </td>
				<td>  
					<textarea rows=6 class="form-control" id="textarea" name="description"><?= $case->description ?></textarea>
				</td>
			</tr>
			<tr>
				<td valign='top'>Mai multe detalii </td>
				<td>  
					<textarea rows=6 class="form-control" id="textarea" name="more_details"><?= $case->more_details ?></textarea>
				</td>
			</tr>
			<tr>
				<td>Partener - consiliere psihologica: </td>
				<td>
					<input id="textinput" name="partener" type="text" placeholder="Partener" class="form-control input-md" value='<?=$case->partener?>'>
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
			<td><a class="deleteFile" href='<?=$this->config->base_url()?>admin/delete-file/<?=$file->id?>'>Delete</a></td>
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