---
order: 15
title: Minimiser les "repaints" et "reflows"
---

Les "repaints" et "reflows" ont lieux lorsque le DOM est réactualisé quand une certaine propriété ou élément est modifié.

Les "repaints" ont lieux lorsque le style d'un élement est modifié sans que la mise en page le soit. Nicole Sullivan décrit ceci comme un changement de propriété telle que `background-color`.

Les "reflows" sont assez couteux, puisqu'ils sont causés par le changement de la mise en page, telle que la largeur d'un élement.

Il n'y a pas de doute que l'excès de "reflows" et de "repaints" devrait être évité, plutôt que d'écrire ceci:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

Faîtes cela:

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

Quand on fixe `style.width` le navigateur doit recalculer la mise en page. Habituellement, changer le style de plusieurs éléments entraine un seul "reflow", puisque le navigateur n'a pas besoin de penser à cela tant que l'affichage doit être modifié. Cependant, dans le premier exemple, on prend `offsetWidth` qui est la largeur de cet élément, donc le navigateur doit recalculer la mise en page.
Si on doit lire des instances de la mise en page du document, il faut le faire avant d'assigner quoi que ce soit qui puisse changer la mise en page, comme le montre le deuxieme exemple.

*> [Demo](http://jsbin.com/aqavin/2/quiet) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*