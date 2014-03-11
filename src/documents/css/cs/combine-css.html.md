---
order: 21
title: Sloučení více CSS souborů
---

Další doporučovaná technika pro organizaci a správu stylů je rozdělení na modulární komponenty.

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="http://browserdiet.com/en/assets/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

Pak je ale třeba pro každý takový soubor jeden HTTP request (a je známo, že prohlížeče mohou stahovat jen omezený počet zdrojů souběžně).

```html
<link rel="stylesheet" href="main.css" media="all">
```

Tak tedy kombinujte svá CSS. Menší počet souborů vede k menšímu počtu requestů a rychlejšímu načtení stránky.

Chcete využít to nejlepší z obou světů? Automatizujte tento proces pomocí buidlovacích nástrojů.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
