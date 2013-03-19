---
order: 24
title: Comprima seu HTML
---

Para manter um código legível é bom escrever comentários e ter cuidado com indentação.

```html
<p>Lorem ipsum dolor sit amet.</p>

<!-- My List -->
<ul>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</ul>
```

Só que para a máquina, nada disso importa. Por isso, lembre-se de comprimir seu HTML através de uma ferramenta automatizada.

```html
<p>Lorem ipsum dolor sit amet.</p><ul><li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li></ul>
```

<div class="img-right">
  <img id="htmlcompression-table" src="http://browserdiet.com/img/htmlcompressor-table.jpg" alt="HTML Compression Sample Results">
</div>

Isso irá economizar muitos e muitos byte ao remover espaços extra, comentários e outros caracteres desnecessários sem quebrar a estrutura do conteúdo.

Como resultado, seus usuários ficarão felizes com a aceleração do download, análise e tempo de execução.

No lado direito você pode ver alguns exemplos de resultado do [HTML Compressor](https://code.google.com/p/htmlcompressor/) com as configurações padrão.

*> Ferramentas úteis: [HTML Minifier](http://kangax.github.com/html-minifier/), [Django HTMLmin](https://github.com/cobrateam/django-htmlmin) e [HTML Compressor](http://code.google.com/p/htmlcompressor/).*

*HTML Minifier e HTML Compressor possuem plugins para [GruntJS](http://gruntjs.com/): [grunt-contrib-htmlmin](https://github.com/gruntjs/grunt-contrib-htmlmin) e [grunt-htmlcompressor](https://github.com/jney/grunt-htmlcompressor) respectivamente.*
