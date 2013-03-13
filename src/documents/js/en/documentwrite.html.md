---
order: 16
title: Avoid document.write
---

The use of `document.write` causes a dependency to the page on its return to be fully loaded.

This (bad) practice has been abolished for years by developers, but there are still cases where its use is still required, as in synchronous fallback for some JavaScript file.

[HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/), for example, uses this technique to load jQuery locally if Google's *CDN* doesn't respond.

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
```
**> Attention:** *`document.write` performed during or after `window.onload` event replaces the entire content of the current page.*

```html
<span>foo</span>
<script>
  window.onload = function() {
    document.write('<span>bar</span>');
  };
</script>
```
The result of the final page will be only *bar* and not *foobar* as expected. The same occurs when it runs after `window.onload` event.

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
The result will be the same as the previous example if the function scheduled by `setTimeout` is executed after `window.onload` event.
