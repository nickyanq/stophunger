
<div class="content">
	<section id="main">
		<article id="content-left" class="contact">
			<div class="content_padding">
				<h2>Contact</h2>
			</div>
			<!-- form Contact -->
			<div class="content_padding">
				<form action="" id="contactForm" method="post" class="uniform form-contact"> 
					<table>
						<tr>
							<td>Nume</td>
							<td>
								<input name="firstname" id="firstname" type="text">
							</td>
						</tr>
						<tr>
							<td>Prenume</td>
							<td>
								<input name="lastname" id="lastname" type="text" class="last">
							</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>
								<input name="email" id="email" type="text">
							</td>
						</tr>
						<tr>
							<td>Esti</td>
							<td>
								<label class="chekk"><input type="radio" name="radio" value="Sponsor" class="checked" /> Sponsor</label>
								<label class="chekk"><input type="radio" name="radio" value="Jurnalist" /> Jurnalist</label>
								<label class="chekk"><input type="radio" name="radio" value="ONG" /> ONG</label>
								<label class="chekk"><input type="radio" name="radio" value="Student" /> Student</label>
								<label class="chekk"><input type="radio" name="radio" value="Altceva" /> Altii</label>	
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea name="comment" id="comment" cols="40" rows="5" placeholder="Mesajul dumneavoastra"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="Trimite" class="submit-btn" />
							</td>
						</tr>
					</table>

				</form>
			</div>

			<!-- Coordonnées -->
			<div class="adresse-contact content_padding">
				<img src="<?= $this->config->base_url(); ?>assets/images/images/equipe/img-coordonnes.jpg" alt="enfants-pasteque">
				<h3>Asociatia Stop Hunger</h3>
				<dl>
					<dt>Novo Park - cladirea G, Strada Fabrica de Glucoza nr. 5, sector 2, Bucuresti, ROMANIA </dt>
					<dt>Tel.: 021 204 46 55 </dt>

					<dd>Daca ai idei de impartasit sau doresti sa te implici alaturi de noi,<br>
						contacteaza-ne la:<br> 
						<a href="mailto: office@stophunger.ro"> office@stophunger.ro</a></dd>
					<dd><strong>Iti multumim pentru sprijinul acordat!</strong></dd>
				</dl>
			</div>
		</article>
		<aside id="content-right">
			<div id="map-aside">
				<img src="<?= $this->config->base_url(); ?>assets/images/images/map.jpg" width="185" height="274" alt="Stop hunger dans le monde">
				<div class="map-search">
					<p>Alte Initiative Stop Hunger</p>
				</div>
			</div>
			<?php include 'dependencies/news.php' ?>


		</aside>
	</section>
	<!-- end main -->
</div>
<!-- footer -->

