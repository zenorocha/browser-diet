---
order: 19
title: Combinando múltiples archivos CSS
---

Otra buena práctica para la organización y mantenimiento de tus estilos es separarlos en componentes modulares.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="https://browserdiet.com/assets/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

Sin embargo, hace falta una solicitud HTTP para cada archivo (y sabemos que los navegadores sólo pueden descargar un número limitado de recursos en paralelo).

```html
<link rel="stylesheet" href="main.css" media="all">
```

Así que combina tu CSS. Tener un menor número de archivos resultará en un menor número de solicitudes y una página más rápida.

¿Quieres tener lo mejor de ambos mundos? Automatiza este proceso mediante una herramienta de compilación.

*> [Herramientas útiles](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
