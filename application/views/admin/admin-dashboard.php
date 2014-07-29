<div id="admin-menu-container">
	<div class="panel panel-default">
		<div class="panel-heading"><b>Administrare</b></div>
		<?php require_once 'parts/management-menu.php';?>
		
	</div>
</div>
<div class="admin-menu-content">
	<?php
	switch ($this->uri->segment(3)) {

		case 'add-accounts' : {
				include 'parts/add-account.php';
			}break;
		case 'list-accounts' : {
				include 'parts/list-accounts.php';
			} break;

		default : {
				include 'parts/default.php';
			}break;
	}
	?>


</div>
