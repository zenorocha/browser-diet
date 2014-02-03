---
order: 22
title: スタイルシートをミニファイ
---

可読性の高いコードを保つためには、コメントやインデントは良いアイディアです。

```css
.center {
  width: 960px;
  margin: 0 auto;
}

/* --- Structure --- */

.intro {
  margin: 100px;
  position: relative;
}
```

ですがブラウザにとってはそれは重要ではありません。従って、自動化ツールを使ってCSSをミニファイすることを常に覚えておいてください。

```css
.center{width:960px;margin:0 auto}.intro{margin:100px;position:relative}
```

それがファイルサイズを削ることになり、高速なダウンロード、解析、実行へとつながります。

[Sass](http://sass-lang.com/)や [Less](http://lesscss.org/)、[Stylus](http://learnboost.github.com/stylus/)のようなプリプロセッサーを利用することで、ミニファイされたCSSをコンパイル時に出力するように設定することが出来ます。

*> [有用なツール](https://github.com/zenorocha/browser-diet/wiki/Tools#minify-your-stylesheets) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#minify-your-stylesheets)*
