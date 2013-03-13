---
order: 14
title: Comprime tu script
---

Al igual que con el CSS, para mantener un código legible, es una buena idea escribir comentarios y usar indentación:

```js
BrowserDiet.app = function() {

  var foo = true;

  return {
    bar: function() {
      // do something
    }
  };

};
```

Pero para el navegador, eso no importa. Por eso, recuerda siempre comprimir tu JavaScript mediante herramientas automatizadas.

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

Esto quitará bytes al archivo, lo que resultará en un proceso de descarga, análisis y ejecución más rápido.

*> Herramientas útiles: [YUI Compressor](http://developer.yahoo.com/yui/compressor/), [Google Closure Compiler](http://code.google.com/closure/compiler/) y [UglifyJS](https://github.com/mishoo/UglifyJS).*
