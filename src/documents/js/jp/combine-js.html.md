---
order: 11
title: 複数のJSファイルを1つに結合する
---

scriptの構成とメンテナンスのための別のベストプラクティスは、モジュールの構成要素に分割することです。

<div class="img-right">
  <img id="geek-47" class="icos-geek" src="https://browserdiet.com/assets/img/47.png" alt="Geek #47" width="174" height="275" />
</div>

```html
<script src="navbar.js"></script>
<script src="component.js"></script>
<script src="page.js"></script>
<script src="framework.js"></script>
<script src="plugin.js"></script>
```

ですが、これらのファイル毎にHTTPリクエストが必要になります（そして私たちはブラウザが並列で限られた数のリソースのみをダウンロードすることを知っています）。

```html
<script src="main.js"></script>
```

なのでJSを結合しましょう。少数のファイルで構成することはリクエスト数を少なくすることになり、より高速にページを読み込みます。

いずれの長所も欲しい場合ばどうでしょう？ ビルドツールを使ってこのプロセスを自動化しましょう。

*> [有用なツール](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-combine-multiple-js-files-into-one) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#combine-multiple-js-files-into-one)*
