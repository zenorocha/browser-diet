window.COMOPERDERPESO = window.COMOPERDERPESO || {};

(function($){

	COMOPERDERPESO.App = function(){
		
		var privateObject;
		
		var private = function() {

		};
		
		return {
			
			init: function(){ 
				
			},

			highlight : function(){

				var scroll = $(window).scrollTop(),
					sections = $('section', '#content'),
					sectionID = '';

				for (var i = 0; i < sections.length; i++) {
					
					if (($('#' + sections[i].id).offset().top - 300) > scroll) {
						sectionID = sections[i].id;
						break;
					}

				}
					
				$('#menu a').parent().removeClass('active');
				$('#menu').find('a[href="#' + sectionID + '"]').parent().addClass('active');

			}
		};
	};

}(jQuery));
	