---
order: 14
title: Cachea los elementos de la DOM ya ha visitados
---

Navegar por los elementos DOM es costoso. Aunque los motores de JavaScript son cada vez más potentes y rápidos, siempre prefieren optimizar las consultas máximos en el árbol DOM.

Una de las más simples alternativas se adoptará, cuando un elemento tiene que ser visitada más de una vez, guardarlo en una variable, por lo que no necesita más de una consulta en el DOM.

```js
var element = document.getElementById("my-element");
var height = element.clientHeight;
var width = element.clientWidth;

element.className = "new-class";
```

*> [Resultados en JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*
