<div class="content">
	<section id="main">
		<!-- news hp -->
		<article id="news-hp">
			<h2>Noutati <span class="arrow-more right-title"><a href="">Toate Noutatile</a></span></h2>
			<div class="news" style="width:530px;">
				<div class="left-news">
					<h3><a href="#/nouate/{id}" class="link-article">Daruieste un inceput <br/>de scoala fericit!</a></h3>
					<img src="<?=$this->config->base_url();?>assets/images/images/articles/servathon.jpg" width="263" height="178" alt="SERVATHON 2014 :De la générosité, du cœur et du partage">
				</div>

				<div class="center-news">
                    <p class="date-article">August 2014</p>
					<p class="desc">
						Anul acesta aducem aproape de inimile voastre 300 de copii pe care dorim să îi ajutam să fie pregătiți pentru școală. Afla mai multe detalii! 
					</p>
					<span class="arrow-more"><a href="">mergi la stire</a></span>
				</div>
			</div>

			<div class="right-news">

				<div class="news">
                   	<h3><a href="" class="link-article">Implica-te si tu alaturi de noi! </a></h3>
                    <p class="date-article">Aprilie 2014</p>
                    <p>Doneaza si tu 2% Asociatiei Stop Hunger pentru a reusi impreuna sa schimbam in bine viata a cat mai multi copii! </p>
				</div>
