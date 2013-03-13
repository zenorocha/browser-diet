---
order: 25
title: Styles up top, scripts down bottom
---

When we put stylesheets in the `<head>` we allow the page to render progressively, which gives the impression to our users that the page is loading quickly.

But if we put them at the end of the page, the page will be rendered without styles until the CSS is downloaded and applied.

On the other hand, when dealing with JavaScript, it's important to place scripts at the bottom of the page as they block rendering while they're being loaded and executed.

```html
<!doctype html>
<html>
<head>

  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">

</head>
<body>

  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>

</body>
</html>
```