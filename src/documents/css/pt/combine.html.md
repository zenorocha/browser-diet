---
order: 3
title: Combine vários arquivos CSS em um só
---

Outra boa prática para organização e manutenção é separar seu estilo em diversos arquivos.

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

*> Ferramentas úteis: [Grunt](http://gruntjs.com/).*
