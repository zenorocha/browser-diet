---
order: 14
title: Minimalizujte vaše scripty
---

Stejně jako u CSS, k udržení čitelného kódu je dobré psát komentáře a odsazovat:

```js
BrowserDiet.app = function() {

  var foo = true;

  return {
    bar: function() {
      // do something
    }
  };

};
```

Ale prohlížeči na ničem z toho nezáleží. Proto vždy pamatujte na minimalizaci vašich JavaScriptů pomocí automatizovaných nástrojů.

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

Minimalizace ořeže přebytečné byty ze souboru, což vede k rychlejšímu stažení, parsování a spuštění.

*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-minify-your-script) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-script)*
