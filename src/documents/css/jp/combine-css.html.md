---
order: 19
title: 複数のCSSファイルの結合
---

styleの構成とメンテナンスのための別のベストプラクティスは、モジュールの構成要素に分割することです。

<div class="img-right">
  <img id="geek-9" class="icos-geek" src="https://browserdiet.com/assets/img/9.png" alt="Geek #9" width="122" height="275" />
</div>

```html
<link rel="stylesheet" href="structure.css" media="all">
<link rel="stylesheet" href="banner.css" media="all">
<link rel="stylesheet" href="layout.css" media="all">
<link rel="stylesheet" href="component.css" media="all">
<link rel="stylesheet" href="plugin.css" media="all">
```

ですが、これらのファイル毎にHTTPリクエストが必要になります（そして私たちはブラウザが並列で限られた数のリソースのみをダウンロードすることを知っています）。

```html
<link rel="stylesheet" href="main.css" media="all">
```

なのでCSSを結合しましょう。少数のファイルで構成することはリクエストの数を少なくすることになり、より高速にページを読み込みます。

いずれの長所も欲しい場合はどうでしょう？ ビルドツールを使ってこのプロセスを自動化しましょう。


*> [有用なツール](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combining-multiple-css-files) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#combining-multiple-css-files)*
