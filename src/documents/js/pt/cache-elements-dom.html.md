---
order: 17
title: Guarde elementos do DOM já visitados
---

Navegar por elementos do DOM é custoso. Apesar de as engines JavaScript serem cada vez mais poderosas e rápidas, prefira sempre otimizar ao máximo as consultas na árvore do DOM.

Uma das alternativas mais simples de serem adotadas é, quando um elemento tiver que ser acessado mais de uma vez, guardá-lo em uma váriavel, assim você não precisará fazer mais do que uma consulta no DOM.

```js
var element = document.getElementById("my-element");
var height = element.clientHeight;
var width = element.clientWidth;

element.className = "new-class";
```

*> [Resultados no JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*