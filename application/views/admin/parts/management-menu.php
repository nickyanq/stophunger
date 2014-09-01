<ul class="list-group">
	
	<?php if($user->level == 1) :?>
	<li class="list-group-item <?= $this->uri->segment(3) == 'add-accounts' ? 'selected' : '' ?>">
		<a href='<?= base_url() ?>admin/admin-dashboard/add-accounts'>Adauga conturi</a>
	</li>
	<li class="list-group-item <?= $this->uri->segment(3) == 'list-accounts' ? 'selected' : '' ?>">
		<a href='<?= base_url() ?>admin/admin-dashboard/list-accounts'>Listeaza conturi</a>
	</li>
	<li class="list-group-item <?= $this->uri->segment(3) == 'projects' ? 'selected' : '' ?>">
		<a href='<?= base_url() ?>admin/admin-dashboard/projects'>Proiecte</a>
	</li>
	<?php endif;?>
	
	<li class="list-group-item <?= $this->uri->segment(3) == 'add-case' ? 'selected' : '' ?>">
		<a href='<?= base_url() ?>admin/manager-dashboard/add-case'>Adauga caz</a>
	</li>
	<li class="list-group-item <?= $this->uri->segment(3) == 'list-cases' ? 'selected' : '' ?>">
		<a href='<?= base_url() ?>admin/manager-dashboard/list-cases'>Listeaza cazuri</a>
	</li>
</ul>