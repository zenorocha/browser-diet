---
order: 10
title: Utilisez for au lieu de each
---

L'utilisation de fonction native en Javascript conduit presque toujours à un résultat plus rapide à l'execution qu'en utilisant jQuery. Pour cette raison au lieu d'utililser la méthode `jQuery.each`, utilisez la version JavaScript `for` pour les boucles

Mais faites attention, même si `for in` est natif, dans beaucoup de situations la performance est moindre qu'un `jQuery.each`.

Et la bonne vielle boucle `for` nous donne la possibilité d'accélerer les choses en mettant en cache la longueur de la collection sur laquel on va itérer.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```
L'utilisation de `while` inversé et de boucle `for` inversé est un sujet sensible dans la communauté et sont souvent cité comme les formes d'itération les plus rapide. Cependant on les évite souvent car elles sont moins lisibles.

*> [Resultats sur JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [References](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*