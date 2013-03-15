---
order: 7
title: Data URI
---

This technique is an alternative to using CSS sprites.

A [Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme) is a way to inline the content of the URI you would normally point to. In this example we are using it to inline the content of the CSS background images in order to reduce the number of HTTP requests required to load a page.

Before:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

After:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

All browsers from IE8 and above support this base64-encoded technique.

Both this method and the CSS spriting method require build time tools to be maintainable. This method has the advantage of not requiring manual spriting placement as it keeps your images in individual files during development.

However has the disadvantage of growing the size of your HTML/CSS considerably if you have large images. It is not recommended to use this method if you aren't gzipping your HTML/CSS during HTTP requests as the size overhead might negate the speed gains you get from minimizing the number of HTTP requests.

*> Useful tools: [mod_pagespeed](https://developers.google.com/speed/docs/mod_pagespeed/filter-image-optimize), [data: URI Generator](http://dopiaza.org/tools/datauri/index.php), and [data-uri.js](https://github.com/heldr/datauri).*