---
title: async & defer
slug: async-e-defer
order: 1
---

São atributos que devem ser usados em conjunto com a tag `script`

Para explicar como esses atributos são úteis para melhorar a performance, é melhor entender o que acontece quando não utilizamos eles.

``` html
  <script src="exemplo.js"></script>
```

Dessa forma, a página aguarda o script terminar de carregar antes de continuar sua renderização e sua execução é feita imediatamente após. Isso pode aumentar significativamente o tempo de carregamento da página.  Algumas vezes esse comportamento é desejado, outras vezes não.

``` html
<script async src="exemplo.js"></script>
```

O download do script é feito de forma assíncrona enquanto o processo de renderização da página continua a ser feito. O script é executado depois que o download estiver completo.

``` html
<script defer src="exemplo.js"></script>
```

Assim como o exemplo acima, o download do script é feito de forma assíncrona. Mas sua execução se dá apenas quando todo o processo de renderização estiver concluído.