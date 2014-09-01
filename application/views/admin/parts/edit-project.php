
<script src="<?=$this->config->base_url()?>assets/admin/editor/ckeditor.js"></script>
<!--<link rel="stylesheet" href="<?=$this->config->base_url()?>assets/admin/editor/sample.css">-->


<form action="" method="POST">

	<div class="bs-example">
		<table class="table table-striped">
			<tbody>
				<tr>
					<td>Titlu</td>
					<td>
						<input type="text" class="form-control input-md padd15 bottomless" name="title" value="<?= $project->title ?>">
					</td>
				</tr>
				<tr>
					<td>Slug</td>
					<td>
						<input type="text" class="form-control input-md padd15 bottomless" name="slug" value="<?= $project->slug ?>">
					</td>
				</tr>
				<tr>
					<td>Listare proiecte</td>
					<td>
						<input type="checkbox" name="show_all_projects" checked>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea class="ckeditor form-control" placeholder="Description" name="description" class=""><?=$project->description?></textarea>
					</td>
				</tr>
				<tr>
					<td>Cover photo</td>
					<td>
						<input type="file" name="cover_photo" value="something">
					</td>
				</tr>
				
				
			</tbody>
		</table>
	</div>





	<div class="form-group top-buffer">
		<div class="col-md-8">
			<button id="button1id" name="" class="btn btn-success">Salveaza</button>
		</div>
	</div>

</form>
