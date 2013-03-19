---
order: 22
title: Comprime tus hojas de estilo
---

Para mantener un código legible, es una buena idea escribir comentarios y usar indentación:
```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Estructura --- */

.intro {
  margin: 100px;
  position: relative;
}
```

Pero para el navegador, eso no importa. Por eso, recuerda siempre comprimir tu CSS mediante herramientas automatizadas.

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```

Esto quitará bytes al archivo, lo que resultará en un proceso de descarga, análisis y ejecución más rápido.

Para los que usan preprocesadores como [Sass](http://sass-lang.com/), [Less](http://lesscss.org/), y [Stylus](http://learnboost.github.com/stylus/), es posible configurarlos para que la salida sea comprimida.

*> [Herramientas útiles](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-stylesheets) / [Referencias](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-stylesheets)*