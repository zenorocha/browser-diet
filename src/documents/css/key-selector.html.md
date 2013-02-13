---
title: Pense e repense os Key Selector
slug: key-selector
order: 7
---

Key selector é o seletor chave de sua expressão CSS. Na maioria das vezes, os desenvolvedores não ligam para ele. Como funciona `key selector`? Veja exemplo abaixo.

```CSS
header nav ul li a { /* Muito Ruim para Performance */ }
```

O que acontece é que o browser começa a renderizar sua expressão CSS pela direita, ou seja seu `key selector` e o `a`. E isso exige muito do browser, pois primeiro ele busca todos os elemento `a` em seu HTML, depois todos `li a` e assim até chegar em `header nav ul li a`

Tomando a seguinte situação podemos exemplificar isso para que seja mais efetivo e não seja performático para o browser.

```CSS
header nav ul li a { /* Muito Ruim */ }
nav a { /* Ruim */ }
nav a.nav-link { /* Bom */ }
nav .nav-link { /* Ótimo */ }
.nav-link { /* Excelente */ }
```