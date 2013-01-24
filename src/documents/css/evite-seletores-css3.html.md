---
title: Evite seletores CSS3
slug: seletores-css3
order: 4
---


A triste verdade sobre seletores CSS3 é que eles realmente não devem ser usados se você se preocupa com performance. Decorar a sua marcação com Classes e IDs, evitando todas as utilizações de seletores "descendentes, irmãos e filhos" vai realmente fazer uma página "performar" significativamente melhor em todos os navegadores.

```CSS
/* RUIM PARA PERFORMANCE */
:first-child, :nth-child, :first-letter, :only-child

/* BOM PARA PERFORMANCE */
.first-child, .first-letter, .last-child
```