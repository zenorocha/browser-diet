---
order: 4
title: experimente o async & defer
---

Para explicar como esses atributos são úteis para melhorar a performance, é melhor entender o que acontece quando não utilizamos eles.

<div class="img-left">
  <img id="geek-20" src="http://assets.browserdiet.com/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

Dessa forma, a página aguarda o script terminar de carregar antes de continuar sua renderização e sua execução é feita imediatamente após. Isso pode aumentar significativamente o tempo de carregamento da página. Algumas vezes esse comportamento é desejado, outras vezes não.

``` html
<script async src="example.js"></script>
```

O download do script é feito de forma assíncrona enquanto o processo de renderização da página continua a ser feito. O script é executado depois que o download estiver completo.

``` html
<script defer src="example.js"></script>
```

Assim como o exemplo acima, o download do script é feito de forma assíncrona. Mas sua execução se dá apenas quando todo o processo de renderização estiver concluído.