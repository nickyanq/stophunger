<table class="table table-striped list-accounts">
	<tr>
		<td>ID</td>
		<td>Username</td>
		<td>Nume/Prenume</td>
		<td>Email</td>
		<td>Tip cont</td>
		<td>Last login</td>
		<td>Insert date</td>
	</tr>

<?php $i = 0; foreach($data as $account ) : $i++;?>	
	<tr>
		<td><b><?=$i?>.</b></td>
		<td onclick="linkto('<?=$this->config->base_url().'admin/admin-dashboard/edit-account/' . $account->id?>')"><font class='clickable' color='blue'><?=$account->username?></font></td>
		<td><?=$account->firstname . ' ' . $account->lastname?></td>
		<td><?=$account->email?></td>
		<td><?= Admin::$accountTypes[$account->level-1]?></td>
		<td><?=$account->last_login?></td>
		<td><?=$account->insertdate?></td>
	</tr>
<?php endforeach; ?>	
</table>