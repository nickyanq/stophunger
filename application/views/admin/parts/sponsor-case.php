<div class="case-container">
	
	<div class="profile-holder">
		<img src="<?=$this->config->base_url()."/assets/uploads/".$case->profile?>" class="profile-img" alt="Profile" width="100%">
	</div>
	
	<div class="case-description">
		<p><b>Nume </b>: <?=$case->firstname . ' ' . $case->lastname?></p>
		<label>Descriere:</label>
		<p><?=$case->description?></p>
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