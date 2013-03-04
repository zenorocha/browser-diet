---
title: Não use seletor universal
slug: seletor-universal
order: 1
---

Evite usar seletor universal, assim você está obrigando o navegador a buscar **todos** os elementos em seu HTML, e depois aplicar determinada regra para cada elemento.

<div class="img-right">
  <img src="http://assets.browserdiet.com/img/4.png" alt="Ilustração - Startrek" width="162" height="275" />
</div>

```CSS
* {
  margin: 0;
  padding: 0;
  border: none;
  text-deocartion: none;
  outline: 0;
}
```

Inclusive muitos elementos podem não aceitar o atributo que você está tentando definir.

Por isso, recomendamos que você use um CSS Reset, ou até crie o seu próprio. Existem alguns muito famosos como um da [Yahoo!](http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css) e outro do [Eric Meyer](http://meyerweb.com/eric/tools/css/reset/).