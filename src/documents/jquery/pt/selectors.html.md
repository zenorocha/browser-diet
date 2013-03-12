---
order: 12
title: Seletores
---

De fato seletores é um dos assuntos mais importantes na utilização do jQuery. Há várias formas de selecionar um elemento no DOM, porém isso não quer dizer que elas tem a mesma performance, você pode buscar um elemento através de classe, id ou usar os métodos `find()`, `children()`.

De todas elas, buscar pelo ID é mais rápido, pois é baseado em operações nativas do DOM:

```js
$("#foo");
```

*[> Resultado no JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*