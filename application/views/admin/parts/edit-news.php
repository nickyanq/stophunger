
<script src="<?= $this->config->base_url() ?>assets/admin/editor/ckeditor.js"></script>
<!--<link rel="stylesheet" href="<?= $this->config->base_url() ?>assets/admin/editor/sample.css">-->


<form action="" method="POST" enctype="multipart/form-data">

	<div class="bs-example">
		<table class="table table-striped">
			<tbody>
				<tr>
					<td>Titlu</td>
					<td>
						<input type="text" class="form-control input-md padd15 bottomless" name="title" value="<?= $news->title ?>">
					</td>
				</tr>
				<tr>
					<td>Data</td>
					<td>
						<input type="text" class="form-control input-md padd15 bottomless" name="date" value="<?= $news->date?>">
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<span>Intro</span><br/><br/>
						<textarea class="ckeditor form-control" placeholder="Description" name="intro" class=""><?= $news->intro?></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<span>Descriere</span><br/><br/>
						<textarea class="ckeditor form-control" placeholder="Description" name="description" class=""><?= $news->description?></textarea>
					</td>
				</tr>
				<tr>
					<td>Cover photo</td>
					<td>
						<input type="file" name="coverphoto"> 
						<span><?= $news->coverphoto ?></span>
					</td>
				</tr>
				<tr>
					<td>Photo bottom</td>
					<td>
						<input type="file" name="photo_bottom"/>
						<span><?= $news->photo_bottom ? $news->photo_bottom : '<font color=red><b>Fara imagine jos</b></font>'?></span>
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
