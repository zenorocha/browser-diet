window.COMOPERDERPESO = window.COMOPERDERPESO || {};

(function($){

	COMOPERDERPESO.app = function() {

		var didScroll = false,

		menuHighlight = function() {

			// $('#menu').scrollspy();

			// var scroll = $(window).scrollTop(),
			// 	sections = $('section', '#content'),
			// 	sectionID = '';

			// for (var i = 0; i < sections.length; i++) {

			// 	if (($('#' + sections[i].id).offset().top - 300) > scroll) {
			// 		sectionID = sections[i].id;
			// 		break;
			// 	}

			// }

			//var inViewport = $('article:in-viewport').first().attr('id');

			// $('#menu a').parent().removeClass('active');
			// $('#menu').find('a[href="#' + sectionID + '"]').parent().addClass('active');

		},

		updatePath = function() {

			var newUrl = '',
				baseUrl = '/',
				inViewport = $('article:in-viewport').first().attr('id');

			if (history.replaceState) {

				if (inViewport == undefined || inViewport == 'intro') {
					newUrl = baseUrl;
				} else {
					newUrl = "#" + inViewport;
				}

				history.replaceState('', '', newUrl);

			}

		};

		return {

			init: function() {

				// $('#menu').scrollspy();

				$(window).scroll(function() {
					menuHighlight();
					didScroll = true;
			    });

			    setInterval(function(){
					if (didScroll) {
						updatePath();
						didScroll = false;
					}
				}, 250);

			}

		};
	};

}(jQuery));
