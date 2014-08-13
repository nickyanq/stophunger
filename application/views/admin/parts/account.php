<div style='position: relative;'>
<!--	<pre>
		<?=  var_dump($account)?>
	</pre>-->
	<form method="POST">
		<table class='caseTbl'>
			<tr>
				<td>username:</td>
				<td> 
					<input id="textinput" name="username" type="text" placeholder="Username" class="form-control input-md" value='<?= $account->username ?>'>
				</td>
			</tr>
			<tr>
				<td>Nume:</td>
				<td> 
					<input id="textinput" name="firstname" type="text" placeholder="Firstname" class="form-control input-md" value='<?= $account->firstname ?>'>
				</td>
			</tr>
			<tr>
				<td>Prenume: </td>
				<td>
					<input id="textinput" name="lastname" type="text" placeholder="Firstname" class="form-control input-md" value='<?= $account->lastname ?>'>
				</td>
			</tr>
			<tr>
				<td>Email: </td>
				<td>
					<input id="textinput" name="email" type="text" placeholder="Varsta" class="form-control input-md" value='<?= $account->email ?>'>
				</td>
			</tr>
			<tr>
				<td>Parola: </td>
				<td>
					<input id="textinput" name="real_password" type="text" placeholder="Localitate" class="form-control input-md" value='<?= $account->real_password ?>'>
				</td>
			</tr>
			<tr>
				<td valign='top'>
					<button id="button1id" name="submit" value='updateInfo' class="btn btn-success">Salveaza</button>
					
				</td>
				<td>
					<button id="button1id" value='updateInfo' class="btn btn-danger" onclick="admin.deleteAccount(<?=$account->id?>);return false;">Sterge</button>
				</td>
			</tr>
		</table>
	</form>
</div>