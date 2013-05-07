---
order: 4
title: Habilite o cache dos arquivos
---

A melhor forma de otimizar os requests da sua página é não fazer requests na página, claro. E uma das maneiras mais úteis pra evitar requisições desnecessárias é deixar o navegador fazer cache dos arquivos. Por padrão, o navegador não faz cache das coisas, pra evitar ficar com arquivos desatualizados. Mas nós podemos indicar que determinado arquivo pode ser, sim, guardado em cache.

<div class="img-right">
  <img id="geek-15" class="icos-geek" src="http://browserdiet.com/img/15.png" alt="Geek #15" width="141" height="275" />
</div>

Essa configuração é feita no servidor e depende de qual você estiver usando. No Apache, por exemplo, você pode editar seu arquivo `.htaccess` e colocar a seguinte configuração:

```
ExpiresActive On
ExpiresByType image/gif "access plus 6 months"
ExpiresByType image/jpeg "access plus 6 months"
ExpiresByType image/png "access plus 6 months"
ExpiresByType text/css "access plus 6 months"
ExpiresByType text/javascript "access plus 6 months"
ExpiresByType application/javascript "access plus 6 months"
```

A configuração acima habilita um cache de 6 meses para imagens, CSS e JS — o recomendado é pelo menos 1 mês de cache. Outros servidores têm configurações parecidas.

Um ponto importante é que, uma vez cacheado, o browser não refaz mais o request. Se precisarmos alterar o conteúdo daquele arquivo, não conseguimos. Pra enviar uma versão nova, precisamos mudar o nome do arquivo. Uma forma recomendada é colocar algum tipo de código de versão ou timestamp no nome do arquivo. Por exemplo, ao invés de `home.js`, você pode usar `home-v1.js` e, quando precisar atualizar o arquivo, renomeia ele pra `home-v2.js`.

Outra forma comum é passar um parâmetro GET na URL: `home.js?v=1` e `home.js?v=2`. Esse método tem a desvantagem sobre a alternativa de renomear já que alguns proxies na internet ignoram parâmetros GET, mas aderem as regras de cache, o que lhe permite utilizá-las quando precisar.

*> [Referências](https://github.com/zenorocha/browser-diet/wiki/References#enable-smart-caching)*
