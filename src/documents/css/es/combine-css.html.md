---
order: 21
title: Combinando múltiples archivos CSS
---

Otra buena práctica para la organización y mantenimiento de tus estilos es separarlos en componentes modulares.

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

*> Recursos útiles: [Grunt](http://gruntjs.com/).*
