---
order: 9
title: Selectores
---

Los selectores son uno de los puntos más importantes en el uso de jQuery. Hay muchas formas diferentes de seleccionar un elemento del DOM, pero esto no significa que tengan el mismo rendimiento, puedes seleccionar un elemento usando clases, IDs o métodos como `find()`, `children()`.
Entre todos ellos, seleccionar un ID es el más rápido, porque está basado en una operación nativa del DOM:

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
