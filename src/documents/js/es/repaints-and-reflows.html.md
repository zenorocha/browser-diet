---
order: 15
title: Minimiza los Repaints y Reflows
---

Los repaints y reflows son causados cuando hay cualquier proceso de re-renderización del DOM cuando cierta propiedad o elemento cambia.

Los repaints se ejecutan cuando la apariencia de un elemento cambia sin cambiar su estructura. Nicole Sullivan describe esto como un cambio de estilos (como cambiar un `background-color`).

Reflows son los más costosos, ya que son causados por cambiar la estructura de la página, como cambiar el ancho de un elemento.

No hay duda de que excesivos reflows y repaints deberían de ser evitados, así que en vez de hacer esto:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/en/assets/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

Haz esto:

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    anchoAConfigurar = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = anchoAConfigurar + 'px';
}
```

Cuando estableces `style.width`, el navegador necesita recalcular la estructura. Normalmente, cambiar los estilos de varios elementos sólo resulta en un reflow. Sin embargo, en el primer ejemplo, usamos continuamente `offsetWidth`, que fuerza al navegador a recalcular la estructura cada iteración.

Si necesitas leer datos sobre la estructura de la página, hazlo todo junto antes de establecer algún valor que cambie la estructora, tal y como en el segundo ejemplo

*> [Demo](http://jsbin.com/aqavin/2/quiet) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*
