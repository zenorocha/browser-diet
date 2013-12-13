---
order: 12
title: Vždy používejte nejnovější verzi jQuery
---

Vývojáři jádra JQuery se stále snaží vylepšovat knihovnu, ať už jde o lepší čitelnost kódu, nové funkce nebo optimalizace stávajících algoritmů.

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

Proto vždy používejte nejnovější verzi JQuery, která je vždy dostupná zde, pokud si ji chcete uložit k sobě do souboru:

```html
http://code.jquery.com/jquery-latest.js
```

_Nikdy_ ji ale z této URL neodkazujte v tagu `<script>`, můžete si tak zadělat na problémy, protože je vždy poskytována nejnovější verze
dříve, než máte šanci otestovat ji. Místo toho raději linkujte poslední verzi, kterou máte ozkoušenou.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

Tak, jak říká moudrý [Barney Stinson](/img/new-is-always-better.gif), *"Nové je vždy lepší"* :P

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#always-use-the-latest-version-of-jquery)*