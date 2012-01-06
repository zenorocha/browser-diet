CSS
---------------


### Coloque o CSS no &lt;head&gt;:

### Minifique seu CSS:

### Comprima todos os arquivos CSS em um só:

### Prefira &lt;link&gt; ao invés de @import:

Com @import você pode importar um arquivo CSS dentro do outro. Isso é bem útil em alguns casos, porém ao utilizar ele o navegador não permite realizar o download dos CSS em paralelo. Suponha que você tenha o principal.css e dentro dele faça:

	@import url("secundario.css")

O navegador irá fazer o download, parsear e executar principal.css antes de descobrir que precisa fazer isso também com o outro.css,

Por isso utilize <link>, assim você pode realizar o download em paralelo, resultando em uum carregamento mais rápido da página.

	<link rel="stylesheet" href="principal.css">
	<link rel="stylesheet" href="secundario.css">

`Referência:` [Google Speed](http://code.google.com/speed/page-speed/docs/rtt.html#AvoidCssImport)