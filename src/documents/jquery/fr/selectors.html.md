---
order: 12
title: Selecteurs
---

Selecteurs sont un des plus important problème lié à l'utilisation de jQuery. Il y beaucoup de façon différentes de selectionner un element du DOM, mais cela ne veut pas dire qu'ils ont les même performances, vous pouvez selectionner en utilisants les classes, les IDs ou des méthodes comme `find()`, `children()`. 

Parmis toutes celle-ci, selectionner par ID est la plus rapide, car elle est basé sur une opération native du DOM :

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
