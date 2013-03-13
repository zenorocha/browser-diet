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

This will shave bytes from the filesize, and as a result, your users will enjoy faster downloads, parsing and execution.

*> Useful tools: [HTML Compressor](http://code.google.com/p/htmlcompressor/).*
