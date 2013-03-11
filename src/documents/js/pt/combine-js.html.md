---
order: 13
title: Combine vários arquivos JS em um só
---

Outra boa prática para organização e manutenção é separar seu script em diversos arquivos.

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

Porém, é preciso realizar uma requisição HTTP para cada um dos arquivos e sabemos que o navegador não consegue lidar com muitos downloads paralelos.

```html
<script src="main.js"></script>
```

Logo, combine seu JS. Quanto menor for o número de arquivos, menor será o número de requisições feitas e mais rápida sua página carregará.

Quer ter o melhor dos dois mundos? Automatize esse processo através de uma ferramenta de build.

*> Ferramentas úteis: [Grunt](http://gruntjs.com/).*
