<!DOCTYPE HTML5>
<html>
	<head>

		<style>
			table{
				table-layout: fixed;
				border-spacing: 0px;
				border-collapse: collapse;
			}
			table tr td{
				border: 1px solid lightgray;
				padding: 5px;
				word-break: break-all;
			}
		</style>
	</head>
	<body>
		<table style="margin: auto;border: 0px solid black; width: 700px;">
			<tr>
				<td style="text-align: center;">
					<img src="<?= $this->config->base_url(); ?>assets/images/stop-hunger-logo.jpg" alt="logo">
				</td>
				<td>
					Stop Hunger - Contact
				</td>
			</tr>

			<tr>
				<td>Nume : </td>
				<td>
					<b><i><?= $firstname ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Prenume : </td>
				<td>
					<b><i><?= $lastname ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Email: </td>
				<td>
					<b><i><?= $email ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Sunt: </td>
				<td>
					<b><i><?= $radio ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Mesaj: </td>
				<td>
					<b><i><?= $comment ?></i></b>
				</td>
			</tr>
		</table>
	</body>
</html>