---
order: 6
title: Use CSS Sprites
---

Essa técnica consiste em agrupar diversas imagens em uma só.

<img id="img-sprite" src="https://browserdiet.com/assets/img/sprite-example.jpg" alt="CSS Sprite Example">

E depois posicioná-las através de CSS.

```css
.icon-foo {
  background-image: url('mySprite.png');
  background-position: -10px -10px;
}

.icon-bar {
  background-image: url('mySprite.png');
  background-position: -5px -5px;
}
```

Isso faz com que diminua absurdamente o número de requisições HTTP e evite atrasos no download de outros recursos da sua página.

Ao montar seu *sprite*, evite deixar muito espaço em branco entre as imagens, isso não afeta o peso do arquivo, mas sim o uso de memória para processar o mapa de pixels.

Apesar de extremamente difundida, essa técnica é pouco usada já que os desenvolvedores não utilizam ferramentas que automatizam o processo de geração dessa imagem. Por isso, separamos algumas que podem te ajudar nisso.

*> [Ferramentas úteis](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-use-css-sprites) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*
