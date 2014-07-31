<div class="case-container">
	
	<div class="profile-holder">
		<img src="<?=$this->config->base_url()."/assets/uploads/".$case->profile?>" class="profile-img" alt="Profile" width="100%">
	</div>
	
	<div class="case-description">
		<table>
			<tr>
				<td class="first-child">Nume:</td>
				<td class="last-child"><?=$case->firstname ?></td>
			</tr>
			<tr>
				<td class="first-child">Prenume:</td>
				<td class="last-child"><?=$case->lastname ?></td>
			</tr>
			<tr>
				<td class="first-child">Varsta:</td>
				<td class="last-child"><?=$case->age ?></td>
			</tr>
			<tr>
				<td class="first-child">Localitate:</td>
				<td class="last-child"><?=$case->city ?></td>
			</tr>
			<tr>
				<td class="first-child" valign="top">Nevoi ale familiei:</td>
				<td class="last-child"><?=$case->description ?></td>
			</tr>
			<tr>
				<td class="first-child" valign="top">Mai multe detalii:</td>
				<td class="last-child"><?=$case->more_details?></td>
			</tr>
			<tr>
				<td class="first-child">Partener - consiliere psihologica:</td>
				<td class="last-child"><?=$case->partener?></td>
			</tr>
		</table>
		
		
<!--		<p><b>Nume </b>: <?=$case->firstname ?></p>
		<p><b>Prenume </b>: <?= $case->lastname?></p>
		<p><b>Varsta </b>: <?= $case->age?></p>
		<p><b>Localitate </b>: <?= $case->city?></p>
		<label>Nevoi ale familiei:</label>
		<p><?=$case->description?></p>
		<label>Mai multe detalii:</label>
		<p><?=$case->more_details?></p>
		<p><b>Partener - consiliere psihologica </b>: <?= $case->partener?></p>-->
	</div>
	<br/>
	
	<strong>Atasamente</strong>
	<div class="papers">
		<table>
<?php if(!empty($files)) foreach($files as $file): ?>			
			<tr>
				<td><?=$file->title?></td>
				<td style="padding: 5px;"><a href="<?=$this->config->base_url().'assets/uploads/'.$file->filepath?>" download>Download</a></td>
			</tr>
<?php endforeach;?>			
		</table>
	</div>
	
	
</div>