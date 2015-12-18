---
order: 22
title: Styles up top, scripts down bottom
---

When we put stylesheets in the `<head>` we allow the page to render progressively, which gives the impression to our users that the page is loading quickly.

```html
<head>
  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">
</head>
```

But if we put them at the end of the page, the page will be rendered without styles until the CSS is downloaded and applied.

<div class="img-right">
  <img id="geek-32" class="icos-geek" src="https://browserdiet.com/en/assets/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

On the other hand, when dealing with JavaScript, it's important to place scripts at the bottom of the page as they block rendering while they're being loaded and executed.

```html
<body>
  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>
</body>
```

*> [References](https://github.com/zenorocha/browser-diet/wiki/References#styles-up-top-scripts-down-bottom)*
