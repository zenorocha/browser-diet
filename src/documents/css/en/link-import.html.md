---
order: 4
title: Prefer <link> over @import
---

There's two ways to include an external stylesheet in your page: either via the `<link>` tag:

```html
<link rel="stylesheet" href="style.css">
```

Or through the `@import` directive (inside an external stylesheet or in an inline `<style>` tag):

```css
@import url('style.css');
```

When you use the second option through an external stylesheet, the browser is incapable of downloading the asset in parallel, which can block the download of other assets.
