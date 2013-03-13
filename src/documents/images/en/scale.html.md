---
order: 6
title: Don't scale images in markup
---

Always define the `width` and `height` attributes of an image. This will help avoid unnecessary repaints and reflows during rendering.

```html
<img width="100" height="100" src="logo.jpg" alt="Logo">
```

Knowing this, John Q. Developer who has a *700x700px* image decides to use this technique to display the image as *50x50px*.

What Mr. Developer doesn't realize is that dozens of unnecessary *kilobytes* will be sent over the wire.

Always keep in mind: just because you can define with width and height of an image in HTML doesn't mean you should do this to scale down large images.
