---
order: 14
title: 再描画と再フローを最少化
---

再描画と再フローは、あるプロパティか要素が変更された時に、再度レンダリングされるプロセスで引き起こされます。

再描画は、そのレイアウトが変更されることなく見た目上の変更があるときに起きます。 Nicole Sullivanは、`background-color`を変更するようなスタイルの変更としてこれを説明しています。

再フローは、要素のwidthの変更のような、ページのレイアウトの変更によって引き起こされるので最も高コストです。

過度の再描画と再フローを避けるべきであることは明白ですので、このようにする代わりに:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="https://browserdiet.com/en/assets/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

こうすべきです:

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

`style.width`を設定する場合、ブラウザはレイアウトを再計算する必要があります。ブラウザは画面を更新する必要があるまで再描画を考える必要がないので、大抵多くの要素のスタイルを変更することは、一度の再描画ですみます。

もしページのレイアウトのデータを読み取る必要があるなら、2つ目の例のようにレイアウトに変更を加える何かを設定する前に、全てを行なっておきましょう。

*> [デモ](http://jsbin.com/aqavin/2/quiet) / [リファレンス](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*
