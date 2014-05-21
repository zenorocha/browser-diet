---
order: 15
title: Vyhněte se document.write
---

Použití `document.write` vytváří závislost na kompletním načtení stránky.

Tato (špatná) praktika je developery už roky zavrhována, přesto ale existují případy, kdy je potřebná. Třeba jako synchronní fallback pro některé JavaScriptové soubory.

[HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/), například používá tuto techniku pro načtení jQuery lokálně, pokud *CDN* od Google není dostupná.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> Pozor:** *`document.write` vykonaný během nebo po `window.onload` události nahradí kompletní obsah současné stránky.*

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```
Výsledek finální stránky bude pouze *bar* a nikoliv *foobar*, jak by se dalo čekat. To samé nastane, pokud se spustí po události `window.onload`.

```html
<span>foo</span>
<script>
  setTimeout(function() {
    document.write('<span>bar</span>');
  }, 1000);
  window.onload = function() {
    // ...
  };
</script>
```
Výsledek bude stejný jako předcházející příklad, pokud se funkce naplánovaná pomocí `setTimeout` vykoná po události `window.onload`.

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#avoid-documentwrite)*