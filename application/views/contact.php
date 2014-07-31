<div class="content">
	<section id="main">
		<article id="content-left" class="contact">
			<div class="content_padding">
				<h2>contact</h2>
			</div>
			<!-- form Contact -->
			<div class="content_padding">
				<form action="" method="post" class="uniform form-contact"> 
					<ul>
						<li>
							<label>Nume</label> <input name="firstname" id="prenom" type="text">
							<label class="nom">Prenume</label> <input name="lastname" id="nom" type="text" class="last">
						</li>
						<li><label>Email</label> <input name="email" id="email" type="text"></li>
						<li class="commnents">
							<label>Profession</label>
							<label class="chekk"><input type="radio" name="radio" value="sponsor" class="checked" /> Sponsor</label>
							<label class="chekk"><input type="radio" name="radio" value="jurnalist" /> Jurnalist</label>
							<label class="chekk"><input type="radio" name="radio" value="ong" /> ONG</label>
							<label class="chekk"><input type="radio" name="radio" value="other" /> Altii</label>
							<!--<label class="chekk"><input type="radio" name="radio" value="Autres" /> Autres</label>-->											
						</li>
						<li><textarea name="comment" id="comments" cols="40" rows="5" placeholder="Mesajul dumneavoastra"></textarea></li>
						<li><input type="submit" value="Trimite" class="submit-btn" /></li>
					</ul>    
				</form>
			</div>

			<!-- Coordonnées -->
			<div class="adresse-contact content_padding">
				<img src="<?=$this->config->base_url();?>assets/images/images/equipe/img-coordonnes.jpg" alt="enfants-pasteque">
				<h3>Asociatia Stop Hunger</h3>
				<dl>
					<dt>ANovo Park - cladirea G, Strada Fabrica de Glucoza nr. 5, sector 2, Bucuresti, ROMANIA </dt>
					<dt>Tel.: 021 204 46 55 </dt>

					<dd>Daca aveti idei de impartasit,<br>
						nu ezitati sa ne contactati la :<br> 
						<a href="mailto: office@stophunger.ro"> office@stophunger.ro</a></dd>
					<dd><strong>Va multumim pentru spirjinul acordat.</strong></dd>
				</dl>
			</div>
		</article>
		<aside id="content-right">
			<div id="map-aside">
				<img src="<?=$this->config->base_url();?>assets/images/images/map.jpg" width="185" height="274" alt="Stop hunger dans le monde">
				<div class="map-search">
					<p>Stop Hunger<br />near you</p>
				</div>
			</div>
			<?php include 'dependencies/news.php' ?>


		</aside>
	</section>
	<!-- end main -->
</div>
<!-- footer -->

