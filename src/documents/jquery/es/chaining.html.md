---
ignored: true
order: 11
title: Toma ventaja del encadenamiento de los métodos
---

Encadenar métodos significa que puedes ejecutar un método de jQuery justo después de otro, sin necesidad de re-especificar un selector. Prácticamente todos los métodos de jQuery permiten encadentar métodos, retornando un objeto jQuery.

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Los test demuestrant que no encadenar es más lento.

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

*[> Resultados en JSPerf](http://jsperf.com/browser-diet-chaining)*
