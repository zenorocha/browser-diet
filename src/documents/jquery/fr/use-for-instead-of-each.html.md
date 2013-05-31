---
order: 10
title: Utilisez for au lieu de each
---

L'utilisation de fonction native en JavaScript conduit presque toujours à un résultat plus rapide à l'exécution qu'en utilisant jQuery. Pour cette raison, au lieu d'utililser la méthode `jQuery.each`, préférez la version JavaScript `for` pour les boucles.

Mais attention car, si `for in` est natif, sa performance sera moindre qu'un `jQuery.each` dans beaucoup de situations.

Et la bonne vielle boucle `for` nous donne la possibilité d'accélerer les choses en mettant en cache la longueur de la collection sur laquelle on va itérer.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

L'utilisation de `while` inversé et de boucle `for` inversée est un sujet sensible dans la communauté et ces itérations sont souvent cités comme les formes les plus rapides. Cependant, on les évite souvent car elles sont moins lisibles.

*> [Resultats sur JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [References](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*