---
order: 17
title: 配列の長さをキャッシュする
---

ループは確実にJavaScriptのパフォーマンスに関する最も重要な部分の1つです。反復処理が効果的に行われるようにループの内部のロジックを最適化しましょう。

1つの手段は、包まれる配列のサイズを保持しておくことで、それによってループが繰り返される度に再度計算する必要がなくなります。

```js
var arr = new Array(1000),
    len, i;

for (i = 0; i < arr.length; i++) {
  // 良くない - サイズは1000回計算される必要があります
}

for (i = 0, len = arr.length; i < len; i++) {
  // 良い - サイズは1度だけ計算されて保持されます
}
```

*[> JSPerfの結果](http://jsperf.com/browser-diet-cache-array-length/10/)*

**> 注:** *モダンブラウザのエンジンは自動的にこのプロセスを最適化しますが、未だに残るレガシーブラウザ向けの良いプラクティスとして残しています。*


例えば`document.getElementsByTagName('a')`によって生成されたNode（*NodeList*）のリストのようなHTMLの集合に対する反復処理の場合に、これはとりわけ重要です。これらの集合は"生きている"と見なされます。即ち、それらはその属する要素の変化に応じて自動的に更新されるのです。


```js
var links = document.getElementsByTagName('a'),
    len, i;

for (i = 0; i < links.length; i++) {
  // 良くない - リンクのリストに変化があるかを確認するため反復処理毎に再計算されます
}

for (i = 0, len = links.length; i < len; i++) {
  // 良い - リストのサイズを最初に取得して保存し、反復毎に比較します
}

// 恐ろしい: 無限ループの例
for (i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // リンクのリストが増加する反復処理毎に、ループの終了条件が満たされることがありません
  // リストのサイズが保持され条件として使われる場合には起きないことです
}
```

*> [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#cache-array-lengths)*
