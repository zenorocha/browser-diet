---
order: 21
title: Combine vários arquivos CSS em um só
---

Outra boa prática para organização e manutenção é separar seu estilo em diversos arquivos.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="http://browserdiet.com/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

Porém, é preciso realizar uma requisição HTTP para cada um dos arquivos e sabemos que o navegador não consegue lidar com muitos downloads paralelos.

```html
<link rel="stylesheet" href="main.css" media="all">
```

Logo, combine seu CSS. Quanto menor for o número de arquivos, menor será o número de requisições feitas e mais rápida sua página carregará.

Quer ter o melhor dos dois mundos? Automatize esse processo através de uma ferramenta de build.

*> [Ferramentas úteis](https://github.com/zenorocha/browser-diet/wiki/Tools#combining-multiple-css-files) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*