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
		case 'edit-account' : {
				include 'parts/account.php';
			} break;
		case 'projects' : {
				
				include 'parts/projects-listing.php';
			} break;
		case 'project' : {
				include 'parts/edit-project.php';
			} break;
		
		case 'add-project' : {
				include 'parts/add-project.php';
			} break;

		default : {
				include 'parts/default.php';
			}break;
	}
	?>


</div>
