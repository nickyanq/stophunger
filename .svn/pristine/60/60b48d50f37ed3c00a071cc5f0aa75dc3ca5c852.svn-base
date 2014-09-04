<a href='<?= $this->config->base_url() ?>admin/admin-dashboard/add-news' class="btn btn-success">Adauga noutate</a>

<table class="table table-striped list-accounts top-buffer">
	<tr>
		<td>ID</td>
		<td>Title</td>
		<td>Date</td>
		<td>Insert date</td>
		<td align="center"><b><font color="red"></font></b></td>
	</tr>

	<?php $i = 0;
	foreach ($data as $project) : $i++; ?>	
		<tr>
			<td><b><?= $i ?>.</b></td>
			<td onclick="linkto('<?= $this->config->base_url() . 'admin/admin-dashboard/nws/' . $project->id ?>')"><font class='clickable' color='blue'><?= $project->title ?></font></td>
			<td><?= $project->date ?></td>
			<td><?= $project->crateddate ?></td>
			<td align="center" onclick="if(confirm('Sigur stergeti?')){window.location.href = '<?=$this->config->base_url()?>admin/admin-dashboard/delete-news/<?=$project->id?>'}">
				<font color="red"><b>&#x2717;</b></font>
			</td>
		</tr>
<?php endforeach; ?>	
</table>