<script type="text/javascript">
	$().ready(function() {
		// validate the comment form when it is submitted

		// validate signup form on keyup and submit
		$("#adopt-a-family").validate({
			rules: {
				firstname_lastname: {
					required: true,
					minlength: 3
				},
				phonenumber: {
					required: true,
					number : true
				},
				comment: {
					required: true,
				},
				email: {
					required: true,
					email: true
				},
				
				company_name : {
					required : true
				},
				company_function : {
					required : true
				},
				company_address : {
					required : true
				},
				company_phone : {
					required: true,
					number : true
				},
			},
			messages: {
				firstname_lastname: {
					required: "Introduceti numele dvs.",
					minlength: 'Minim 3 caractere.'
				},
				company_phone : {
					required: "Introduceti numarul de telefon.",
					number : "Numarul de telefon este invalid."
				},
				phonenumber: {
					required: "Introduceti numarul de telefon.",
					number : "Numarul de telefon este invalid."
				},
				company_name : {
					required : "Introduceti numele companiei/angajatorului."
				},
				email: {
					required: "Introduceti o adresa de email.",
					email: 'Va rugam introduceti o adresa de email valida'
				},
				company_address : {
					required : 'Introduceti adresa.'
				},
				company_function : {
					required : "Introduceti functia"
				},

			}
		});
	});
</script>

<div class="content">
	<section id="main">
		<article id="content-left" class="details-news1">
			<div class="content_padding">
				<h2>Doneaza in proiectul "Adopta o familie" </h2>
			</div>
			<div class="content_padding">

				<h3>Buna ziua, </h3>

				<p style="font-size: 17px;">Intrucat in desfasurarea acestui proiect acordam o atentie deosebita cazurilor pe care le sustinem si pastrarii confidentialitatii informatiilor despre copii,  pentru a accesa baza de date va rugam sa ne lasati datele dvs. urmand sa primiti un mesaj cu parola si userul dvs.</p>
				<p style="font-size: 17px;">Veti fi contactat in scurt timp de catre unul dintre voluntarii nostri! </p>

				<form action="" id="adopt-a-family" method="post" class="uniform form-contact"> 
					<table>
						<tr>
							<td>Nume si prenume</td>
							<td>
								<input name="firstname_lastname" id="firstname_lastname" type="text" placeholder="Introdu aici numele si prenumele">
							</td>
						</tr>
						<tr>
							<td>Telefon</td>
							<td>
								<input name="phonenumber" id="phone" type="text" class="last" placeholder="Introdu aici numarul de telefon fara spatii">
							</td>
						</tr>
						<tr>
							<td>Adresa email</td>
							<td>
								<input name="email" id="email" type="text" placeholder="Introdu aici adresa de email">
							</td>
						</tr>
						<tr>
							<td>Sunteti</td>
							<td>
								<label class="chekk"><input type="radio" name="radio" value="Sponsor" class="checked" /> Student</label>
								<label class="chekk"><input type="radio" name="radio" value="Jurnalist" /> Jurnalist</label>
								<label class="chekk"><input type="radio" name="radio" value="ONG" /> Angajat</label>
								<label class="chekk"><input type="radio" name="radio" value="Altceva" checked/> Altii</label>	
							</td>
						</tr>
						<!--						Nume companie/Angajator:
						
						Functia:
						
						Adresa:
						
						Telefon:-->

						<tr>
							<td>Nume companie/Angajator:</td>
							<td>
								<input name="company_name" id="company-name" type="text" placeholder="Introdu aici numele companiei/angajatorului">
							</td>
						</tr>
						<tr>
							<td>Functia:</td>
							<td>
								<input name="company_function" id="company-function" type="text" placeholder="Introdu aici functia">
							</td>
						</tr>
						<tr>
							<td>Adresa:</td>
							<td>
								<input name="company_address" id="company-address" type="text" placeholder="Introdu aici adresa">
							</td>
						</tr>
						<tr>
							<td>Telefon:</td>
							<td>
								<input name="company_phone" id="company-phone" type="text" placeholder="Introdu aici numarul de telefon">
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<input type="submit" value="Trimite" class="submit-btn" />
							</td>
						</tr>
					</table>

				</form>



<!--<p style="font-size: 15px;">Cod fiscal: 23820778</p>-->
			</div>


			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5315d6c6288e86ca"></script>

		</article>
	</section>
	<!-- end main -->
</div>