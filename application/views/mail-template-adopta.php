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
				<td>Nume si prenume : </td>
				<td>
					<b><i><?= $firstname_lastname ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Telefon : </td>
				<td>
					<b><i><?= $phonenumber ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Adresa de email: </td>
				<td>
					<b><i><?= $email ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Este: </td>
				<td>
					<b><i><?= $radio ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Nume companie/angajator: </td>
				<td>
					<b><i><?= $company_name ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Functia: </td>
				<td>
					<b><i><?= $company_function ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Adresa: </td>
				<td>
					<b><i><?= $company_address ?></i></b>
				</td>
			</tr>
			<tr>
				<td>Telefon: </td>
				<td>
					<b><i><?= $company_phone ?></i></b>
				</td>
			</tr>
		</table>
	</body>
</html>