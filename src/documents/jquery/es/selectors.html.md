---
order: 11
title: Selectores
---

Los selectores son uno de las mayores incidencias en el uso de jQuery. Hay muchas formas distintas de seleccionar un elemento desde el DOM, pero eso no significa que siempre tengan el mismo rendimiento. Puedes seleccionar un elemento usando clases, IDs o métodos como `find()` o `children()`.

Entre todos ellos, seleccionar una ID es el más rápido, porque la selección se basa en una operación nativa del DOM:

```js
$("#foo");
```

*[> Resultados en JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*