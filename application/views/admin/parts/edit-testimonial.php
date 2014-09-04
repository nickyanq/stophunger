
<script src="<?= $this->config->base_url() ?>assets/admin/editor/ckeditor.js"></script>
<!--<link rel="stylesheet" href="<?= $this->config->base_url() ?>assets/admin/editor/sample.css">-->

<form action="" method="POST" enctype="multipart/form-data">
	<div class="bs-example">
		<table class="table table-striped">
			<tbody>
				<tr>
					<td>Project</td>
					<td>
						<input type="text" disabled class="form-control input-md padd15 bottomless" name="title" value='<?=$testimonial->ptitle?>'>
					</td>
				</tr>
				<tr>
					<td>Titlu</td>
					<td>
						<input type="text" class="form-control input-md padd15 bottomless" name="title" value="<?= $testimonial->title ?>">
					</td>
				</tr>
				<tr>
					<td>Data inserarii</td>
					<td>
						<input type="text" class="form-control input-md padd15 bottomless" name="insertdate" disabled value="<?= $testimonial->insertdate?>">
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<span>Continut</span><br/><br/>
						<textarea class="ckeditor form-control" placeholder="Description" name="description" class=""><?= $testimonial->description?></textarea>
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
