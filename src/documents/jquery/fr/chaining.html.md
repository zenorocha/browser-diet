---
ignored: true
order: 11
title: Tirez partie des méthodes chainé
---

Chainer veut dire que vous exécuté une méthode jQuery l'une aprés l'autre, sans avoir besoin de re-spécifier un selecteur. Quasiment toutes les méthodes jQuery autorise le chainage en retournant un objet jQuery.

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Les tests montre que ne pas chainer peut-être plus lent.

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

*[> Resultats sur JSPerf](http://jsperf.com/browser-diet-chaining)*
