---
order: 10
title: Usa for en lugar de each
---

El uso de funciones de JavaScript nativas resulta casi siempre en una ejecución más rápida que usando las de jQuery. Por eso, en vez de usar el método `jQuery.each` usa el loop `for` de JavaScript.

Pero presta atención, pese a que `for in` es nativo, en muchos casos es más lento que `jQuery.each`.

Y el loop `for` nos da otra oportunidad de acelerar las cosas cacheando el tamaño (`length`) de las colecciones sobre las que estamos iterando.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

El uso de los loops `while` y `for` de forma inversa es un tema caliente de discusión en la comunidad, y son citados frecuentemente como la forma más rápida de iteración. Sin embargo suele ser evitado por ser menos legible.

*> [Resultados en JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*