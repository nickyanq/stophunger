$().ready(function(){

});


var admin = {
	
	toggle_success_notice : function(message){
		console.log(message);
		$('.success_notice').html(message);
		$('.success_notice').slideDown();
		
		setTimeout(function(){
			$('.success_notice').slideUp();
		},3000);
		
	},
	toggle_error_notice : function(message){
		$('.error_notice').html(message);
		$('.error_notice').slideDown();
		
		setTimeout(function(){
			$('.error_notice').slideUp();
		},3000);
	}
	
};