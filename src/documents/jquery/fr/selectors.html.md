---
order: 12
title: Sélecteurs
---

Les sélecteurs sont l'un des problèmes les plus importants lié à l'utilisation de jQuery. Il y beaucoup de façons différentes de sélectionner un élément du DOM, mais cela ne veut pas dire qu'elles ont toutes les mêmes performances. Vous pouvez sélectionner en utilisant les classes, les IDs ou des méthodes comme `find()`, `children()`.

Parmi toutes celles-ci, sélectionner par ID est la méthode la plus rapide car elle est basée sur une opération native du DOM :

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
