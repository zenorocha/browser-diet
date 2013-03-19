---
order: 8
title: Usa sprites
---

Ésta técnica es sobre agrupar varias imágenes en un sólo archivo.

<img id="img-sprite" src="http://browserdiet.com/img/sprite-example.jpg" alt="CSS Sprite Example">

Y después posicinarlas con CSS.

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

Como resultado, has reducido dramáticamente el número de solicitudes HTTP y evitado cualquier retraso potencial de otros recursos en tu página.

Cuando estás usando tu *sprite*, evita dejar demasiado espacio en blanco entre imágenes. Esto no afectará al tamaño del archivo, pero tendrá efecto en el consumo de memoria.

Y pese a que casi todo el mundo conoce las sprites, esta técnica no está demasiado extendida&mdash;tal vez debido a que los desarrolladores no usan herramientas automatizadas para generar sprites. Hemos seleccionado algunas que pueden ayudarte con esto.

*> [Herramientas útiles](https://github.com/zenorocha/browser-diet/wiki/Tools#use-css-sprites) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*