---
order: 15
title: Unikaj document.write
---

Używanie `document.write` powoduje, że strona jest zależna, a w konsekwencji ponownie ładowana.

Ta (zła) praktyka była zabroniona przez lata, choć dalej istnieją przypadki, kiedy jest wymagana, jak w synchronicznej obsłudze niektorych plików JavaScript.

Przykładowo, [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/) używa tej techniki do ładowania jQuery lokalnie, jeśli *CDN* Google nie odpowiada.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> Uwaga:** *`document.write` jest wykonywane w trakcie lub po zdarzeniu `window.onload` i zastępuje całą zawartość bieżącej strony.*

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```
Wynikiem ostatecznej strony będzie *bar*, a nie *foobar*, jakbyśmy oczekiwali. To samo dzieje się przy wywołaniu po zdarzeniu `window.onload`.

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
Wynik będzie taki sam, jak w poprzednim przykładzie, jeśli funkcja zaplanowana przez `setTimeout` zostanie wykonana po zdarzeniu `window.onload`.

*> [Demo](http://jsbin.com/aqavin/2/quiet) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#avoid-documentwrite)*
