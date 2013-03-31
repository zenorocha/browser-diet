---
order: 25
title: 样式在上，脚本在下
---

当我们把样式放在`<head>`标签中时，浏览器在渲染页面时就能尽早的知道每个标签的样式，我们的用户就会感觉这个页面加载的很快。

```html
<head>
  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">
</head>
```

但是如果我们将样式放在页面的结尾，浏览器在渲染页面时就无法知道每个标签的样式，直到CSS被下载执行后。

<div class="img-right">
  <img id="geek-32" class="icos-geek" src="http://browserdiet.com/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

另一方面，对于Javascript来说，因为它在执行过程中会阻塞页面的渲染，所以我们要把它放在页面的结尾。

```html
<body>
  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>
</body>
```

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#styles-up-top-scripts-down-bottom)*