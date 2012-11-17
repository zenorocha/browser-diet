title: async & defer
slug: async-e-defer
category: html
order: 7

São atributos que devem ser usados em conjunto com a tag `<script>`

Para explicar como esses atributos são úteis para melhorar a performance, é melhor entender o que acontece quando não utilizamos eles.

    #!html
	<script src="exemplo.js"></script>

Dessa forma, a página aguarda o script terminar de carregar antes de continuar sua renderização e sua execução é feita imediatamente após. Isso pode aumentar significativamente o tempo de carregamento da página.  Algumas vezes esse comportamento é desejado, outras vezes não.

	<script async src="exemplo.js"></script>

O download do script é feito de forma assíncrona enquanto o processo de renderização da página continua a ser feito. O script é executado depois que o download estiver completo.

	<script defer src="exemplo.js"></script>

Assim como o exemplo acima, o download do script é feito de forma assíncrona. Mas sua execução se dá apenas quando todo o processo de renderização estiver concluído.

`Referência:` [Google Speed - HTML5 Performance](http://code.google.com/speed/articles/html5-performance.html) - [Zeno Rocha - Async Scripts](http://blog.zenorocha.com/post/10361104170/html5-async-scripts?8d59cf40)