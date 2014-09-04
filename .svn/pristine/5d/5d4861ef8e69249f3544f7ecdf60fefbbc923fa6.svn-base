<a href="<?=$this->config->base_url()?>admin/admin-dashboard/add-testimonial/<?=$projectId?>" class="btn btn-success">Adauga testimonial</a>

<table class="table table-striped list-accounts list-cases top-buffer">
	<tr>
		<td>ID</td>
		<td>Titlu</td>
		<td>Data inserarii</td>
		<td></td>
	</tr>
	<?php $i = 0;
	foreach ($testimonials as $testimonial) : $i++ ?>	
		<tr>
			<td><?= $i ?></td>
			<td>
				<a href="<?=$this->config->base_url()?>admin/admin-dashboard/testimonial/<?=$testimonial->id?>"><?=$testimonial->title?></a>
			</td>
			<td>
				<?=$testimonial->insertdate?>
			</td>
			<td class="handy" align="center" onclick="if(confirm('Sigur stergeti?')){window.location.href = '<?=$this->config->base_url()?>admin/admin-dashboard/delete-testimonial/<?=$testimonial->id?>'}">
				<font color="red"><b>&#x2717;</b></font>
			</td>
		</tr>
<?php endforeach; ?>
</table>