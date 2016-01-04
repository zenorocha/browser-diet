---
order: 9
title: Seletores
---

Seletores são uma das questões mais importantes no uso do jQuery. Existem várias diferentes formas de selecionar um elemento no DOM, mas isso não significa que elas terão a mesma performance, você pode selecionar um elemento utilizando classes, IDs ou métodos como 'find()', 'children()'.

Entre todas as alternativas, selecionar um ID é a mais rápida, porque é baseada em uma operação nativa do DOM:

```js
$("#foo");
```

*[> Resultado no JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
