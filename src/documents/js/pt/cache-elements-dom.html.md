---
order: 17
title: Guarde elementos da DOM já visitados
---

Navegar por elementos da DOM é custoso. Apesar de as engines JavaScript serem cada vez mais poderosas e rápidas, prefira sempre otimizar ao máximo as consultas na árvore da DOM.

Uma das alternativas mais simples de serem adotadas é, quando um elemento tiver que ser acessado mais de uma vez, guardá-lo em uma váriavel, assim você não precisará fazer mais do que uma consulta na DOM.

```js
var elemento = document.getElementById("meu-elemento");
var altura = elemento.clientHeight;
var largura = elemento.clientWidth;

elemento.className = "nova-classe";
```

*> [Resultados no JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*