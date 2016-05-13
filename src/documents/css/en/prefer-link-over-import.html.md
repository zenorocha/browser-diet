---
order: 18
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

When using HTTP/2, this delay on the second file download can bem mitigated using *server push*. It's possible to push the file referenced in `@import` right after the original response, avoiding the blocking behavior. Still, if you can, avoid `@import` for simplicity.

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#prefer--over-import)*