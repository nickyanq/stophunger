<div id="admin-menu-container">
	<div class="panel panel-default">
		<div class="panel-heading"><b>Administrare</b></div>
		<!--		<div class="panel-body">
					Adauga conturi
				</div>-->
		<ul class="list-group">
			<li class="list-group-item <?= $this->uri->segment(3) == 'add-accounts' ? 'selected' : '' ?>">
				<a href='<?= base_url() ?>admin/manager-dashboard/add-case'>Adauga caz</a>
			</li>
			<li class="list-group-item <?= $this->uri->segment(3) == 'list-accounts' ? 'selected' : '' ?>">
				<a href='<?= base_url() ?>admin/manager-dashboard/list-cases'>Listeaza cazuri</a>
			</li>
<!--			<li class="list-group-item">List item 3</li>
			<li class="list-group-item">List item..</li>
			<li class="list-group-item">List item..</li>-->
		</ul>
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
