<a href='<?=$this->config->base_url()?>admin/admin-dashboard/add-project' class="btn btn-success">Adauga proiect</a>

<table class="table table-striped list-accounts top-buffer">
	<tr>
		<td>ID</td>
		<td>Title</td>
		<td>Slug</td>
		<td>Insert date</td>
	</tr>

<?php $i = 0; foreach($data as $project ) : $i++;?>	
	<tr>
		<td><b><?=$i?>.</b></td>
		<td onclick="linkto('<?=$this->config->base_url().'admin/admin-dashboard/project/' . $project->id?>')"><font class='clickable' color='blue'><?=$project->title?></font></td>
		<td><?=$project->slug?></td>
		<td><?=$project->insertdate?></td>
	</tr>
<?php endforeach; ?>	
</table>