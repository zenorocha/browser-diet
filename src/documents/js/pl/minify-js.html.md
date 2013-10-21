---
order: 13
title: Minimalizuj kod JS
---

Podobnie jak w przypadku CSS, zarządzanie czytelnym kodem jest łatwiejsze, gdy w znajują się w nim komentarze i wcięcia:

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

Jednak dla przeglądarki jest całkowicie bez znaczenia. Z tego ważne jest minimalizowanie kodu JavaScript przy pomocy automatycznych narzędzi.

```js
BrowserDiet.app=function(){var a=!0;return{bar:function(){}}}
```

Takie golenie rozmiaru pliku, pozwoli w rezultacie na szybsze pobieranie, analizowanie i uruchamianie strony.

*> [Przydatne narzędzia](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-script) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-script)*
