---
order: 13
title: Combina los archivos JS en uno sólo
---

Otra buena práctica para la organización y el mantenimiento de los scripts es separarlos en componentes modulares.

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="http://browserdiet.com/en/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

Sin embargo, una solicitud HTTP es necesaria para cada archivo (y sabemos que los navegadores sólo pueden descargar un número limitado de recursos en paralelo).

```html
<script src="main.js"></script>
```

Así que combina tu JavaScript. Tener un menor número de archivos resultará en un menor número de solicitudes y una página más rápida.

¿Quieres tener lo mejor de ambos mundos? Automatiza este proceso mediante una herramienta de compilación.

*> [Herramientas útiles](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combine-multiple-js-files-into-one) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
