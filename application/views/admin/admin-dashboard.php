<div id="admin-menu-container">
	<div class="panel panel-default">
		<div class="panel-heading"><b>Administrare</b></div>
		<!--		<div class="panel-body">
					Adauga conturi
				</div>-->
		<ul class="list-group">
			<li class="list-group-item <?= $this->uri->segment(3) == 'add-accounts' ? 'selected' : '' ?>">
				<a href='<?=base_url()?>admin/admin-dashboard/add-accounts'>Adauga conturi</a>
			</li>
			<li class="list-group-item <?= $this->uri->segment(3) == 'list-accounts' ? 'selected' : '' ?>">
				<a href='<?=base_url()?>admin/admin-dashboard/list-accounts'>Listeaza conturi</a>
			</li>
			<li class="list-group-item">List item 3</li>
			<li class="list-group-item">List item..</li>
			<li class="list-group-item">List item..</li>
		</ul>
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
