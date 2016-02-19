---
order: 9
title: Selectors
---

* > This tip needs to be translated. [Contribute.](https://github.com/zenorocha/browser-diet/blob/master/src/documents/jquery/es/selectors.html.md)

Los selectores son unos de los asuntos mas importantes en el uso de jquery. Hay muchas vias de seleccionar un elemento del DOM, pero no significa que todas tengan el mismo comportamiento, puedes seleccionar un elemento usando clases, IDs or methodos(methods) como 'find()', 'children()'.

Entre todos ellos, seleccionar un ID es la via mas rapida porque esta basada en una operacion nativa del DOM.

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
