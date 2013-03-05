---
order: 1
title: Comprima sua folha de estilo
---

Para manter um código legível é bom escrever comentários e ter cuidado com indentação.

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Structure --- */

.intro {
  margin: 100px;
  position: relative;
}
```

Só que para a máquina, nada disso importa. Por isso, lembre-se de comprimir seu CSS através de uma ferramenta automatizada.

```css
.center{width:960px;margin:0 auto;}.intro{margin:100px;position:relative;}
```

Isso irá economizar muitos e muitos bytes, acelerando assim o download, análise e tempo de execução.

Para aqueles que usam pré-processadores como *Sass*, *Less* e *Stylus*, é possível configurar a compilação para gerar o código já minificado.

*> Ferramentas úteis: [YUI Compressor](http://developer.yahoo.com/yui/compressor/), [CSS Minifier](http://www.cssminifier.com/) e [cssmin.js](http://www.phpied.com/cssmin-js/).*