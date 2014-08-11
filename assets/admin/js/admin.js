$().ready(function() {

});


var admin = {
	toggle_success_notice: function(message) {
		console.log(message);
		$('.success_notice').html(message);
		$('.success_notice').slideDown();

		setTimeout(function() {
			$('.success_notice').slideUp();
		}, 3000);

	},
	toggle_error_notice: function(message) {
		$('.error_notice').html(message);
		$('.error_notice').slideDown();

		setTimeout(function() {
			$('.error_notice').slideUp();
		}, 3000);
	}
	,
	deleteCase: function(id) {
		var conf = confirm('Sigur doresti sa stergi acest caz?');

		if (conf) {
			window.location.href = site_url + 'admin/delete-case/' + id;
		} else {
			return false;
		}

		return false;
	}

};

function linkto(link) {
	window.location = (link);
}