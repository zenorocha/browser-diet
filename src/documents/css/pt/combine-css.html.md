---
order: 19
title: Combine vários arquivos CSS em um só
---

Outra boa prática para organização e manutenção é separar seu estilo em diversos arquivos.

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

Porém, é preciso realizar uma requisição HTTP para cada um dos arquivos e sabemos que o navegador não consegue lidar com muitos downloads paralelos.

```html
<link rel="stylesheet" href="main.css" media="all">
```

Logo, combine seu CSS. Quanto menor for o número de arquivos, menor será o número de requisições feitas e mais rápida sua página carregará.

Quer ter o melhor dos dois mundos? Automatize esse processo através de uma ferramenta de build.

É bom ter em mente também que o custo dos requests cai bastante no novo HTTP/2. Talvez não seja necessário concatenar tanto os arquivos CSS. Não quer dizer que usar centenas de arquivos seja uma boa ideia, afinal os requests ainda têm um custo. Mas vale a pena medir se ter alguns poucos arquivos separados já não é suficiente, ao invés de concatenar tudo em um só. As vantagens são melhor modularidade, independência de cache e simplificar o build.

*> [Ferramentas úteis](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
