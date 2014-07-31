(function($){
  $(document).ready(function(){
/* navigation langue*/
               $('.langue').change(function() {
                    if ($(this).val() != "") {
                        window.location.href = $(this).val();
                    }
                });
		/* add active menu class */
		var url = window.location.pathname, urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");
                if(url!= "" && url != "/") {
		$('#header a').each(function() {
				if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
						$(this).parent().addClass('active');
								$(this).parent().addClass('active');
                                       var myClass = $(this).attr("class");
                                       if(myClass === undefined) {
					   $(this).parent().addClass('active');
                                       } else {
                                           $("."+myClass).addClass('active');
                                       }
				}
		});   
                }
		/* menu header */
		/* position sous menu */
		var widthNav= $('#nav').width();
		$('.ss-menu').each(function() {
			$(this).width(widthNav);
            
        });
		$('#header li').mouseenter(function(){
			if($(this).children('ul')){		
					$(this).addClass('actif-menu').children('div').slideToggle(0);	
					
			}
		});
		$('#header li').mouseleave(function(){
			if($(this).children('ul')){		
					$(this).removeClass('actif-menu').children('div').slideToggle(0);	
					
			}
		});
  /* check form contact en*/
      $(".en .form-contact").submit(function(e) {
		  $('.erreur-msg').remove();
		  $('input, .chekk, textarea').removeClass('error');
            var prenom = $(".form-contact #prenom").val();
            var nom = $(".form-contact #nom").val();
            var email = $(".form-contact #email").val();
            var comments = $(".form-contact #comments").val();
			var erreur="";
			var error =0;
			   var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            
            if(prenom == "") {
				erreur=erreur+'Name field is required <br />' ;
				error=1;
				$(".form-contact #prenom").addClass('error');
            }
            if(nom == "") {
				erreur=erreur+'Last name field is required <br />' ;
				error=1;
				$(".form-contact #nom").addClass('error');
            }
            if((email == "")||(!filter.test(email))) {
				erreur=erreur+'Email Adress field is required <br />' ;
				error=1;
				$(".form-contact #email").addClass('error');
            }
            if(comments == "") {
				erreur=erreur+'Message field is required <br />' ;
				error=1;				
				$(".form-contact #comments").addClass('error');
            }
            var allChecked = true;
            $('li.commnents').each(function() {
                if (!$(':radio', this).is(':checked')) {
                    erreur=erreur+'Profession field is required <br />' ;
					error=1;					
					$(".form-contact .chekk").addClass('error');
                    //return false;
                }
            });
            if (!allChecked) {
                
            } 
			if(error==1){
				erreur='<p class="erreur-msg">'+erreur+'</p>';
				$('.form-contact').append(erreur);
				return false;
				}  
});
/* check form contact fr */
    $(".fr .form-contact").submit(function(e) {
		  $('.erreur-msg').remove();
		  $('input, .chekk, textarea ').removeClass('error');
            var prenom = $(".form-contact #prenom").val();
            var nom = $(".form-contact #nom").val();
            var email = $(".form-contact #email").val();
            var comments = $(".form-contact #comments").val();
			var erreur="";
			var error =0;
			   var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            
            if(prenom == "") {
				erreur=erreur+'Le champs prénom est obligatoire <br />' ;
				error=1;
				$(".form-contact #prenom").addClass('error');
            }
            if(nom == "") {
				erreur=erreur+'Le champs nom est obligatoire <br />' ;
				error=1;
				$(".form-contact #nom").addClass('error');
            }
            if((email == "")||(!filter.test(email))) {
				erreur=erreur+'Le champs email est obligatoire <br />' ;
				error=1;
				$(".form-contact #email").addClass('error');
            }
            if(comments == "") {
				erreur=erreur+'Le champs message est obligatoire <br />' ;
				error=1;				
				$(".form-contact #comments").addClass('error');
            }
            var allChecked = true;
            $('li.commnents').each(function() {
                if (!$(':radio', this).is(':checked')) {
                    erreur=erreur+'La profession prénom est obligatoire <br />' ;
					error=1;					
					$(".form-contact .chekk").addClass('error');
                    //return false;
                }
            });
            if (!allChecked) {
                
            } 
			if(error==1){
				erreur='<p class="erreur-msg">'+erreur+'</p>';
				$('.form-contact').append(erreur);
				return false;
				}  
});
		/* block news cliquable */
		$('.news').click(function(){
//			$(this).find('.link-article').get(0).click();
			});
		/* partners accordion */
		$('#partners ul:first').slideToggle(400);
		$('#partners .title').click(function(){
				if($(this).hasClass('actif-accor')){
					$(this).removeClass('actif-accor').addClass('inactif-accor').next().slideToggle(400);
					}
				else{
			$('#partners .actif-accor').removeClass('actif-accor').addClass('inactif-accor').next().slideToggle(400);
			$(this).addClass('actif-accor').removeClass('inactif-accor').next().slideToggle(400);
					}
			
			});
		if($('body').hasClass('contact')){
		$("form.uniform input[type=radio]").uniform(); 
		}
		/* maps */
		var markers = [];
		$("#map .marker").each(function(){
			markers.push(
				{
					position: new google.maps.LatLng($(this).data("lat"),$(this).data("lng")),
					icon: $(this).data("icon"),
					content: $(this).html()
				}
			);	 
		})
		function initialize() {
			if(!document.getElementById("map")) return;
			var map = new google.maps.Map(document.getElementById("map"), {
				draggable: false,
				scrollwheel: false,
				overviewMapControl: false,
				streetViewControl: false,
				mapTypeControl: false,
				mapTypeId: google.maps.MapTypeId.ROADMAP,
				center: new google.maps.LatLng(35, 10),
				panControl: true,
				scaleControl: true,
				zoomControl: true,
				zoom: 2,
				maxZoom: 10,
				minZoom: 2,
      	styles: [
					{
						featureType: "water",
						elementType: "all",
						stylers: [
						{ color: "#c9d4dd" }
						]
					},{
						featureType: "landscape",
						elementType: "all",
						stylers: [
						{ color: "#f7f7f7" }
						] 
					}
				]
			});
			
			var active_infobox;
			function closeActiveInfobox(){
				if(active_infobox){
					active_infobox.close();
					active_infobox = null;
				}
			}
			for(i=0;i<markers.length;i++){
				var marker = new google.maps.Marker({
					map: map,
					position: markers[i].position,
					icon: markers[i].icon
				});
				var infobox = new InfoBox({
						 content: markers[i].content,
						 disableAutoPan: false,
						 pixelOffset: new google.maps.Size(20, -50),
						 zIndex: 0,
						 boxStyle: {
								width: "220px"
						},
						closeBoxURL: ""
				});
				marker.infobox = infobox;
				google.maps.event.addListener(marker, 'click', function() {
					closeActiveInfobox();
					this.infobox.open(map, this);
					active_infobox = this.infobox;
				});
				google.maps.event.addListener(map, 'click', function() {
					closeActiveInfobox();
				});
				google.maps.event.addListener(map, 'center_changed', function() {
					closeActiveInfobox();
				});
			}
		}
		google.maps.event.addDomListener(window, 'load', initialize);
		/* fin maps */
		
		/* center image */
		function centerimages(){
			$(".center-images .image-container img").each(function(){
				$(this).css({width:'100%',height:'auto'});
				var top = ($(this).closest(".center-images").outerHeight()-$(this).outerHeight())/2;
				$(this).css({top:top,left:0});
				if(top>0){
						$(this).css({width:'100%',height:'auto'});
						$(this).css({top:0,left:0});
					
					$(this).css({width:'auto',height:'100%'});
					var left = ($(this).closest(".center-images").outerWidth()-$(this).outerWidth())/2;
					$(this).css({top:0,left:left});
					}
			});
		}
		centerimages();
		$(".center-images .image-container img").load(function(){
				centerimages();
		});
		$(window).resize(function(){
				centerimages();
		});
		/* fin center image */
		
		/* download image */
		$(".photo-download").mouseover(function(){
			var download_url=$(".image-container.active img").attr("src")||$(".image-container:first img").attr("src");
			download_url=download_url.substr(20, 40);
			$(this).attr("href",'download.php?file=images/images/photos/src'+download_url);
		});
		/* fin download image */
  });
}(jQuery));