---
order: 5
title: Pense e repense seu Key Selector
---

*Key selector* é o seletor chave da sua expressão CSS. Na maioria das vezes, os desenvolvedores não ligam para ele por não saberem exatamente como funciona.

```css
header nav ul li a {}
```

Repare na expressão acima. O que acontece é que o navegador começa a renderizar sua expressão CSS pela direita, ou seja seu *key selector* é `a`. Isso exige muito do browser, pois primeiro ele busca todos os elementos `a` em seu HTML, depois todos `li a` e assim por diante até chegar em `header nav ul li a`.

```css
header nav ul li * { /* Péssimo */ }
header nav ul li a { /* Muito Ruim */ }
nav a { /* Ruim */ }
nav a.nav-link { /* Bom */ }
nav .nav-link { /* Ótimo */ }
.nav-link { /* Excelente */ }
```


