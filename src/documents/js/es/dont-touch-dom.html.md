---
order: 13
title: Evita manipulaciones del DOM innecesarias
---

Cada vez que tocas el DOM sin necesidad muere un panda.

No, ahora en serio, navegar por los elementos del DOM es costoso. Aunque los motores de JavaScript son cada vez más potentes y rápidos, siempre es preferible optimizar al máximo las consultas al DOM tree.

Una de las alternativas más simples a adoptar es guardar un elemento en una variable cuando tiene que ser usado más de una vez, por lo que sólo se consulta al DOM una vez.

```js
// fatal!
for (var i = 0; i < 100; i++) {
  document.getElementById("mi-elemento").innerHTML += "<span>" + i + "</span>";
}
```


```js
// mucho mejor :)
var miLista = "";

for (var i = 0; i < 100; i++) {
  miLista += "<span>" + i + "</span>";
}

document.getElementById("mi-elemento").innerHTML = miLista;
```

*> [Resultados en JSPerf](http://jsperf.com/browser-diet-dom-manipulation/11)*
