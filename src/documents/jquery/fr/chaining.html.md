---
ignored: true
order: 11
title: Tirez parti des méthodes chainées
---

Chainer veut dire que vous exécutez une méthode jQuery l'une aprés l'autre, sans avoir besoin de re-spécifier un selecteur. Quasiment toutes les méthodes jQuery autorisent le chainage en retournant un objet jQuery.

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Les tests montrent que ne pas chainer peut-être plus lent.

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

*[> Resultats sur JSPerf](http://jsperf.com/browser-diet-chaining)*
