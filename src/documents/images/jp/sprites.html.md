---
order: 8
title: CSSスプライトを使用する
---

このテクニックは多様な画像を全て1つのファイルにグルーピングします。

<img id="img-sprite" src="http://browserdiet.com/en/assets/img/sprite-example.jpg" alt="CSS Sprite Example">

そしてCSSでそれらを配置します。

```css
.icon-foo {
  background-image: url('mySprite.png');
  background-position: -10px -10px;
}

.icon-bar {
  background-image: url('mySprite.png');
  background-position: -5px -5px;
}
```

結果的に、あなたは劇的にHTTPリクエストの数を減少させ、ページの他のリソースの滞在的な遅れを避けることになります。

*スプライト*を使うとき、あまりに多くの画像間の空白を残すことは避けましょう。ファイルサイズへの影響はありませんが、メモリーの消費量に影響があります。

ほぼ全ての開発者がスプライトについて知っているのに反して、このテクニックは広く使われていません&mdash;おそらくスプライトを生成するのに自動化ツールを使用していないからでしょう。このことに関してはあなたを助ける幾つかを強調してきました。


*> [有用なツール](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-use-css-sprites) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#use-css-sprites)*
