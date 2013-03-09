---
order: 14
title: Comprima seu script
---

Assim como no CSS, para manter um código legível é bom escrever comentários e ter cuidado com indentação.

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

Só que para a máquina, nada disso importa. Por isso, lembre-se de comprimir seu JavaScript através de uma ferramenta automatizada.

```js
BrowserDiet.app=function(){return{bar:function(){}}};
```

Isso irá economizar muitos e muitos bytes, acelerando assim o download, análise e tempo de execução.

*> Ferramentas úteis: [YUI Compressor](http://developer.yahoo.com/yui/compressor/), [Google Closure Compiler](http://code.google.com/closure/compiler/) e [UglifyJS](https://github.com/mishoo/UglifyJS).*