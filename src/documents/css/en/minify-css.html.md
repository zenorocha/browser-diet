---
order: 24
title: Minify your stylesheets
---

To maintain readable code, it's a good idea to write comments and use indentation:

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Structure --- */

.intro {
  margin: 100px;
  position: relative;
}
```

But to the browser, none of this actually matters. For this reason, always remember to minify your CSS through automated tools.

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```

This will shave bytes from the filesize, which results in faster downloads, parsing and execution.

For those that use pre-processors like *Sass*, *Less* and *Stylus*, it's possible to configure your compiled CSS output to be minified.

*> Useful tools: [YUI Compressor](http://developer.yahoo.com/yui/compressor/), [CSS Minifier](http://www.cssminifier.com/), [cssmin.js](http://www.phpied.com/cssmin-js/) and [CSS Compressor](http://www.cssdrive.com/index.php/main/csscompressor/).*
