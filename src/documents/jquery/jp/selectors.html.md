---
order: 9
title: セレクター
---

セレクターはjQueryの使用上最も重要な問題の1つです。 DOMから要素を選択するにはclassやIDを利用したり`find()`や`children()`のようなメソッドを用いるなど、多様な方法がありますが、それらが同様のパフォーマンスであることを意味している訳ではありません。

それら全ての中で、IDを選択することがネイティブのDOM操作に基づくので最速となります。

```js
$("#foo");
```

*[> JSPerfの結果](http://jsperf.com/browser-diet-jquery-selectors)*
