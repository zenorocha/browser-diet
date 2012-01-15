CSS
---------------


### Coloque o CSS no &lt;head&gt;:

Mova os estilos inline e elementos <link> do <body> para o <head>. Navegadores bloqueiam a renderização da página até que todos os estilos externos tenham sido baixados. Por isso garanta que eles serão carregados e parseados antes, para o navegador renderizar a página progressivamente.

`Referência:` [Google Speed](http://code.google.com/speed/page-speed/docs/rendering.html#PutCSSInHead)

### Minifique seu CSS:

Você não precisa de todos aqueles espaços ou quebras de linhas no seu código quando ele está online. Lembre-se que quanto menor o arquivo, mais rápido ele carregará, portanto assegure-se de minificar seu CSS, assim todos esses caracteres extras serão removidos e seu CSS ficará ilegível para humanos, porém exatamente igual para máquina.

### Combine todos os arquivos CSS em um só:

Quanto menos arquivos para carregar, menos requisições HTTP e consequentemente mais velocidade. Por isso combine todos seus arquivos CSS em um só. Isso não quer dizer que você deva deixar seu CSS todo desorganizado. Você pode continuar com seu ciclo normal de desenvolvimento contendo folhas de estilo diferentes para cada modelo de página. Mas lembre-se de combinar todos eles antes de colocar isso no ar.

`Referência:` [Google Speed](http://code.google.com/speed/page-speed/docs/rtt.html#CombineExternalCSS)

### Prefira &lt;link&gt; ao invés de @import:

Com @import você pode importar um arquivo CSS dentro do outro. Isso é bem útil em alguns casos, porém ao utilizar ele em um CSS externo, o navegador não permite realizar o download dos CSS em paralelo. Suponha que você tenha o principal.css e dentro dele faça:

	@import url("secundario.css")

O navegador irá fazer o download, parsear e executar principal.css antes de descobrir que precisa fazer isso também com o outro.css,

Por isso utilize <link>, assim você pode realizar o download em paralelo, resultando em um carregamento mais rápido da página.

	<link rel="stylesheet" href="principal.css">
	<link rel="stylesheet" href="secundario.css">

`Referência:` [Google Speed](http://code.google.com/speed/page-speed/docs/rtt.html#AvoidCssImport)

### Combine imagens utilizando CSS Sprites:

A técnica mais famosa para reduzir o número de requisições para imagens é através de CSS Sprites. A técnica consiste em atribuir todas as imagens do site em uma só, e depois basta posicioná-las no CSS com `background-position`. Assim dimuimos o número de requisições e permitimos um maior número de downloads em paralelo.

![image](http://www.google.com/images/nav_logo83.png)

Dica: [Sprite Cow](http://www.spritecow.com/)

`Referência:` [Google Speed](http://code.google.com/speed/page-speed/docs/rtt.html#SpriteImages)