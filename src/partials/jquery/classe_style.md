title: Use Classe ao inves de Style
slug: Classe
category: jquery
order: 11

Prefira utilizar classes `class` do que estilos `styles`

	<script type="text/javascript">
		//Fica mais lento e mais dificil de entender
		$("elem").css({color: 'red', border: 'red' });

		//Mais rapido e mais sexy
		$("elem").addClass('error');
	</script>  
	

