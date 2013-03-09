---
order: 16
title: Avoid document.write
---

O uso do `document.write` faz com que a página fique na dependência do seu retorno para ser completamente carregada.

Essa (má) prática já foi abolida há anos pelos desenvolvedores, mas ainda existem casos onde seu uso ainda é necessário, como no fallback síncrono de algum arquivo JavaScript.

O [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/), por exemplo, faz o uso desta técnica para carregar o jQuery localmente, caso a *CDN* do Google não responda.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> Atenção:** `document.write` executado durante ou após o evento `window.onload` substitui todo o conteúdo da página atual. Exemplo:

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```
O resultado da página final será somente *bar* e não *foobar* como esperado. O mesmo ocorre quando executado após o evento `window.onload`. Exemplo:

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
O resultado será o mesmo do exemplo anterior caso a função agendada pelo `setTimeout` seja executada após evento `window.onload`.
