---
order: 20
title: Think about (and rethink) your Key Selector
---

The *Key selector* is the key to your CSS expression. In general, developers don't focus on this because they don't know exactly how it works.

```css
header nav ul li a {}
```

Take a look at the above expression. What happens is the browser begins evaluating the CSS expression beginning from the right&mdash;in this case the *key selector* is `a`. This particular expression is asking the browser to do a lot of work. First it finds all the `a` elements in the HTML, after all the `li` elements that contain an `a` element, and so on until it finds `header nav ul li a`.

```css
header nav ul li * { /* Bad */ }
header nav ul li a { /* Worse */ }
nav a { /* Bad */ }
nav a.nav-link { /* Better */ }
nav .nav-link { /* Better */ }
.nav-link { /* Better */ }
```
