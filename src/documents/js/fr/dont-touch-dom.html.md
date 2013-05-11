---
order: 14
title: Evitez des manipulations inutiles du DOM
---

A chaque fois que vous touchez au DOM sans en avoir besoin un panda meurt.

Sérieusement, naviguer dans le DOM est couteux. Bien que les moteurs JavaScript deviennent de plus en plus rapides, préférez toujours l'optimisation du nombre de requêtes dans l'arborescence du DOM.

Une des solutions les plus simples à adopter, lorsque qu'un élément doit être atteint plus d'une fois, consiste a le sauvegarder dans une variable, ainsi vous n'éxécutez qu'une requête dans le DOM.

```js
// Très mauvais!
for (var i = 0; i < 100; i++) {
document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}
```

```js
// Bien mieux :)
var myList = "";

for (var i = 0; i < 100; i++) {
myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

*> [Resultats sur JSPerf](http://jsperf.com/browser-diet-dom-manipulation/5)*