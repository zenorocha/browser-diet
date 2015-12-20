---
order: 22
title: styleは上へ、scriptは下へ
---

スタイルシートを`<head>`の中に置くとき、ページを徐々にレンダリングすることが許容され、ユーザーに対してページが高速に読み込まれている印象を与えます。

```html
<head>
  <meta charset="UTF-8">
  <title>Browser Diet</title>

  <!-- CSS -->
  <link rel="stylesheet" href="style.css" media="all">
</head>
```

もしページの最後にそれらを置いた場合、ページはCSSがダウンロードされて適応されるまでの間スタイルなしでレンダリングされます。

<div class="img-right">
  <img id="geek-32" class="icos-geek" src="https://browserdiet.com/assets/img/32.png" alt="Geek #32" width="139" height="275" />
</div>

一方で、JavaScriptについては、scriptが読み込まれて実行される間にレンダリングをブロックするので、ページの最後に配置することが重要です。

```html
<body>
  <p>Lorem ipsum dolor sit amet.</p>

  <!-- JS -->
  <script src="script.js"></script>
</body>
```

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#styles-up-top-scripts-down-bottom)*
