<table class="table table-striped list-accounts list-cases">
	<tr>
		<td>ID</td>
		<td>Profile</td>
		<td>Nume/Prenume</td>
		<td style='width:55%' >Descriere</td>
		<!--<td>Email</td>-->
		<!--<td>Tip cont</td>-->
		<!--<td>Last login</td>-->
		<td>Insert date</td>
	</tr>
<?php $i = 0 ; foreach($data as $case) : $i++?>	
	<tr>
		<td><?=$i?></td>
		<td>
			<img src='<?= $this->config->base_url(); ?>assets/uploads/<?=$case->profile?>' alt='profile photo' width="50px">
		</td>
		<td>
			<a href='<?= $this->config->base_url(); ?>admin/manager-dashboard/case/<?=$case->id?>'><?= $case->firstname . ' ' . $case->lastname?></a>
		</td>
		<td><?= $case->description ?></td>
		<td><?= date('Y-m-d',strtotime($case->insertdate)) ?></td>
	</tr>
<?php endforeach; ?>
</table>