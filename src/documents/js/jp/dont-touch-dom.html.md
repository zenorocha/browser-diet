---
order: 13
title: 不要なDOM操作を避ける
---

必要がないのにDOMを操作する度、パンダは死にます。

冗談抜きに、DOM要素のブラウジングは高コストです。JavaScriptのエンジンは強力に高速になってきってはいますが、常にDOMツリーのクエリーを最適化した方がよいでしょう。

最も簡単な最適化の1つは、頻繁にアクセスされるDOM要素のキャッシングです。 例えば、ループの反復処理毎にDOMの検索をする代わりに、一度だけ検索してその結果を変数に保持し、その変数をループの反復処理毎に使いましょう。

```js
// 本当に良くないです！
for (var i = 0; i < 100; i++) {
  document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}
```

```js
// ずっといいです :)
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

```js
// ずっとずっといいです :)
var myListHTML = document.getElementById("myList").innerHTML;

for (var i = 0; i < 100; i++) {
  myListHTML += "<span>" + i + "</span>";
}
```

*> [JSPerfの結果](http://jsperf.com/browser-diet-dom-manipulation/11)*
