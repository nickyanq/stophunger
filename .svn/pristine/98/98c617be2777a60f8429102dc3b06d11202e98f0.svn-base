<div id="admin-menu-container">
	<div class="panel panel-default">
		<div class="panel-heading"><b>Administrare</b></div>
		<!--		<div class="panel-body">
					Adauga conturi
				</div>-->
		<?php require_once 'parts/management-menu.php';?>
		
	</div>
</div>
<div class="admin-menu-content">

	<?php
	switch ($this->uri->segment(3)) {

		case 'add-case' : {
				include 'parts/add-case.php';
			}break;
		case 'list-cases' : {
				include 'parts/list-cases.php';
			} break;
		case 'case' : {
				include 'parts/case.php';
			} break;

		default : {
				include 'parts/default.php';
			}break;
	}
	?>

</div>
