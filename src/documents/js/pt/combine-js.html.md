---
order: 11
title: Combine vários arquivos JS em um só
---

Outra boa prática para organização e manutenção é separar seu script em diversos arquivos.

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="https://browserdiet.com/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

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

É bom ter em mente também que o custo dos requests cai bastante no novo HTTP/2. Talvez não seja necessário concatenar tanto os arquivos JS. Não quer dizer que usar centenas de arquivos seja uma boa ideia, afinal os requests ainda têm um custo. Mas vale a pena medir se ter alguns poucos arquivos separados já não é suficiente, ao invés de concatenar tudo em um só. As vantagens são melhor modularidade, independência de cache e simplificar o build. E se você carregá-los assincronamente, o código é executado mais rapidamente, conforme as respostas forem chegando.

*> [Ferramentas úteis](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combine-multiple-js-files-into-one) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
