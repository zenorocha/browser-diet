// definindo um namespace para evitar conflito com outros objetos
window.COMOPERDERPESO = window.COMOPERDERPESO || {};

// protegendo o $ do jQuery em uma função anônima, 
// prevenindo assim conflitos com outras libs que também usam $
(function($){

	COMOPERDERPESO.App = function(){
        
        // definindo variáveis e métodos privados no escopo da classe
        var privateObject;
        
        var private = function() {

        };
        
        return { // todos os métodos aqui são públicos
            
            init: function(){ 
                
            },

            highlight : function(){

                var scroll = $(window).scrollTop(),
                	sections = $('section', '#content'),
            		sectionID = '',
            		currentSection = '123';

            	for (var i = 0, l = sections.length; i < l; i++) {
		            
		            if ($('#' + sections[i].id).offset().top > scroll) {
		                articleID = sections[i].id;
		                break;
		            }

		        }

            	if (articleID !== currentSection) {
		            
		            $('#menu a').parent().removeClass('active');
		            $('#menu').find('a[href="#' + articleID + '"]').parent().addClass('active');

		            currentSection = articleID;

		        }

            }
        };
    };

}(jQuery));
    