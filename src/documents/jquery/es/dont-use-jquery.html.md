---
order: 9
title: No uses jQuery...
---

...salvo que sea absolutamente necesario. :)

A veces JavaScript a secas puede ser incluso más simple que jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

¿Por qué usar el método `attr()` para buscar una ID?

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

Si puedes obtener este atributo nativamente mediante `this`:

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

Y es más rápido

*> [Resultados en JSPerf](http://jsperf.com/browser-diet-this-attr-id-vs-this-id) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*