---
order: 9
title: No uses siempre jQuery...
---

A veces JavaScript a secas puede ser más fácil y rápido que jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Considera el siguiente html:

```html
<div id="text">Vamos a cambiar este texto!</div>
```

En lugar de hacer esto:

```js
$('#text').html('El texto está cambiado').css({
  backgroundColor: 'red',
  color: 'yellow'
});
```

Usa JavaScript a secas

```js
var text = document.getElementById('text');

text.innerHTML = 'El texto está cambiado';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

Es sencillo y mucho más rápido. Échale un vistazo a los resultados en JSPerf

*> [Resultados en JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*
