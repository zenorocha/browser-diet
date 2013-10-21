---
order: 6
title: Não escale imagens direto no código
---

Defina sempre o `width` e o `height` de uma imagem, isso irá reduzir o tempo de renderização evitando repaints e reflows desnecessários.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

Conhecendo esses atributos do HTML, Joãozinho que tem uma imagem de *700x700px* resolve exibi-la com um tamanho de *50x50px*.

O que o malandro Joãozinho não sabe é que uma dezena de *KBs* serão trafegados a mais pela rede, desnecessariamente.

Por isso, lembre-se: só porque você pode definir a altura e largura de uma imagem no HTML, não quer dizer que deve redimensionar imagens maiores do que precisa.

*> [Referências](https://github.com/zenorocha/browser-diet/wiki/References#dont-rescale-images-in-markup)*
