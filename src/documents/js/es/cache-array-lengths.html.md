---
order: 17
title: Cachea las longitudes de las arrays
---

El loop es sin duda una de las partes más importantes relacionadas con el rendimiento de JavaScript. Trata de optimizar la lógica dentro de un loop para que cada interacción sea hecha eficientemente.

Una forma de hacer esto es almacenar el tamaño de la array sobre la que iteraremos, para que no tenga que ser recalculada cada iteración.

```js
var arr = new Array(1000),
    len, i;

for (i = 0; i < arr.length; i++) {
  // Mal - arr.length necesita ser recalculada 1000 veces
}

for (i = 0, len = arr.length; i < len; i++) {
  // Bien - arr.length es calculada sólo una vez y entonces es almacenada
}
```

*[> Resultados en JSPerf](http://jsperf.com/browser-diet-cache-array-length/10/)*

**> Nota:** *Pese a que los navegadores modernos automáticamente optimizan este proceso, sigue siendo una buena práctica para adaptarse a los navegadores antiguos que aún perduran.*

En iteraciones sobre colecciones en HTML como una lista de nodos (`NodeList`) generada por ejemplo por `document.getElementsByTagName('a')` esto es particularmente crítuco. Estas colecciones son consideradas *vivas*, es decir, son automáticamente actualizadas cuando hay cambios en el elemento que les pertenece.

```js
var links = document.getElementsByTagName('a'),
    len, i;

for (i = 0; i < links.length; i++) {
  // Mal - cada iteración la lista será recalculada para ver si hubo algún cambio
}

for (i = 0, len = links.length; i < len; i++) {
  // Bien - el tamaño de la lista es obtenido y almacenado, y entonces comparado cada iteración
}

// Terrible: ejemplo de loop infinito
for (i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // cada iteración la lista de links aumenta, haciendo quel loop nunca se termine
  // esto no pasaría si el tamaño fuera almacenado y usado como una condición
}
```
