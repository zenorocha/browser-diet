---
order: 9
title: Seletores
---

Seletores são uma das mais importantes questões no uso do jQuery. Há vários modos para selecionar um elemento do DOM, mas não significa que eles têm a mesma perfomance. Você pode selecionar um elemento usando classes, IDs ou métodos como `find()`, `children()`.

Entre todos eles, selecionar um ID é o modo mais rápido, porque é baseado em uma operação DOM nativa.

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
