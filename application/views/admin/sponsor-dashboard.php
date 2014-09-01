
<div class="list-group">
	<?php foreach ($cases as $case) : ?>	
		<a href="<?= $this->config->base_url() . 'sponsor/case/' . $case->id ?>" class="list-group-item" style="letter-spacing: 0;font-size: 0;">
			<div style="display: inline-block;width: 70px;vertical-align: top;height: 50px; border: 0px solid black;">
				<img src="<?= $this->config->base_url() . 'assets/uploads/' . $case->profile ?>" width="100%" class="profile-img" alt="profile">
			</div>
			<div style="display: inline-block;vertical-align: top;min-height: 50px;width: calc(100% - 180px);border: 0px solid gray;">
				<p style="font-size: 12px;padding-left: 15px;"><b><?= $case->firstname . ' ' . $case->lastname ?></b></p>
				<p style="font-size: 12px;padding-left: 15px;"><?= $case->description ?></p>
			</div>
		</a>
	<?php endforeach; ?>	
</div>
<div class="sponsor-fixed-right">
	<p>
		<b>Accesul la aceasta sectiune este restrictionat.</b>
	</p>
	<p>
		Va rugam sa nu distributi materialele ce se gasesc in aceasta sectiune
		pe nicio retea de socializare sau alte locuri pentru protejarea
		identitatii persoanelor in cauza.
	</p>
</div>