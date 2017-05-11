---
order: 9
title: Sélecteurs
---

Le sélecteur est l'une des plus importante question dans l'utilisation de jQuery. Il existe différentes manières de sélectionner un élément depuis le DOM, mais cela ne vaut pas dire que les performances sont équivalentes, vous pouvez sélectionner un élément en utilisant les classes, les ID ou via des méthodes telles que `find()`, `children()`. 

Parmis ces dernières, sélectionner l'ID est la méthode la plus rapide, car elle est basée sur une opération native du DOM :

```js
$("#foo");
```

*[> Résultats sur JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
