---
order: 15
title: Evita document.write
---

El uso de `document.write` hace que la página dependa de su valor de retorno para cargar completamente.

Esta (mala) práctica ha sido evitada por los desarrolladores, pero aún hay casos donde es necesaria, como un fallback para algún archivo Javascript.

[HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/), por ejemplo, usa esta técnica para cargar jQuery localmente si la *CDN* de Google no responde.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> Atención:** *`document.write` ejecutado posteriormente o durante el evento `window.onload` reemplaza todo el contenido de la página actual.*

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```

El resultado de la página final será sólo *bar* y no *foobar* como se esperaría. Lo mismo ocurre cuando se ejecuta tras el evento `window.onload`.

```html
<span>foo</span>
<script>
  setTimeout(function() {
    document.write('<span>bar</span>');
  }, 1000);
  window.onload = function() {
    // ...
  };
</script>
```
El resultado será el mismo que el ejemplo anterior si la función programada por `setTimeout` es ejecutada tras `window.onload`.

*> [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#avoid-documentwrite)*