<a href='<?= $this->config->base_url() ?>admin/admin-dashboard/add-news' class="btn btn-success">Adauga noutate</a>

<table class="table table-striped list-accounts top-buffer">
	<tr>
		<td>ID</td>
		<td>Title</td>
		<td>Date</td>
		<td>Insert date</td>
	</tr>

	<?php $i = 0;
	foreach ($data as $project) : $i++; ?>	
		<tr>
			<td><b><?= $i ?>.</b></td>
			<td onclick="linkto('<?= $this->config->base_url() . 'admin/admin-dashboard/nws/' . $project->id ?>')"><font class='clickable' color='blue'><?= $project->title ?></font></td>
			<td><?= $project->date ?></td>
			<td><?= $project->crateddate ?></td>
		</tr>
<?php endforeach; ?>	
</table>