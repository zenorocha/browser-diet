---
order: 9
title: Seletores
---

Seletores são uma das questões mais importantes no uso do jQuery. Há muitas formas diferentes de selecionar um elemento no DOM, mas isso não quer dizer que eles tem a mesma perfomance, você pode selecionar um elemento usando classes, IDs ou métodos como `find()`, `children()`.

Entre todas as opções selecionar um ID é o mais rápido porque é baseado em operações nativas do DOM:

```js
$("#foo");
```

*[> Referências on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
