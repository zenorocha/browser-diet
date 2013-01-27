---
title: Não use seletor universal
slug: seletor-universal
order: 8
---

Evite usar `seletor universal`, assim você esta obrigando o browser a buscar TODOS os elementos em seu HTMl, e depois aplicar a regra para cada elemento.

```CSS
/* MUITO, MUITO RUIM PARA PERFORMANCE */
* {
  margin: 0;
  padding: 0;
  border: none;
  text-deocartion: none;
  outline: 0;
}
```

Você esta dizendo para o browser pegar todos elementos HTML e aplicar essa regra acima, mas depois você aplicará novos atributos a esses elementos, e que muitos deles não aceita tal atributo que você setou no <strong>*</strong>.

Recomendamos que use um CSS Reset, ou se melhor crie o seu proprio, mas tem 2 que são muitos bons para usar em seus projetos, são eles, [Yahoo Reset](http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css) e do [Eric Meyer](http://meyerweb.com/eric/tools/css/reset/).