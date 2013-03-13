---
order: 15
title: Minimiza los Repaints y Reflows
---

Los repaints y reflows son causados cuando hay cualquier proceso de re-renderización del DOM cuando cierta propiedad o elemento cambia.

Los repaints se ejecutan cuando la apariencia de un elemento cambia sin cambiar su estructura. Nicole Sullivan describe esto como un cambio de estilos (como cambiar un `background-color`).

Reflows son los más costosos, ya que son causados por cambiar la estructura de la página, como cambiar el ancho de un elemento.

No hay duda de que tanto reflows como repaints deberían de ser evitados, así que en vez de hacer esto:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var myList = document.getElementById("myList");

for (var i = 0; i < 100; i++) {
  myList.innerHTML += "<span>" + i + "</span>";
}
```

Haz esto:

```js
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

De esa forma evitas manipular el DOM cada iteración del loop, haciendo esto sólo una vez.

*[> Resultados en JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*
