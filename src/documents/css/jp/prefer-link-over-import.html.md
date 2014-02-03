---
order: 20
title: @importよりも<link>
---

ページに外部ファイルのスタイルシートを読み込む方法は2つあります: 一方は`<link>`タグ:

```html
<link rel="stylesheet" href="style.css">
```

または`@import`です（外部のスタイルシートか`<style>`タグの中で）。

```css
@import url('style.css');
```

外部ファイルで2番目の方法を用いると、ほかのアセットのダウンロードをブロックすることになり、ブラウザは並列でアセットをダウンロードすることができません。

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#prefer--over-import)*
