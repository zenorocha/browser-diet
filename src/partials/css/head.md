title: Coloque o CSS no <head>
slug: coloque-css-no-head
category: css
order: 3

Mova os estilos inline e elementos <link> do <body> para o <head>. Navegadores bloqueiam a renderização da página até que todos os estilos externos tenham sido baixados. Por isso garanta que eles serão carregados e parseados antes, para o navegador renderizar a página progressivamente.

`Referência:` [Google Speed](http://code.google.com/speed/page-speed/docs/rendering.html#PutCSSInHead)