<!--				<div class="news">
                    <div class="sep-dotted"></div>
                    <h3><a href="" class="link-article">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></h3>
                    <p class="date-article">03 Mars 2014</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
				</div>-->
			</div>
		</article>
		<!-- bloc map -->
		<article id="map-shunger">
			<div class="entete">
				<h2>Stop hunger aproape de tine</h2>
				<p>Pentru a afla mai multe despre actiunile noastre, selecteaza o tara de mai jos.</p>
			</div>
			<!-- newsletter / donate -->
			<div class="hp-block-newsletter">
				<div id="block-donate">
					<a href="">Face-ti o donatie</a>
				</div>
			</div>
			<!-- google map -->
			<div id="map">
				<div class="marker hide" data-lat="49.8037633" data-lng="15.4749126" data-icon="<?=$this->config->base_url();?>assets/images/images/maps/epingle-rouge.png">
					<h3><span><img src='<?=$this->config->base_url();?>assets/images/images/maps/tcheque.jpg'></span>République tchèque</h3>
					<a class='liens' href='http://www.stophunger.cz/' target='_blank'>Go to local website</a>
				</div>
				<div class="marker hide" data-lat="52.2129918" data-lng="5.2793703" data-icon="<?=$this->config->base_url();?>assets/images/images/maps/epingle-rouge.png">
					<h3><span><img src='<?=$this->config->base_url();?>assets/images/images/maps/pays-bas.jpg'></span>Pays-Bas</h3>
					<a class='liens' href='http://sodexofoundation.bysodexo.nl/#!1-Welkom' target='_blank'>Go to local website</a>
				</div>
				<div class="marker hide" data-lat="37.6" data-lng="-95.665" data-icon="<?=$this->config->base_url();?>assets/images/images/maps/epingle-rouge.png">
					<h3><span><img src='<?=$this->config->base_url();?>assets/images/images/maps/usa.jpg'></span>États-Unis</h3>
					<a class='liens' href='http://www.sodexofoundation.org/hunger_us/default.asp' target='_blank'>Go to local website</a>
				</div>
				<div class="marker hide" data-lat="55.26731" data-lng="-100.36090" data-icon="<?=$this->config->base_url();?>assets/images/images/maps/epingle-rouge.png">
					<h3><span><img src='<?=$this->config->base_url();?>assets/images/images/maps/canada.jpg'></span>Canada</h3>
					<span class='liens'>Site internet à venir</span>
				</div>
				<div class="marker hide" data-lat="-9.1951786" data-lng="-74.9904165" data-icon="<?=$this->config->base_url();?>assets/images/images/maps/epingle-rouge.png">
					<h3><span><img src='<?=$this->config->base_url();?>assets/images/images/maps/perou.jpg'></span>Pérou</h3>
					<span class='liens'>Site internet à venir</span>
				</div>
				<div class="marker hide" data-lat="55.3617609" data-lng="-3.4433238" data-icon="<?=$this->config->base_url();?>assets/images/images/maps/epingle-rouge.png">
					<h3><span><img src='<?=$this->config->base_url();?>assets/images/images/maps/uk.jpg'></span>Royaume-uni</h3>
					<span class='liens'>Site internet à venir</span>
				</div>
			</div>
		</article>
		<!-- end google map -->                    

		<article>
			<div class='proiecteContainer'>
				<div class='left'>
					<div class='top'>
						<table>
							<tr>
								<td>Proiecte</td>
								<td>
									<i></i>
									<div></div>
								</td>
								<td onclick="linkto('<?=$this->config->base_url()?>proiecte')">
									Toate proiectele
									<div></div>
								</td>
							</tr>
						</table>

					</div>
					<div class='bottom'>
						<div class='left'>
							<img src='<?=$this->config->base_url();?>assets/images/home-page-image.png' alt='ajuta-ti oamenii' width="100%">
						</div>
						<div class='right'>
							<p class='title'>Proiectul  "Adopta o Familie"  (2011- prezent)</p>
							<p class='date'>2011 - prezent</p>
							<p class='article-content'>In cadrul programelor de sprijin adresate categoriilor de persoane aflate in dificultate, desfasurate de catre Asociatia Stop Hunger,  printre problemele majore constant intalnite in randul tinerilor sunt:  lipsa de repere pozitive, de indrumare si de modele.</p>
							<table>
								<tr>
									<td>
										<i></i>
									</td>
									<td onclick="linkto('<?=$this->config->base_url()?>proiect/adopta-o-familie)'">
										Mergi la articol
										<div></div>
									</td>
								</tr>
							</table>
						</div>
					</div>

				</div>
				<div class='right'>
					<div class='up'>
						<div class='left'>
							<h3>832 milioane de persoane,</h3>
							<p>ce reprezinta 15% din populatia lumii, sufera de foamete</p>
						</div>
						<div class='right'>
							<p>In 2012/2013, <br/>sodexo a ajutat mai mult de</p>
							<h3>2.9 milioane de oameni :)</h3>
						</div>
					</div>
					<div class='down'>
						<h2>Newsletter</h2>
						<p>Completati campul de mai jos si apasati <b>Trimite</b> pentru a va abona la newsletterul Stop Hunger. </p>
						<form action="" method="POST" id="newsletterform">
							<table>
								<tr>
									<td>
										<input type="text" name="newsletter" placeholder="Introduceti emailul aici...">
									</td>
									<td> <i></i> </td>
									<td onclick="$('#newsletterform').submit();"><span>Trimite</span><div></div></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
			<div class="btom-container">
				<div class="first desc">
					<div style="display: table;width: 100%;height: 100%;">
						<div style="display: table-cell;width: 100%;height: 100%;vertical-align: middle;">
							<h3 style="padding-left: 15px;padding-right: 15px;">Servathon 2014 - Impreuna suntem mai puternici</h3>
							<p style="padding-left: 15px;padding-right: 15px;">
								Aprilie - Mai este un moment cheie in mobilizarea muncii de voluntariat impreuna cu ONGurile locale pentru a servi
								mancare gratuita si pentru colectarea de fonduri. Haideti sa ne unim fortele la Servathon 2014 pentru ca impreuna suntem
								mai puternici.
							</p>
						</div>
					</div>

				</div>
				<div class="second">
					<iframe id="buto_iframe_GKMrf" src="http://play.buto.tv/XDbzF" width="595" height="320" frameborder="0" scrolling="no"></iframe>
				</div>
			</div>

		</article>
	</section>
	<!-- end main -->
</div>
<div id="large-bottom">
	<div class="center-images">
		<div class="image-container">
			<img src="<?=$this->config->base_url();?>assets/images/images/articles/stop-hunger.jpg" alt="stop hunger" width="1270" height="654">
			<div class="slide-title">
				<p class="text-80">+40 021 204 45 56</p>
				<p class="text-18">Novo Park - cladirea G, Strada Fabrica de Glucoza nr. 5, sector 2, Bucuresti, ROMANIA</p>
			</div>
		</div>
	</div>
</div>