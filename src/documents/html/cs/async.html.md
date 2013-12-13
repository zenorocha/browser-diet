---
order: 23
title: Zkuste async
---

Abychom vysvětlili, jak je tento atribut užitečný pro lepší výkon, je dobré pochopit, co se děje, když jej nepoužijeme.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="http://browserdiet.com/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

V tomto případě musí stránka čekat, až je skript plně stažen, naparsován a spuštěn, před tím, než může být zpracováno a vykresleno další HTML. To může značně prodloužit čas načtení vaší stránky. Občas je takové chování požadováno, obecně však ne.

``` html
<script async src="example.js"></script>
```

Skript je stažen asynchronně, zatímco pokračuje parsování zbytku stránky. Je garantováno, že se skript spustí hned, jak bude stažen. Mějte na mysli, že v případě více asynchronních skriptů není nijak zaručeno, v jakém pořadí budou spuštěny.

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#try-out-async)*