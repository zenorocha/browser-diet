---
order: 9
title: Seletores
---

Seletores é uma das questões mais importantes no uso de jQuery. Há muitas maneiras diferentes de se selecionar um elemento no DOM, mas isso não significa que eles têm o mesmo desempenho, você pode selecionar um elemento usando classes, IDs ou métodos como `find()`, `children()`.

Entre todos eles, selecionar um ID é o mais rápido, porque é baseado em uma operação DOM nativa.

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
