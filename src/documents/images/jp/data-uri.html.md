---
order: 7
title: Data URI
---

このテクニックはCSSスプライトの代わりになります。

[Data-URI](http://en.wikipedia.org/wiki/Data_URI_scheme)は、通常はURIのコンテンツのインライン化を目的とする方法です。 この例では、私たちはページの読み込みで必要となるHTTPリクエストを削減するためにCSSのbackground imageのコンテンツをインライン化するのに使っています。

Before:
```css
.icon-foo {
  background-image: url('foo.png');
}
```

After:
```css
.icon-foo {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII%3D');
}
```

IE8以上の全てのブラウザはbase64エンコードがサポートされています。

この方法とCSSスプライトのいずれもがメンテナンスしていくのにビルドツールを必要とします。この方法は、開発中に個別のファイルで画像を維持するのに手動でのスプライトの配置を不要とするアドバンテージがあります。

ですが、大きな画像を持っていた場合にはHTML/CSSのサイズを増大させるデメリットもあります。サイズのオーバーヘッドなどのHTTPリクエストは、HTTPリクエストの数を最少化することによるスピードの改善がなされないので、HTML/CSSをgzipしない場合には推奨されません。

*> [有用なツール](https://github.com/zenorocha/browser-diet/wiki/Tools#data-uri) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#data-uri)*
