---
order: 2
title: Seletores
---

De fato seletores é um dos assuntos mais importantes na utilização do jQuery. Há várias formas de selecionar um elemento no DOM, porém isso não quer dizer que elas tem a mesma performance, você pode buscar um elemento através de classe, id ou usar os métodos `find()`, `children()`.

De todas elas, IDs e elementos são mais rápidos, pois são baseados em operações nativas do DOM:

```js
  $("#foo");
```

*[> Resultado no JSPerf](http://jsperf.com/jquery-each-vs-for-loop/194)*