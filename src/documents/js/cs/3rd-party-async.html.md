---
order: 17
title: Nahrávejte obsah třetích stran asynchronně
---

Kdo nikdy nenahrával obsah třetích stran k vložení Youtube videa nebo like/tweet tlačítka?

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="http://browserdiet.com/en/assets/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

Velký problém je, že tyto kódy nejsou vždy nahrávány efektivně. Ať už z důvodu špatného připojení uživatele nebo serveru, kde jsou hostovány. Nebo tato služba může být dočasně mimo provoz, blokována uživatelem nebo firemním firewallem.

V případě takových problémů může dojít k výrazným komplikacím při nahrávání stránky, případně úplnému zablokování načítání. Tyto skripty by proto měly vždy být načítány asynchronně (nebo používejte *[Friendly iFrames](https://www.facebook.com/note.php?note_id=10151176218703920)*).

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Alternativně, pokud chcete nahrávat více widgetů třetích stran, můžete je nahrát asynchronně pomocí [tohoto skriptu](https://gist.github.com/zenorocha/5161860).

*> [Video](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*
