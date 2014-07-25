<div class="content">
	<section id="main">
		<article id="content-left" class="contact">
			<div class="content_padding">
				<h2>contact</h2>
			</div>
			<!-- form Contact -->
			<div class="content_padding">
				<form action="contact.php" method="post" class="uniform form-contact"> 
					<ul>
						<li>
							<label>Nume</label> <input name="prenom" id="prenom" type="text">
							<label class="nom">Prenume</label> <input name="nom" id="nom" type="text" class="last">
						</li>
						<li><label>Email</label> <input name="email" id="email" type="text"></li>
						<li class="commnents">
							<label>Profession</label>
							<label class="chekk"><input type="radio" name="radio" value="Donateurs" class="checked" /> Donator</label>
							<label class="chekk"><input type="radio" name="radio" value="Journalistes" /> Jurnalist</label>
							<label class="chekk"><input type="radio" name="radio" value="Étudiants" /> ONG</label>
							<label class="chekk"><input type="radio" name="radio" value="ONG" /> Altii</label>
							<!--<label class="chekk"><input type="radio" name="radio" value="Autres" /> Autres</label>-->											
						</li>
						<li><textarea name="comments" id="comments" cols="40" rows="5" placeholder="Votre message…"></textarea></li>
						<li><input type="submit" value="Envoyer" class="submit-btn" /></li>
					</ul>    
				</form>
			</div>

			<!-- Coordonnées -->
			<div class="adresse-contact content_padding">
				<img src="<?=$this->config->base_url();?>assets/images/images/equipe/img-coordonnes.jpg" alt="enfants-pasteque">
				<h3>Stop Hunger</h3>
				<dl>
					<dt>CP92H17 – 255 quai de la Bataille de Stalingrad<br>92866 Issy les Moulineaux cedex 9<br>France</dt>

					<dd>Si vous avez des idées à partager,<br>
						n'hésitez pas à nous contacter :<br> 
						<a href="mailto:contact.group@stop-hunger.org">contact.group@stop-hunger.org</a></dd>
					<dd><strong>Merci de votre soutien !</strong></dd>
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
			<?php include 'dependencies/tweet.php' ?>
			<?php // include 'include/en/facebook.php' ?>
			<?php // include 'include/en/donate.php' ?>
			<div class="chiffre-cle chiffre-cle-my blue-1">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>


		</aside>
	</section>
	<!-- end main -->
</div>
<!-- footer -->

