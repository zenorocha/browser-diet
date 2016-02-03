---
order: 9
title: Selectors
---

Los selectores son uno de los problemas más importantes en el uso de jQuery. Hay muchas maneras diferentes de seleccionar un elemento del DOM, pero eso no quiere decir que todas ellas tengan el mismo rendimiento, tu puedes seleccionar un elemento usando clases, IDs o métodos como `find()` o `children()`. 

Entre todos ellos, seleccionar un ID es lo más rápido, porque está basado en un operación nativa del DOM:

```js
$("#foo");
```

*[> Resultados en JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
