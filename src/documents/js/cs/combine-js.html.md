---
order: 13
title: Slučujte více JS souborů do jediného
---

Další doporučovanou technikou pro organizaci a správu skriptů je rozdělení na modulární komponenty.

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="http://browserdiet.com/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

Pak je ale třeba pro každý takový soubor jeden HTTP request (a je známo, že prohlížeče mohou stahovat jen jen omezený počet zdrojů souběžně).

```html
<script src="main.js"></script>
```

Tak tedy kombinujte své JS. Menší počet souborů vede k menšímu počtu requestů a rychlejšímu načtení stránky.

Chcete využít to nejlepší z obou světů? Automatizujte tento proces pomocí buidlovacích nástrojů.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#combine-multiple-js-files-into-one) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*