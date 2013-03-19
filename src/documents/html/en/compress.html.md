---
order: 24
title: Minify your HTML
---

To maintain readable code, it's a good idea to write comments and use indentation.

```html
<p>Lorem ipsum dolor sit amet.</p>

<!-- My List -->
<ul>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</ul>
```

But to the browser, none of this actually matters. For this reason, it can be useful to minify your HTML with automated tools.

```html
<p>Lorem ipsum dolor sit amet.</p><ul><li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li></ul>
```
<div class="img-right">
  <img id="htmlcompression-table" src="http://browserdiet.com/img/htmlcompressor-table.jpg" alt="HTML Compression Sample Results">
</div>

This will shave bytes by removing extra whitespaces, comments and other unneeded characters without breaking the content structure.

As a result, your users will enjoy faster downloads, parsing and execution.

On the right side you see a few samples of [HTML Compressor](https://code.google.com/p/htmlcompressor/) results with default settings.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-html) / [References](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-html)*