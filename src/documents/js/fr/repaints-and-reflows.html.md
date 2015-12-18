---
order: 14
title: Minimiser les "repaints" et "reflows"
---

Les "repaints" et "reflows" ont lieu lorsque le DOM est ré-actualisé, c'est-à-dire quand une certaine propriété ou élément est modifié.

Les "repaints" ont lieu lorsque le style d'un élèment est modifié sans que la mise en page ne le soit. Nicole Sullivan décrit ceci comme un changement de propriété tel que 'background-color'.

Les "reflows" sont assez coûteux, puisqu'ils sont causés par le changement de la mise en page, telle que la largeur d'un élèment.

Il n'y a pas de doute que l'excès de "reflows" et de "repaints" devrait être évité, plutôt que d'écrire ceci :

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="https://browserdiet.com/en/assets/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

Faites plutôt cela :

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

Quand on fixe `style.width`, le navigateur doit recalculer la mise en page. Habituellement, changer le style de plusieurs éléments entraine un seul "reflow" puisque le navigateur n'a pas besoin de penser à cela tant que l'affichage n'est pas modifié. Cependant, dans le premier exemple, on prend `offsetWidth` qui est la largeur de cet élément, donc le navigateur doit recalculer la mise en page.

Si on doit lire des instances de la mise en page du document, il faut le faire avant d'assigner quoi que ce soit qui puisse changer la mise en page, comme le montre le deuxième exemple.

*> [Demo](http://jsbin.com/aqavin/2/quiet) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*
