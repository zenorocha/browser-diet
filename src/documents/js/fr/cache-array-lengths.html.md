---
order: 17
title: Mettre en cache la longueur d'un tableau
---

La boucle est sans doute l'un des aspects le plus important en ce qui concerne la perfomance en JavaScript. Essayez d'optimiser la logique dans la boucle pour que chaque itération soit effectuée de façon optimale.

Une façon de faire ceci est de garder en mémoire la taille du tableau, ainsi, elle n'est pas recalculée à chaque fois qu'on itère dans la boucle.

```js
var arr = new Array(1000),
len, i;

for (i = 0; i < arr.length; i++) {
// Mauvais - la taille doit être calculée 1000 fois
}

for (i = 0, len = arr.length; i < len; i++) {
// Bien - la taille est calculée qu'une seule fois et ensuite gardée en cache
}
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-cache-array-length/10/)*

**> A Noter:** *Bien que les navigateurs de recherche actuels optimisent ce processus automatiquement, ceci demeure une bonne méthode pour convenir aux navigateurs plus anciens qui subsistent.*

Ceci est particulièrement utile pour les itérations effectuées dans une collection de noeuds (*NodeList*) en HTML, générée par 'document.getElementsByTagName('a')'. Ces collections sont considérées comme étant "live", i.e. elles sont automatiquement modifiées quand il y a des changements dans l'élément auquel elles appartiennent.

```js
var links = document.getElementsByTagName('a'),
len, i;

for (i = 0; i < links.length; i++) {
// Pas super - à chaque itération la liste de liens sera recalculée pour voir si elle a changée
}

for (i = 0, len = links.length; i < len; i++) {
// Bien - la taille de la liste est d'abord obtenue et gardée en mémoire, ensuite la boucle est éxecutée
}

// Terrible: boucle infinie
for (i = 0; i < links.length; i++) {
document.body.appendChild(document.createElement('a'));
// à chaque itération la liste de liens augmente, la condition de terminaison de la boucle ne sera jamais vérifiée
// ceci n'aurait pas lieux si la taille de la liste était mise en mémoire cache et utilisée comme la condition d'éxecution de la boucle
}
```

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#cache-array-lengths)*