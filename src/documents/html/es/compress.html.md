---
order: 24
title: Comprime tu HTML
---

Para mantener un código legible, es una buena idea escribir comentarios y usar indentación:

```html
<p>Lorem ipsum dolor sit amet.</p>

<!-- My List -->
<ul>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</ul>
```

Pero para el navegador, eso no importa. Por eso, recuerda siempre comprimir tu HTML mediante herramientas automatizadas.

```html
<p>Lorem ipsum dolor sit amet.</p><ul><li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li></ul>
```
<div class="img-right">
  <img id="htmlcompression-table" src="http://browserdiet.com/img/htmlcompressor-table.jpg" alt="HTML Compression Sample Results">
</div>


Esto quitará bytes al archivo al borrar espacios en blanco, comentarios, y otros caracteres innecesarios sin romper la estructura del contenido. 

Como resultado, tus usuarios disfrutarán de un proceso de descarga, análisis y ejecución más rápido.

A la derecha verás algunos ejemplos de los resultados de [HTML Compressor](https://code.google.com/p/htmlcompressor/) con la configuración por defecto.

*> Herramientas útiles: [HTML Minifier](http://kangax.github.com/html-minifier/), [Django HTMLmin](https://github.com/cobrateam/django-htmlmin) y [HTML Compressor](http://code.google.com/p/htmlcompressor/).*

*HTML Minifier y HTML Compressor tiene plugins para [GruntJS](http://gruntjs.com/): [grunt-contrib-htmlmin](https://github.com/gruntjs/grunt-contrib-htmlmin) y [grunt-htmlcompressor](https://github.com/jney/grunt-htmlcompressor) respectivamente.*
