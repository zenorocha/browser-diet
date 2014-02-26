---
order: 12
title: 常に最新のバージョンのjQueryを使用する
---

jQueryの開発チームは、より良い可読性、新たな機能と既存アルゴリズムの最適化などを通じて、常にライブラリの改善をもたらしています。

<div class="img-right">
  <img id="geek-36" class="icos-geek" src="http://browserdiet.com/en/assets/img/36.png" alt="Geek #36" width="144" height="275" />
</div>

このため、以下URLからコピーして利用できる最新バージョンのjQueryを常に利用しましょう。:

```html
http://code.jquery.com/jquery-latest.js
```

ですが、テストをする機会を持てずに新しいバージョンが自動的にあなたのサイトに配信される問題が生じるので、_決して_`<script>`タグでこのURLを参照してはいけません。 代わりに、あなたが特に必要としているjQueryの最新バージョンにリンクしましょう。

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
```

賢明な[Barney Stinson](/img/new-is-always-better.gif)が言ったように、*"新しいものは常に優れている"* :P。

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#always-use-the-latest-version-of-jquery)*
